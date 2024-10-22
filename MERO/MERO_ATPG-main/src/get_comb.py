"""!
@file  get_comb.py
@author pravin.gaikwd@ufl.edu
@brief 
@version 2.0
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

import math
from math import log, ceil
import random
from math import comb
import argparse
import os

def main():

    # print(randomness)

    if(randomness != "-1"):
        random.seed(randomness)
    
    #read nets from valid_rare_nets
    nets = []
    with open(inpFile, 'r') as filehandle:              
        for line in filehandle:
            data = line.strip().split(",")
            nets.append(data[0])

    if(debug):
        print("Try to get all combinations of rare nets C triggers: ")
        print("Rare nets: ", len(nets), "trigger # ", trigN)
    #all_comb = list(combinations(all_passed_nets_cast, int(ntrig)))

    #print(all_passed_nets_cast)
    samples = set()
    tries = 0
    possible_comb = math.comb(len(nets), int(trigN))
    while len(samples) < int(trojN):
        samples.add(tuple(sorted(random.sample(nets, int(trigN)))))
        tries += 1
        if len(samples) == possible_comb:
            break

    all_comb = [list(ele) for ele in samples]
    
    rare_comb_file = dumpDir + "/rare_net_comb.csv"
    rare_comb_handle = open(rare_comb_file, 'w')
    for trig_comb in all_comb:
        for trig_edg in trig_comb:
            rare_comb_handle.write(trig_edg)
            rare_comb_handle.write(",")
        rare_comb_handle.write("\n")
    rare_comb_handle.close()


    
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="To get random ncr combinations of rare nets")
    parser.add_argument("-f", "--iFile",  required=True, help="Rare net file path")
    parser.add_argument("-d", "--oDir",  required=True, help="Dump dir")
    parser.add_argument("-trigN", "--triggerN",  required=True, help="Number of triggers")
    parser.add_argument("-trojN", "--trojanN",  required=True, help="Number of triggers")
    parser.add_argument('-seed','--randomness',metavar='', required=True, help="-1:time base, 0 systmatic, seed based")

    group = parser.add_mutually_exclusive_group(required=True)
    group.add_argument('-q', '--quiet', action='store_true', help='Print less details')
    group.add_argument('-v', '--verbose', action='store_true',  help='Print more details')
    
    args = parser.parse_args()        

    inpFile = args.iFile
    dumpDir = args.oDir
    trigN = args.triggerN
    trojN = args.trojanN
    randomness = args.randomness

    debug = 0;

    verboseFlag = 0
    if(args.quiet and args.verbose):
        sys.exit("ERROR: Provide either of the flags")    
    elif(args.quiet):
        verboseFlag = 0
    elif(args.verbose):
        verboseFlag = 1

    main()