"""!
@file  parse_patterns.py
@author pravin.gaikwd@ufl.edu
@brief 
@version 0.1
@date 2021-08-02

@copyright Copyright (c) 2021 \n
MERO : Multiple Excitation of Rare Occurence \n
Copyright: University of Florida, Gainesville, FL, USA \n
This document is copyright protected and property of the above mentioned entity. 
Any disclosure, alteration, re-distribution, or commercial use is NOT allowed without 
the consent of the developers and/or the entity mentioned above. \n
For copyright issues, contact information can be found in the following site.
Link: http://swarup.ece.ufl.edu/
"""

import argparse
import re

def get_parsed_patterns():
    ## 
    # \note
    # Function to parse pattern file.
    # In a given pattern file, parser looks for bits after 'force_all_pis' string which are primary input values.
    # Scan-chain values are captured by looking for 'unload _sc1' string and parsing remaining string till Pattern|report_primitives word match.


    inFile = open(pFile)

    buffer1 = ""
    keepCurrentSet = True
    for line in inFile:
        buffer1=buffer1+(line)

    mult_patt_list = re.findall('(?<=force_all_pis)(.*?)(?=Time)', buffer1, flags=re.S)
    if ckt_type == 'seq':
        original_mult_scan_list = re.findall('(?<= unload _sc1 =)(.*?)(?=Pattern|report_primitives)', buffer1, flags=re.S)
    inFile.close()

    #Formating pattern 
    for i in range(0, len(mult_patt_list)):
        strng = mult_patt_list[i]
        strng = strng.replace("=", "").replace("\n", "").replace("=\n", "").replace(" ", "")
        mult_patt_list[i] = strng

    #Formating sequnetial scan patterns
    if ckt_type == 'seq':
        for i in range(0, len(original_mult_scan_list)):
            strng = original_mult_scan_list[i]
            strng = strng.replace("=", "").replace("\n", "").replace("=\n", "").replace(" ", "")
            original_mult_scan_list[i] = strng

        for i in range(0, len(mult_patt_list)):
            mult_patt_list[i] = mult_patt_list[i] + original_mult_scan_list[i]

    status_list = []
    net_list = []
    with open(pFile, 'r') as filehandle:
        lines = filehandle.readlines()
        for i in range(0, len(lines)):
            line = lines[i]
            #for line in filehandle:
            line = line.strip()
            if('Full-Sequential Justification status' in line):
                words = line.split(":")
                status_list.append(words[1].strip())
            if('#current_net:' in line):
                words = line.split(":")
                net_list.append(words[-1].strip())

    parsed_pattern_file = oFile
    parsed_pattern_file_handle = open(parsed_pattern_file, 'w')

    # print("len status list", len(status_list))
    # print("len net list", len(net_list))
    sat_counter = 0;
    for j in range(0, len(status_list)):
        status = status_list[j]
        if 'SATISFIED' in status:
            print("%s,%s,%s;" % (net_list[j], status,mult_patt_list[sat_counter]), file=parsed_pattern_file_handle)
            sat_counter = sat_counter + 1
        else:
            print("%s,%s,%s;" % (net_list[j], status,"NA"), file=parsed_pattern_file_handle)

    parsed_pattern_file_handle.close()

    return



if __name__ == "__main__":
    '''!
    @fn main()
    -pF  - Pattern file
    -d   - Output directory

    '''
    parser = argparse.ArgumentParser(description="To parse pattern file")
    parser.add_argument("-pF", "--pFile",  required=True, help="Pattern file")
    parser.add_argument("-d", "--oDir",  required=True, help="Output Directory")
    parser.add_argument("-oF", "--oFile",  required=True, help="Output file name")
    
    group = parser.add_mutually_exclusive_group(required=True)
    group.add_argument('-q', '--quiet', action='store_true', help='Print less details')
    group.add_argument('-v', '--verbose', action='store_true',  help='Print more details')
    
    group1 = parser.add_mutually_exclusive_group(required=True)
    group1.add_argument("-comb", "--comb", action='store_true', help="Combinational design")
    group1.add_argument("-seq", "--seq", action='store_true', help="Sequential design")
    
    args = parser.parse_args()

    pFile = args.pFile
    dumpDir = args.oDir
    oFile = args.oFile
    
    if args.comb:
        ckt_type = "comb"        
    else:
        ckt_type = "seq"

    get_parsed_patterns()