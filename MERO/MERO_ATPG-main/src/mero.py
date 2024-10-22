# ©Copyright 2020 University of Florida Research Foundation, Inc. All Rights Reserved.
"""
##*******************************************************************************
# MERO_v2 
#
# Author: Pravin gaikwad
# Date: 
#
# Arguments:

#******************************************************************************/
"""
import sys
import os
import argparse
import subprocess
import timeit
import datetime
    
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="To run MERO_v2")
    parser.add_argument("-f", "--vFile",  required=True, help="Flattened verilog netlist design with path")
    parser.add_argument("-d", "--oDir",  required=True, help="Directory containing verilog netlist file")
    parser.add_argument("-e", "--eDir",  required=True, help="Executable file directory")
    #parser.add_argument("-l", "--lFile",  required=True, help="Cell library file")
    parser.add_argument("-m", "--mName",  required=True, help="Module name")
    parser.add_argument("-scan", "--sFlag",  required=True, help="Scan Flag")
    #parser.add_argument("-cc0", required=False, help="Controllability of 0 threshold")
    #parser.add_argument("-cc1", required=False, help="Controllability of 1 threshold")
    parser.add_argument("-T", "--nTrig",  required=True, help="Number of triggers ")
    parser.add_argument("-TS", "--nTroj",  required=True, help="Number of Trojan instances")
    parser.add_argument("-N", "--nDetect",  required=True, help="N-DETECT")
    parser.add_argument("-states", "--seqStates",  required=False, help="Trojan states (in case of seq Trojan)")

    parser.add_argument("-lib", "--libName",  required=True, help="libName")

    #release removing option for tetramax for SCOAP calculations
    group1 = parser.add_mutually_exclusive_group(required=True)
    group1.add_argument("-comb", "--comb", action='store_true', help="Combinational design")
    group1.add_argument("-seq", "--seq", action='store_true', help="Sequential design")
    
    #parser.add_argument("-clk", "--tmaxPath", required='-tm' in sys.argv, metavar='', help="Directory containing all required tmax script")

    parser.add_argument("-clk", "--clkName",  required='-seq' in sys.argv, help="clock signal name")
    parser.add_argument("-clkV", "--clkValue",  required='-clk' in sys.argv, help="Off state of the clock")

    group2 = parser.add_mutually_exclusive_group(required='-seq' in sys.argv)
    group2.add_argument("-wreset", "--wrst", action='store_true', help="Use reset signal")
    group2.add_argument("-woreset", "--worst", action='store_true', help="Do not use reset signal")

    parser.add_argument("-rst", "--rstName",  required='-wreset' in sys.argv, help="reset signal name")
    parser.add_argument("-rstV", "--rstValue",  required='-wreset' in sys.argv, help="Off state of the reset")

    group3 = parser.add_mutually_exclusive_group(required=True)
    group3.add_argument("-wTrojFile", "--wTrojanFile", action='store_true', help="Flow with user provided Trojan file")
    group3.add_argument("-woTrojFile", "--woTrojanFile", action='store_true', help="Flow without user provided Trojan file")

    parser.add_argument("-tvF", "--trojValFlag",  required='-wTrojFile' in sys.argv, help="Trojan validation")
    parser.add_argument("-cF", "--justCov",  required=True, help="Just do Trojan coverage")
    parser.add_argument("-vFlag", "--onlyVec",  required='-wTrojFile' in sys.argv, help="Only vector or unk,vec,nets")
    parser.add_argument("-vFile", "--inpVecFile",  required='-wTrojFile' in sys.argv, help="vector file")
    parser.add_argument("-justTroj", "--justTroj",  required='-wTrojFile' in sys.argv, help="only insert and validate trojans")
    parser.add_argument("-justOptCov", "--justOptCov",  required='-wTrojFile' in sys.argv, help="Perform just optimization and coverage")
    parser.add_argument("-postOpt", "--postOpt",  required=True, help="Post optimization")    

    parser.add_argument("-thr", "--thr",  required='-woTrojFile' in sys.argv, help="Controllability threshold")
    parser.add_argument("-tFile", "--trojFile",  required='-wTrojFile' in sys.argv, help="Trojan file")

    parser.add_argument('-seed','--randomness', required=True, help="-1:time base, 0 systmatic, seed based")
    parser.add_argument('-libFile','--libFile', required=False, help="library file")

    parser.add_argument('-codeBase','--codeBase', required=False, help="codeBase")
    parser.add_argument('-compareiVeriFlag','--compareiVeriFlag', required=False, help="compareiVeriFlag")

    parser.add_argument("-tmaxSrc", "--tmaxSrc",  required=False, help="tmax source files")
    parser.add_argument("-ndApp", "--ndetectApp",  required=True, help="N-detect approach flag")

    parser.add_argument("-graphStruct", "--graphStruct",  required=True, help="0 createGraph 1 graph from cache")
    parser.add_argument("-wTmax", "--wTmax",  required=True, help="1 flow with Tmax,  0 flow without Tmax")

    
    
    group = parser.add_mutually_exclusive_group(required=True)
    group.add_argument('-q', '--quiet', action='store_true', help='Print less details')
    group.add_argument('-v', '--verbose', action='store_true',  help='Print more details')
    
    args = parser.parse_args()

    inpFile = args.vFile
    dumpDir = args.oDir
    exeDir = args.eDir
    randomness = args.randomness
    moduleName = args.mName
    scanFlag = args.sFlag

    ndetectApp = args.ndetectApp
    graphStruct = args.graphStruct

    wTmax = args.wTmax
    # print("wTmax : ",wTmax)

    compareiVeriFlag="0"
    if args.compareiVeriFlag:
        compareiVeriFlag = args.compareiVeriFlag

    tmaxSrc = "NA"
    if args.tmaxSrc:
        tmaxSrc = args.tmaxSrc

    codeBase = "NA";
    if args.codeBase:
        codeBase = args.codeBase
    libFile = "NA"
    if args.libFile:
        libFile = args.libFile

    if(int(scanFlag) == 0):
        sys.exit("ERROR: Current iteration of the tool supports full-scan designs only.")
    #cc0 = float(args.cc0)
    #cc1 = float(args.cc1)
    cc = float(args.thr)
    if(cc < 0 or cc > 1):
        sys.exit("ERROR: Threshold beyond valid range[0-1].")
    ntrig = args.nTrig
    tri_inst = args.nTroj
    states = '0'

    if args.seqStates:
        states = args.seqStates

    if args.comb:
        #ckt_type = args.cktType
        ckt_type = "comb"
        CLK = "NA"
        RST = "NA"
        clkV = '-1'
        rstV = '-1'
        wrst = '0'
    else:
        ckt_type = "seq"
        if args.clkName:
            CLK = args.clkName
        else:
            CLK = "CLK"
            print("WARNING: Using default clock might not work with TetraMAX")
        total_clocks = len(CLK.split(","))
        if args.clkValue:
            clkV = args.clkValue
        else:
            clkV = '0'
            print("WARNING: Using default clock value might not work with TetraMAX")        
        total_clock_values = len(clkV.split(","))
        if(total_clocks != total_clock_values):
            sys.exit("ERROR: Number of clocks and their values are not matching")

        wrst = 0
        if args.wrst:
            wrst = 1                
            if args.rstName:
                RST = args.rstName
            else:
                RST = "RST"
                print("WARNING: Using default reset might not work with TetraMAX")
            total_resets = len(RST.split(","))
            if args.rstValue:
                rstV = args.rstValue
            else:
                rstV = '0'
                print("WARNING: Using default reset value might not work with TetraMAX")
            total_reset_values = len(rstV.split(","))
            if(total_resets != total_reset_values):
                sys.exit("ERROR: Number of resets and their values are not matching")
        else:
            RST = "NA"
            rstV = '-1'
    ndetect = args.nDetect
    libName = args.libName

    #altPattFlag = int(args.alt)
    altPattFlag = 0;

    

    flow_flag= 0
    
    if args.postOpt:
        postOpt = args.postOpt
    
    if args.justCov:
        justCov = args.justCov
    
    if args.wTrojanFile:
        flow_flag = 1
    if args.trojFile:
        #if ('wTrojanFile' in args and 'trojFile' in args):
        trojanFile = args.trojFile
    else:
        trojanFile = "NA"
    
    if args.trojValFlag:
        validateTrojansFlag = args.trojValFlag
    

    if args.onlyVec:
        onlyVec = args.onlyVec
    
    if args.inpVecFile:
        inpVecFile = args.inpVecFile
    
    if args.justTroj:
        justTroj = args.justTroj
    
    if args.justOptCov:
        justOptCov = args.justOptCov

    inpVecFile = 'NA'
    
    # else:
    #     trojanFile = "NA"
    #     validateTrojansFlag = '0'
    #     onlyVec = '0'
    #     inpVecFile = 'NA'
    #     justTroj = '0'
    #     justOptCov = '0'
    
    print("=====================================++++")
    print("INFO: Input File: ", inpFile)
    print("flow_flag", flow_flag)
    verboseFlag = 0
    if(args.quiet and args.verbose):
        sys.exit("ERROR: Provide either of the flags")    
    elif(args.quiet):
        verboseFlag = 0
    elif(args.verbose):
        verboseFlag = 1
        print("INFO: Output Directory: ", dumpDir)
        print("INFO: Executable Directory: ", exeDir)
        #print("INFO: Library File: ", libFile)
        print("INFO: Module Name: ", moduleName)
        print("INFO: Scan Flag: ", scanFlag)
        print("INFO: CC threhsold: ", cc)
        print("INFO: Number of Triggers: ", ntrig)
        print("INFO: Trojan Instances: ", tri_inst)
        print("INFO: Circuit Type: ", ckt_type)
        print("INFO: N-DETECT: ", ndetect)
        if ckt_type == "seq":
            print("INFO: Clock Name: ", CLK)
            print("INFO: Clock Value: ", clkV)
            
            if wrst == 1:
                print("INFO: Reset Name: ", RST)
                print("INFO: Reset Value: ", rstV)
                
            
        print("INFO: Lib Name: ", libName)
        if flow_flag == 1:
            print("INFO: Trojan File: ", trojanFile)
        
        print("=====================================")
    start = timeit.default_timer()


    mero_command = exeDir + "/mero " + \
                    inpFile + " " + \
                    dumpDir + "/ " +  \
                    exeDir + "/ " + \
                    moduleName + " " + \
                    ckt_type + " " \
                    + scanFlag + " " + \
                    libName + " " \
                    +  str(verboseFlag) + " " \
                    +  str(cc) + " " + \
                    ndetect + " " \
                    + ntrig + " " + \
                    tri_inst + " " +  \
                    CLK + " " +  \
                    clkV + " " + \
                    str(wrst) + " " + \
                    RST + " " +  \
                    rstV + " " + \
                    str(flow_flag) + " " + \
                    trojanFile + " " + \
                    states + " " + \
                    randomness + " " + \
                    validateTrojansFlag + " " + \
                    justCov + " "  + \
                    onlyVec + " " + \
                    inpVecFile + " " + \
                    libFile + " " + \
                    justTroj + " " + \
                    justOptCov + " " + \
                    postOpt + " " + \
                    tmaxSrc + " " + \
                    ndetectApp + " " + \
                    codeBase + " " + \
                    compareiVeriFlag + " " + \
                    graphStruct + " " + \
                    wTmax

        
    print(mero_command)

    os.system(mero_command)

    stop = timeit.default_timer()

    if(wTmax == "0" or wTmax == "-1"):

        result_log = dumpDir + "/results_" + str(ndetect) + "_" + str(ntrig) + ".txt"
        result_log_handle = open(result_log, 'a')
        print("INFO: Result at ", result_log)    
        print("Time(s): %5.2f" % (stop - start), file=result_log_handle)        
        print("==============================================================", file=result_log_handle)    
        result_log_handle.close()

        print("Time(s): %5.2f" % (stop - start))    
        print("==============================================================")    
    
    