
import re
import sys
import os
import argparse

def main():

    op_tb_file = dumpDir + "/" + top + "_tb.v"
    op_log_file = dumpDir + "/" + top + "_tb_log.txt"

    tb_command = "python3 " + exeDir + "/testbench_gen.py -d " + design + " -top " + top + " -type a " + \
                "-test " + vecFile + " -o " + op_tb_file + " -log " + op_log_file + \
                    " -piF " + piFile + " -oD " + dumpDir
    
    # print("--------------")
    # print(tb_command)
    os.system(tb_command)

    # print("--------------")
    obj_file = dumpDir + "iverilog_obj"
    
    iv_command = "iverilog -s tb -o " + obj_file + " " + design + " " + op_tb_file + " " +  libFile
    # print(iv_command)
    os.system(iv_command)
    # print("--------------")

    vvp_command = "vvp " + obj_file

    # print(vvp_command)
    os.system(vvp_command)
    # print("--------------")

    tb_net_file = dumpDir + "/tb_net_file.txt"
    iv_sim_op_file = dumpDir + "/iv_sim_result.txt"
    parse_op_command = "python3 " + exeDir + "/parse_tb.py -nF " +  tb_net_file + " -pF " + op_log_file + " -oF " + iv_sim_op_file + " -v "

    # print(parse_op_command)
    # print("--------------")
    os.system(parse_op_command)
    # print("--------------")

if __name__ == "__main__":

    parser = argparse.ArgumentParser(description="Generate testbench for simulation")
    parser.add_argument('-d','--design', type=str,help="input assembly file", required = True)
    parser.add_argument('-top','--top',type=str,help="top level module name",required=True)
    parser.add_argument('-test','--test',type=str,help="test pattern file")
    parser.add_argument("-piF", "--piFile",  required=True, help="PI file")
    parser.add_argument("-oD", "--opDir",  required=True, help="dump Dir")
    parser.add_argument("-lib", "--libFile",  required=True, help="library file")
    parser.add_argument("-exeDir", "--exeDir",  required=True, help="executable directory")


    args = parser.parse_args()

    design = args.design
    top = args.top
    vecFile = args.test
    piFile = args.piFile
    dumpDir = args.opDir
    libFile = args.libFile
    exeDir = args.exeDir

    main()
