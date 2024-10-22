"""!
@file  single_flow.py
@author pravin.gaikwd@ufl.edu
@brief 
@version 0.1
@date 2021-07-21

@copyright Copyright (c) 2021 \n
MERO : Multiple Excitation of Rare Occurence \n
Copyright: University of Florida, Gainesville, FL, USA \n
This document is copyright protected and property of the above mentioned entity. 
Any disclosure, alteration, re-distribution, or commercial use is NOT allowed without 
the consent of the developers and/or the entity mentioned above. \n
For copyright issues, contact information can be found in the following site.
Link: http://swarup.ece.ufl.edu/
"""

import sys
import os
import argparse
import glob
import pandas as pd
import argparse
import numpy as np
import subprocess
import copy
import timeit
from sklearn import preprocessing
from sklearn.preprocessing import StandardScaler
from sklearn.preprocessing import quantile_transform
from sklearn.preprocessing import MinMaxScaler
from sklearn.preprocessing import Normalizer
import math
from math import log, ceil
import random
import re
import itertools
from itertools import combinations
from math import comb
import datetime
from datetime import datetime

# random.seed(15)

def return_match_patt(vector_1, vector_2):

    """!
    vector_1 - vector 1 string \n
    vector_2 - vector 2 string \n

    Checks for pattern match and returns matched pattern after replacing 'X' if required.
    """
    match_patt = ""
    #comparing pattern with pattern 2
    for bit_index in range(0, len(vector_2)):
        #conflict case
        if((vector_1[bit_index] == '1' and vector_2[bit_index] == '0') or (vector_1[bit_index] == '0' and vector_2[bit_index] == '1')):
            #hit count can not be increased for given set of vectors
            #patt_match_flag = 0
            return 0, match_patt
        
        if((vector_1[bit_index] == '1' and vector_2[bit_index] == 'X')):
            match_patt = match_patt + '1'
        elif((vector_1[bit_index] == '0' and vector_2[bit_index] == 'X')):
            match_patt = match_patt + '0'
        elif((vector_1[bit_index] == 'X' and vector_2[bit_index] == '1')):
            match_patt = match_patt + '1'
        elif((vector_1[bit_index] == 'X' and vector_2[bit_index] == '0')):
            match_patt = match_patt + '0'
        elif((vector_1[bit_index] == '0' and vector_2[bit_index] == '0')):
            match_patt = match_patt + '0'
        elif((vector_1[bit_index] == '1' and vector_2[bit_index] == '1')):
            match_patt = match_patt + '1'
        else:
            match_patt = match_patt + 'X'

    return 1, match_patt

def check_patt_match(vector_1, vector_2):
    #comparing pattern with pattern 2
    for bit_index in range(0, len(vector_2)):
        #conflict case
        if((vector_1[bit_index] == '1' and vector_2[bit_index] == '0') or (vector_1[bit_index] == '0' and vector_2[bit_index] == '1')):
            #hit count can not be increased for given set of vectors
            #patt_match_flag = 0
            return 0
    return 1

def get_tmax_pre_script(script_name):

    #To generate script with design name and top module name
    
    updated_pattern_script_2 = open(script_name, 'w')
    #print(get_id_basic_file)
    #get_id_basic = open(get_id_basic_file)
    
    if libName == 'LEDA':
        if(libFile == "NA"):
            lib_setup = "read_netlist " + exeDir + "lec25dscc25.v -library\n"
        else:
            lib_setup = "read_netlist " + libFile + " -library\n"

    elif libName == 'skywater':
        if(libFile == "NA"):
            lib_setup = "read_netlist " + exeDir + "sky130.v -library\n"
        else:
            lib_setup = "read_netlist " + libFile + " -library\n"
        
    updated_pattern_script_2.write(lib_setup)

    read_ipFile = "read_netlist " + vFile + "\n"
    updated_pattern_script_2.write(read_ipFile)

    run_module = "set_build -nodelete_unused_gates -merge noglobal_tie_propagate \n"
    updated_pattern_script_2.write(run_module)

    run_module = "run_build_model " + moduleName + "\n"
    updated_pattern_script_2.write(run_module)

    if ckt_type == 'seq':
        # add multiple clocks
        clkNList = CLK.split(",")
        clkVList = clkV.split(",")
        for i in range(0, len(clkNList)):
            tempClkN = clkNList[i]
            tempClkV = clkVList[i]
            clk_line = "\nadd_clocks " + tempClkV + " " + tempClkN + "\n"
            updated_pattern_script_2.write(clk_line)
        # clk_line = "\nadd_clocks 0 " + CLK + "\n"
        # updated_pattern_script_2.write(clk_line)
        if wrst:
            rstNList = RST.split(",")
            rstVList = rstV.split(",")
            for i in range(0, len(rstNList)):
                tempRstN = rstNList[i]
                tempRstV = rstVList[i]
                rst_line = "\nadd_clocks " + tempRstV + " " + tempRstN + "\n"
                #updated_pattern_script_2.write(rst_line)
            # add multiple resets
            # rst_line = "\nadd_clocks " + rstV + " " + RST + "\n"
            # updated_pattern_script_2.write(rst_line)
        updated_pattern_script_2.write("set_scan_ability on -all\n")    

    pin_data = "drc\ntest\nset pindata seq_sim_data \n"
    updated_pattern_script_2.write(pin_data)

    updated_pattern_script_2.close()

def reorder_patt_list(mult_patt_list, tmax_pi_list_org, cast_sorted_tmax_columns):

    temp_patt_list = []
    for i in range(0, len(mult_patt_list)):
        curr_alt_patt = mult_patt_list[i]
        curr_patt_list = list(curr_alt_patt)
        temp_patt_list.append(curr_patt_list) 

    original_patern_df = pd.DataFrame(mult_patt_list)
    pattern_bit_df = pd.DataFrame(temp_patt_list, columns=tmax_pi_list_org)
    
    #rearraning columns
    pattern_bit_df = pattern_bit_df[cast_sorted_tmax_columns]
    
    #merge columns
    pattern_bit_df['merged'] = pattern_bit_df[pattern_bit_df.columns].apply(
        lambda x: ''.join(x.dropna().astype(str)),
        axis=1
    )

    #merge columns
    original_patern_df['Ordered']= pattern_bit_df[pattern_bit_df.columns].apply(
        lambda x: ''.join(x.dropna().astype(str)),
        axis=1
    )


    ordered_mult_patt_list = pattern_bit_df['merged'].tolist()
    
    if(debug):
        combined_pattern_df_file = dumpDir + "/derived_pattern_df.csv"
        pattern_bit_df.to_csv(combined_pattern_df_file, index=True)

        original_patern_df_file = dumpDir + "/original_der_df.csv"
        original_patern_df.to_csv(original_patern_df_file, index=True)
    
    return ordered_mult_patt_list

def get_parsed_patterns(file_to_parse, patt_attempt, net_cone_set_list, net_set_attempt, tmax_pi_list_org, cast_sorted_tmax_columns):
    
    inFile = open(file_to_parse)

    buffer1 = ""
    keepCurrentSet = True
    for line in inFile:
        buffer1=buffer1+(line)

    mult_patt_list = re.findall('(?<=force_all_pis)(.*?)(?=Time)', buffer1, flags=re.S)
    if ckt_type == 'seq':
        original_mult_scan_list = re.findall('(?<= unload _sc1 =)(.*?)(?=Pattern|exit)', buffer1, flags=re.S)
    inFile.close()

    # print("load/unload value")
    # if ckt_type == 'seq':
    #     print(original_mult_scan_list)
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


    # ordered_mult_patt_list = reorder_patt_list(mult_patt_list, tmax_pi_list_org, cast_sorted_tmax_columns)
    ordered_mult_patt_list = mult_patt_list

    status_list = []
    comb_list = []
    current_net_list = []
    with open(file_to_parse, 'r') as filehandle:
        lines = filehandle.readlines()
        for i in range(0, len(lines)):
            line = lines[i]
            #for line in filehandle:
            line = line.strip()
            if('Full-Sequential Justification status' in line):
                words = line.split(":")
                status_list.append(words[1].strip())
            if("current_net" in line):
                words = line.split(":")
                current_net_list.append(words[-1])

            if("current_comb_set" in line):
                temp_list = [1]
                words = line.split(" ")
                temp_list = temp_list + words[1:]
                comb_list.append(temp_list)
            elif("current_comb" in line):
                temp_list = [0]
                words = line.split(" ")
                temp_list = temp_list + words[1:]
                comb_list.append(temp_list)

    status_sublists = []
    status_index = 0
    status_pointer = 0
    for var in range(0, len(patt_attempt)):
        attempts = patt_attempt[var]
        sub_list = []
        for i in range(0, attempts):
            status_index = i + status_pointer
            sub_list.append(status_list[status_index])

        status_sublists.append(sub_list)
        status_pointer = status_pointer + attempts

    if debug:
        print(patt_attempt)
    #print(status_sublists)
    #print(mult_patt_list)
    #read second file and compare results with original file
    #check status if 'SATISFIED' next step
    #compare patterns and check for match 
    # no match - >multple patterns otherwise single pattern


    # print(len(status_list))
    # print(len(comb_list))

    satisfied_index = 0 
    alt_pattern = {}
    alt_pattern_comb = {}
    alt_pattern_comb_status = {}

    alt_pattern_att_2 = {}
    attmp_idx = 0


    #print("Total mult_patt_list", len(mult_patt_list))
    #print("---net and attempt---")

    # print("check logic")
    # print(mult_patt_list)
    # for idx in range(0, len(status_list)):
    #     print(idx, current_net_list[idx], status_list[idx], comb_list[idx])
    patt_counter = 0
    for i in range(0, len(status_list)):
        #print(status_list[i], current_net_list[i], comb_list[i])
        curr_net = current_net_list[i]
        curr_stat = status_list[i]

        if "SATISFIED" in curr_stat:
            if curr_net in alt_pattern_att_2.keys():
                if ordered_mult_patt_list[patt_counter] not in alt_pattern_att_2[curr_net]:
                    alt_pattern_att_2[curr_net].append(ordered_mult_patt_list[patt_counter])
                    if(len(comb_list) != 0):
                        alt_pattern_comb[curr_net].append(comb_list[i])
                        alt_pattern_comb_status[curr_net].append(status_list[i])
                    #print(j, ordered_mult_patt_list[satisfied_index], net_set_attempt[attmp_idx + j])
            else:
                alt_pattern_att_2[curr_net] = [ordered_mult_patt_list[patt_counter]]
                if(len(comb_list) != 0):
                    alt_pattern_comb[curr_net] = [comb_list[i]]
                    alt_pattern_comb_status[curr_net] = [status_list[i]]
            patt_counter = patt_counter + 1

    # for i in range(0, len(net_cone_set_list)):
    #     curr_net = net_cone_set_list[i]
    #     curr_net_attempts = patt_attempt[i]
        
    #     #print(i, curr_net, curr_net_attempts)
    #     for j in range(0, curr_net_attempts):
    #         status = status_sublists[i][j]
    #         if 'SATISFIED' in status:
    #             if curr_net in alt_pattern:
    #                 if mult_patt_list[satisfied_index] not in alt_pattern[curr_net]:
    #                     alt_pattern[curr_net].append(mult_patt_list[satisfied_index])
    #                     if(len(comb_list) != 0):
    #                         alt_pattern_comb[curr_net].append(comb_list[satisfied_index])
    #                     #print(j, mult_patt_list[satisfied_index], net_set_attempt[attmp_idx + j])
    #             else:
    #                 alt_pattern[curr_net] = [mult_patt_list[satisfied_index]]
    #                 if(len(comb_list) != 0):
    #                     alt_pattern_comb[curr_net] = [comb_list[satisfied_index]]
    #                 #print(j, mult_patt_list[satisfied_index], net_set_attempt[attmp_idx + j])
    #             satisfied_index = satisfied_index + 1
    #         else:
    #             delete = 0
    #             #print(j, status, net_set_attempt[attmp_idx + j])
    #     attmp_idx = attmp_idx + curr_net_attempts
            
    
    if debug:
        for key, value in alt_pattern.items():
            print(key, len(value))

    patt_net_set_dict = {}
    if(len(comb_list) != 0):
        # for key, value in alt_pattern.items():
        for key, value in alt_pattern_att_2.items():
            for i in range(0, len(value)):
                patt = value[i]
                # print(key, patt, alt_pattern_comb[key][i])
                if key in patt_net_set_dict.keys():
                    patt_net_set_dict[key].append([patt, alt_pattern_comb[key][i],alt_pattern_comb_status[key][i]])
                else:
                    patt_net_set_dict[key] = [[patt, alt_pattern_comb[key][i], alt_pattern_comb_status[key][i]]]


    # print("*****!!!!!!!!*******")
    # for key, value in patt_net_set_dict.items():
    #     for i in range(0, len(value)):
    #         curr_set = value[i]
    #         print(key, curr_set[0], curr_set[1], curr_set[2])
    # print("************")

    # print(patt_net_set_dict)
    return alt_pattern_att_2, patt_net_set_dict

def get_conflict_set_data(patterns_df, cast_sorted_tmax_columns, net_cone_set_list, cone_set_dict):

    # print("---------MULT set APPROCH---------")

    conflict_df_file = dumpDir + "/conflict_df.csv"
    conflict_df = pd.read_csv(conflict_df_file, index_col=0)
    if debug:
        print(conflict_df)

    temp_patt_list = []
    net_list = []
    for i in range(0, len(patterns_df)):
        curr_patt = patterns_df.at[patterns_df.index[i], 'OriginalPatternOrdered']
        curr_net = patterns_df.at[patterns_df.index[i], 'Net_OrigName']
        net_list.append(curr_net)
        curr_patt_list = list(curr_patt)
        temp_patt_list.append(curr_patt_list)

    pattern_bit_df = pd.DataFrame(temp_patt_list, columns=cast_sorted_tmax_columns)
    pattern_bit_df["Net_Name"] = net_list

    #print("---------CONFLICT ANLYSIS---------")
    #print(patterns_df)
    #print(pattern_bit_df)
    #print("----------------------------------")

    fanin_PI_df_file = dumpDir + "/fanin_df.csv"
    fanin_PI_df = pd.read_csv(fanin_PI_df_file) 
    #print(fanin_PI_df)
    
    
    #for bit_index in range(1, input_size+1):
    input_size = len(pattern_bit_df.columns)

    net_conflict_dict = cone_set_dict
    ordered_net_conflict_dict = net_cone_set_list
    # #loop to detect overall conmflicting nets
    # #net_conflict_dict[net_name] = [list of conflicting nets]
    # for i in range(0, len(patterns_df)-1):
    #     dict_list = []
    #     curr_net = patterns_df.at[patterns_df.index[i], 'net_name']
    #     curr_patt = patterns_df.at[patterns_df.index[i], 'original_patt']

    #     #patt_unk_cnt = curr_patt.count("X")
    #     #if patt_unk_cnt == 0:
    #     #    continue
    #     #print("Conflict analysis on: ", curr_net)
    #     #compare pair wise for conflict
    #     for j in range(i+1, len(patterns_df)):
    #         compare_net = patterns_df.at[patterns_df.index[j], 'net_name']
    #         compare_patt = patterns_df.at[patterns_df.index[j], 'original_patt']
    #         match_flag = check_patt_match(curr_patt, compare_patt)

    #         #conflict
    #         if(not match_flag):
    #             if curr_net not in net_conflict_dict:
    #                 net_conflict_dict[curr_net] = [compare_net]
    #                 ordered_net_conflict_dict.append(curr_net)
    #             else:
    #                 net_conflict_dict[curr_net].append(compare_net)
    #     #grab frame based on nets preset in key and value and perform conflict detail analysis
    #     if curr_net in net_conflict_dict:
    #         if debug:
    #             print(curr_net, net_conflict_dict[curr_net])

    
    #loop to check conflict for each set in their respective sliced df

    conflict_count_dict = {}
    for curr_net in ordered_net_conflict_dict:
        conflicting_nets = net_conflict_dict[curr_net] 
        if(len(conflicting_nets) == 0):
            continue

        #slice df based on these nets
        curr_slice_df = pattern_bit_df[pattern_bit_df['Net_Name'].isin(conflicting_nets)]
        
        dict_list = []
        #for bit_index in range(1, input_size+1):
        input_size = len(pattern_bit_df.columns) -1 #skipping last net name column
        net_index = patterns_df.index[patterns_df['Net_OrigName']==curr_net].tolist()[0]
        curr_patt = patterns_df.at[net_index, 'OriginalPatternOrdered']
        curr_patt_conflict_count = []
        for bit_index in range(0, input_size):
            if(curr_patt[bit_index] != 'X'):
                curr_column = pattern_bit_df.columns[bit_index]
                #print("------", bit_index, curr_column)
                #print(pattern_bit_df[curr_column].value_counts().to_dict())
                #dict_list.append(pattern_bit_df[curr_column].value_counts().to_dict())        

                #looking for conflict in conflicting nets df
                curr_dict = curr_slice_df[curr_column].value_counts().to_dict()
                if(curr_patt[bit_index] == '1'):
                    if '0' in curr_dict:
                        curr_patt_conflict_count.append(curr_dict['0'])        
                    else:
                        curr_patt_conflict_count.append(0)        
                else:
                    if '1' in curr_dict:
                        curr_patt_conflict_count.append(curr_dict['1'])        
                    else:
                        curr_patt_conflict_count.append(0)        
            else:
                curr_patt_conflict_count.append(0)

            conflict_count_dict[curr_net] = curr_patt_conflict_count

    flip_bit_dict = {}    
    for curr_net in ordered_net_conflict_dict:
        #print(curr_net, conflict_count_dict[curr_net])
        conflicting_nets = net_conflict_dict[curr_net]
        if(len(conflicting_nets) == 0):
            continue

        list1 = list(pattern_bit_df.columns)[0:-1]
        list2 = conflict_count_dict[curr_net]

        #print(list1)
        #print(list2)

        tempDict = {}
        tempDict = {list1[i]: list2[i] for i in range(len(list2))}
        
        sorted_dict = {k: v for k, v in sorted(tempDict.items(), key=lambda item: item[1], reverse=True)}
        
        sorted_pi = []
        sorted_pi_conflict_index = []
        # Element addition in the list
        for i in sorted_dict.keys():
            sorted_pi.append(i)
            sorted_pi_conflict_index.append(sorted_dict[i])
        
        #print("-----------")
        #print(sorted_pi)
        #print(sorted_pi_conflict_index)
        
        #traverse through final_list2 till first 0
        #check for conflict in fan in cone
        #flip if it is affecting
        #don't otherwise
        conflicting_nets = copy.deepcopy(net_conflict_dict[curr_net] )
        conflicting_nets.insert(0, curr_net) 
        #print(curr_net, conflicting_nets)
        curr_fanin_slice_df = fanin_PI_df[fanin_PI_df['Net_OrigName'].isin(conflicting_nets)]
        #print(curr_fanin_slice_df)
        
        for i  in range(0, len(sorted_pi_conflict_index)):
            curr_pi_conflict = sorted_pi_conflict_index[i]
            curr_pi_name = sorted_pi[i]
            if(curr_pi_conflict != 0):
            

                depend_count = len(curr_fanin_slice_df[curr_fanin_slice_df[curr_pi_name] == 1])
            
                if(depend_count>0):
                    if curr_net in flip_bit_dict:
                        flip_bit_dict[curr_net].append(curr_pi_name)
                    else:
                        flip_bit_dict[curr_net] = [curr_pi_name]
    if debug:    
        for curr_net in ordered_net_conflict_dict:   
            if curr_net in flip_bit_dict:
                print(curr_net, flip_bit_dict[curr_net])
            else:
                print("Conflict and input dependancies mis match: ", curr_net)
    
    return flip_bit_dict, pattern_bit_df

def mult_patt_set_approach(patterns_df, cast_sorted_tmax_columns, net_id_dict, tmax_pi_dict, tmax_pi_list_org):

    if("-1" not in randomness):
        random.seed(int(randomness))

    faninSetCone_file = dumpDir + "/fanin_cone_set.csv"

    net_cone_set_list = []
    cone_set_dict = {}
    temp_faninSet_list = []
    with open(faninSetCone_file, 'r') as filehandle:              
        for line in filehandle:
            edges = line.strip().split(",")
            net_name = edges[0]
            net_cone_set_list.append(net_name)
            tempList = edges[1:-1]
            temp_faninSet_list.append(tempList)
            cone_set_dict[net_name] = tempList
            #print(net_name, cone_set_dict)

    #ordered_net_conflict_dict, net_conflict_dict, flip_bit_dict, pattern_bit_df = get_conflict_set_data(patterns_df, cast_sorted_tmax_columns)

    #print("Getting conflict bit data for each set")
    flip_bit_dict, pattern_bit_df = get_conflict_set_data(patterns_df, cast_sorted_tmax_columns,net_cone_set_list, cone_set_dict)


    #if number of conflcits + original net are less than 5
    #do all combinations in reverse order
    #else flip one bit at a time from give dictionary values

    #print("Creating script for pattern generation")
    mult_script_path = dumpDir + "/tmax_script_get_pattern_at3.tcl"
    get_tmax_pre_script(mult_script_path)

    #print("Base script done")
    updated_pattern_script_2 = open(mult_script_path, 'a')

    patt_attempt = []
    net_set_attempt = []
    #print(pattern_bit_df)
    max_conflict_set = 0
    total_attempt = 0
    for curr_net in net_cone_set_list:  
        #print("----------fanin cone set----------")
        cone_rare_nets = cone_set_dict[curr_net]
        #print(curr_net, len(cone_rare_nets), cone_rare_nets)
        
        if max_conflict_set < len(cone_rare_nets):
            max_conflict_set = len(cone_rare_nets)
        
        #print("---curr_net---: ", curr_net, conflict_nets)        
        if(len(cone_rare_nets)==0):   #net without any other net in fanin cone 
            continue

            command = "run_justification -full_sequential -set { "
            command_comment = "#run_justification -full_sequential -set { "
            net_comb_comment = "#current_comb_set:" + curr_net + " "
            net_comb_no = "#attempt:"+str(total_attempt) + "\n"
            total_attempt = total_attempt + 1

            command = command + str(net_id_dict[curr_net][0]) + " " + str(net_id_dict[curr_net][1]) + " "
            command_comment = command_comment + str(curr_net) + " " + str(net_id_dict[curr_net][1]) + " "
            net_comb_comment = net_comb_comment + str(curr_net) + "," + str(net_id_dict[curr_net][1]) + " "

            command = command + "} -verbose -store"
            command_comment = command_comment + "} -verbose -store\n"
            net_name_comment = "#current_net:" + curr_net + "\n"
            updated_pattern_script_2.write(command_comment)
            updated_pattern_script_2.write(net_comb_no)
            updated_pattern_script_2.write(net_name_comment)
            net_comb_comment = net_comb_comment + "\n"
            updated_pattern_script_2.write(net_comb_comment)
            updated_pattern_script_2.write(command)
            updated_pattern_script_2.write('\n')
            patt_attempt.append(1)
            net_set_attempt.append([curr_net])
        elif(len(cone_rare_nets)<6):   #get all combinations
            all_comb = []
            if(len(cone_rare_nets)==1):
                all_comb=[[curr_net, cone_rare_nets[0]]]
            else:
                all_comb = sum([list(map(list, combinations(cone_rare_nets, i))) for i in range(len(cone_rare_nets) + 1)], [])
                #modifying sublist as it is not deep copy
                for sub_list in all_comb:
                    if(len(sub_list)>0):
                        sub_list.append(curr_net)                
                all_comb.pop(0)
            #print(all_comb)
            #try to obtain patterns for above set of nets from TMAX
            
            # net_id_dict[net_name] = [net_id, excite_value, cell_name]

            patt_attempt.append(len(all_comb))
            
            for curr_net_set  in reversed(all_comb):
                net_set_attempt.append(curr_net_set)
                #print(curr_net_set)
                command = "run_justification -full_sequential -set { "
                command_comment = "#run_justification -full_sequential -set { "
                net_comb_comment = "#current_comb_set:" + curr_net + " "
                net_comb_no = "#attempt:"+str(total_attempt) + "\n"
                total_attempt = total_attempt + 1

                for net in curr_net_set:
                    #print(net, net_id_dict[net])
                    command = command + str(net_id_dict[net][0]) + " " + str(net_id_dict[net][1]) + " "
                    command_comment = command_comment + str(net) + " " + str(net_id_dict[net][1]) + " "
                    net_comb_comment = net_comb_comment + str(net) + "," + str(net_id_dict[net][1]) + " "

                command = command + "} -verbose -store"
                command_comment = command_comment + "} -verbose -store\n"
                net_name_comment = "#current_net:" + curr_net + "\n"
                updated_pattern_script_2.write(command_comment)
                updated_pattern_script_2.write(net_comb_no)
                updated_pattern_script_2.write(net_name_comment)
                net_comb_comment = net_comb_comment + "\n"
                updated_pattern_script_2.write(net_comb_comment)

                updated_pattern_script_2.write(command)
                updated_pattern_script_2.write('\n')
                #print(command)
        else:   
            #print("---------Conflicts are more than 6-------")
            random_all_comb = []
            for k in range(5, 1, -1):
                #curr_comb = list(itertools.combinations(cone_rare_nets,k))
                #print(k, curr_comb)

                samples = set()
                samples_list = []
                tries = 0
                prev_len = 0
                while len(samples) < ndetect:
                    samples.add(tuple(sorted(random.sample(cone_rare_nets, k))))
                    if len(samples) > prev_len:
                        samples_list.append(list(sorted(random.sample(cone_rare_nets, k))))
                        prev_len = len(samples)

                    tries += 1
                    if tries == 100:
                        break
                #all_comb = [sorted(list(tempset)) for tempset in samples]
                all_comb = samples_list
                #print(k)
                #print(samples_list)

                for sub_list in all_comb:
                    if(len(sub_list)>0):
                        sub_list.append(curr_net)  
                        random_all_comb.append(sub_list)

                #print(k, tries, len(all_comb))
            #print(len(random_all_comb))
            #print("random_all_comb")
            #print(random_all_comb)
            patt_attempt.append(len(random_all_comb))
            
            for curr_net_set  in random_all_comb:
                net_set_attempt.append(curr_net_set)
                #print(curr_net_set)
                command = "run_justification -full_sequential -set { "
                command_comment = "#run_justification -full_sequential -set { "
                net_comb_comment = "#current_comb_set:" + curr_net + " "
                net_comb_no = "#attempt:"+str(total_attempt) + "\n"
                total_attempt = total_attempt + 1

                for net in curr_net_set:
                    #print(net, net_id_dict[net])
                    command = command + str(net_id_dict[net][0]) + " " + str(net_id_dict[net][1]) + " "
                    command_comment = command_comment + str(net) + " " + str(net_id_dict[net][1]) + " "
                    net_comb_comment = net_comb_comment + str(net) + "," + str(net_id_dict[net][1]) + " "

                command = command + "} -verbose -store"
                command_comment = command_comment + "} -verbose -store\n"
                net_name_comment = "#current_net:" + curr_net + "\n"
                updated_pattern_script_2.write(command_comment)
                updated_pattern_script_2.write(net_comb_no)
                updated_pattern_script_2.write(net_name_comment)
                net_comb_comment = net_comb_comment + "\n"
                updated_pattern_script_2.write(net_comb_comment)
                updated_pattern_script_2.write(command)
                updated_pattern_script_2.write('\n')

            '''
            # flip all conflicting bits one at time 
            #print("Multiple conflicts: hoing with alternate approach")
            patt_attempt.append(len(flip_bit_dict[curr_net]))
            #print("---cone size larger than 6")
            #print(curr_net, cone_rare_nets)
            #print(curr_net, flip_bit_dict[curr_net])
            for pi_bit in flip_bit_dict[curr_net]:
                net_set_attempt.append([curr_net+"_"+pi_bit])
                #get original bit for current net
                #flip it
                net_index = pattern_bit_df.index[pattern_bit_df['Net_Name']==curr_net].tolist()[0]
                original_bit = pattern_bit_df.at[net_index, pi_bit]
                flipped_bit = int(original_bit) ^ 1
                #print(pi_bit, original_bit, flipped_bit)
                command = "run_justification -full_sequential -set { "
                command = command + str(net_id_dict[curr_net][0]) + " " + str(net_id_dict[curr_net][1]) + " "
                #force primary bits
                command = command + str(tmax_pi_dict[pi_bit]) + " " + str(flipped_bit) + " "
                command = command + "} -verbose -store"
                updated_pattern_script_2.write(command)
                updated_pattern_script_2.write('\n')                
            '''

        
    updated_pattern_script_2.write('report_patterns -internal -all\n')
    updated_pattern_script_2.write('exit\n')
    updated_pattern_script_2.close()
    
    #print("max fanin set: ", max_conflict_set+1) #+ 1 as original net was no considered
    #print(net_set_attempt)

    mult_script_op_file = dumpDir + "/mult_pattern_op_set.txt"
    #print("=========== Running command to obtain test patterns w alt set approach===========")
    if(tmaxSrc == "NA"):
        tmax_command = "tmax -shell -tcl " + mult_script_path + " > " + mult_script_op_file 
    elif(tmaxSrc == "ECE"):
        tmax_command = "source /apps/settings && tmax -shell -tcl " + mult_script_path + " > " + mult_script_op_file 
    else:
        tmax_command = tmaxSrc + " && tmax -shell -tcl " + mult_script_path + " > " + mult_script_op_file 

    if(justOptCov == 0):            # skipping pattern derivation for this option
        os.system(tmax_command)
    else:
        print("INFO: skipping derivation of patterns for mult patt set")

    alt_pattern_dict, patt_net_set_dict = get_parsed_patterns(mult_script_op_file, patt_attempt, net_cone_set_list, net_set_attempt, tmax_pi_list_org, cast_sorted_tmax_columns)

    # #remove duplicate patterns from alt_pattern_dict that match exactly with base pattern
    # #!!!!!!!!!!!!!!!
    # updated_alt_patt_dict = {}
    # for curr_net, net_alt_patt in alt_pattern_dict.items():
    #     flag=0
    #     net_index = patterns_df.index[patterns_df['Net_OrigName']==curr_net].tolist()[0]
    #     base_patt = patterns_df.at[net_index, 'OriginalPatternOrdered']        
    #     #print(curr_net, base_patt, net_alt_patt)
    #     for idx in range(len(net_alt_patt)-1, 0, -1):
    #         compare_patt = net_alt_patt[idx]
    #         if compare_patt == base_patt:
    #             net_alt_patt.pop(idx)
    #             flag = 1
        
    #     #if flag == 1:
    #     #    print("---", curr_net, net_alt_patt)

    # #print(patterns_df)

    # #adding alternate patterns in patterns_df
    # patterns_df['alt_patterns'] = patterns_df.Net_OrigName.map(alt_pattern_dict)

    # patterns_df.fillna(value = 0, inplace = True)
    # #patterns_df = patterns_df.fillna({'alt_patterns':[]})
    # #patterns_df.loc[patterns_df.alt_patterns.isnull(), 'alt_patterns'] = []

    
    # pattern_df_w_alt_file = dumpDir + "/pattern_df_w_set.csv"
    
    # patterns_df.to_csv(pattern_df_w_alt_file, index=True)

    # #remove extra tmax pi and reorder them as per cast pi


    # #group by approach
    # #print("-----group by approach-----")
    # all_net_patterns_dict = {}
    # for i in range(0, len(patterns_df)):
    #     curr_net = patterns_df.at[patterns_df.index[i], 'Net_OrigName']
    #     #curr_org_patt = patterns_df.at[patterns_df.index[i], 'original_patt']

    #     #all_net_patterns_dict[curr_net] = [curr_org_patt]

    #     curr_alt_patt = patterns_df.at[patterns_df.index[i], 'alt_patterns']

    #     if type(curr_alt_patt) is list:
    #         #all_net_patterns_dict[curr_net] = all_net_patterns_dict[curr_net]+ curr_alt_patt
    #         all_net_patterns_dict[curr_net] = curr_alt_patt
        
    # #temp_df = pd.DataFrame(all_net_patterns_dict).melt(var_name='Net_Name')
    # alt_ordered_df = pd.DataFrame.from_dict(all_net_patterns_dict,orient='index')
    # alt_ordered_df = alt_ordered_df.T
    # alt_ordered_df = alt_ordered_df.melt()
    # alt_ordered_df = alt_ordered_df.dropna()

    # alt_ordered_df.columns = ['Net_OrigName', 'alt_patterns']

    # # not requried as patterns are already ordered
    # # alt_ordered_df = reorder_alt_pi(temp_df, tmax_pi_list_org, cast_sorted_tmax_columns)

    # #print(alt_ordered_df)

    # alt_patterns_df = alt_ordered_df[['Net_OrigName', 'alt_patterns']]
    # alt_patterns_df.columns = ['Net_OrigName', 'base_alt_set_patterns']

    # org_patterns_df = patterns_df[['Net_OrigName', 'OriginalPatternOrdered']]
    # org_patterns_df.columns = ['Net_OrigName', 'base_alt_set_patterns']

    # #print(org_patterns_df)

    # all_patt_df = pd.concat([org_patterns_df, alt_patterns_df])

    # all_patt_df.reset_index(drop=True, inplace=True)


    # #print(all_patt_df)

    
    # patt_set_list = []
    # patt_set_net_list = []
    # for i in range(0, len(all_patt_df)-1):
    #     temp_patt_list = []
    #     temp_patt_net_list = []
    #     curr_patt = all_patt_df.at[all_patt_df.index[i], 'base_alt_set_patterns']
    #     curr_net = all_patt_df.at[all_patt_df.index[i], 'Net_OrigName']

    #     temp_patt_list.append(curr_patt)
    #     temp_patt_net_list.append(curr_net)

    #     for j in range(i+1, len(all_patt_df)):
    #         compare_patt = all_patt_df.at[all_patt_df.index[j], 'base_alt_set_patterns']
    #         compare_net = all_patt_df.at[all_patt_df.index[j], 'Net_OrigName']

    #         matchFlag = check_patt_match(curr_patt, compare_patt)
    #         if matchFlag:
    #             temp_patt_list.append(compare_patt)
    #             temp_patt_net_list.append(compare_net)

    #     patt_set_list.append(temp_patt_list)
    #     patt_set_net_list.append(temp_patt_net_list)
        
    # final_opt_list = []
    # for i in range(0, len(patt_set_list)):
    #     curr_set_list = patt_set_list[i]
    #     curr_set_net_list = patt_set_net_list[i]

    #     #print("-------------")
    #     #print(curr_set_list)
    #     #print(curr_set_net_list)
    #     pattern_size = len(curr_set_list[0])        
    #     final_opt_pattern = ''
    #     for j in range(0, pattern_size):
    #         flag_added = 0
    #         for k in range(0, len(curr_set_list)):
    #             if curr_set_list[k][j] == '1':
    #                 final_opt_pattern = final_opt_pattern + '1'
    #                 flag_added = 1
    #                 break
    #             elif curr_set_list[k][j] == '0':
    #                 final_opt_pattern = final_opt_pattern + '0'
    #                 flag_added = 1
    #                 break
    #         if flag_added == 0:
    #             final_opt_pattern = final_opt_pattern + 'X'
            
    #     if final_opt_pattern not in final_opt_list:
    #         final_opt_list.append(final_opt_pattern)

    #     #print(final_opt_pattern)

    
    # binary ='01'
    # final_alt_vector = []
    # for i in range(0, len(final_opt_list)):
    #     #print(i)
    #     #print(patt_set_list[i])
    #     #print(final_opt_list[i])
    #     #print(patt_set_net_list[i])

    #     pattern_str = final_opt_list[i]
    #     vector_w_unk_cnt = pattern_str.count("X")

    #     #creating random pattern
    #     while(vector_w_unk_cnt !=0 ):
    #         pattern_str = pattern_str.replace('X', random.choice(binary), 1)
    #         vector_w_unk_cnt = vector_w_unk_cnt - 1
        
    #     if pattern_str not in final_alt_vector:
    #         final_alt_vector.append(pattern_str)

    # #print("Total vector with set: ", len(final_alt_vector))

    # #print("Combined base with alt patterns")
    # #combined_patterns = base_patterns + final_alt_vector
    
    # #original parsed patterns with key(net), pattern, [comb_type, common nets] information

    simple_patt_net_set_dict = {}
    for key, value in patt_net_set_dict.items():
        for patt_net_set in value:
            # print("#####", key, patt_net_set[0], patt_net_set[1])
            if key in simple_patt_net_set_dict.keys():
                simple_patt_net_set_dict[key].append([patt_net_set[0], patt_net_set[1][1:]])
            else:
                simple_patt_net_set_dict[key] = [[patt_net_set[0], patt_net_set[1][1:]]]

    # removed 0(based on PI)/1based on set flag
    # print("Simplified")
    # for key, value in simple_patt_net_set_dict.items():
    #     for patt_net_set in value:
    #         print("#####", key, patt_net_set[0], patt_net_set[1])


    
    # print("- - - - - - - - - - - ")
    # sorted_key = []
    # for k in sorted(simple_patt_net_set_dict, key=lambda k: len(simple_patt_net_set_dict[k]), reverse=False):
    #     sorted_key.append(k)
    #     print(k, simple_patt_net_set_dict[k])
        

    merged_patt_net_dict = {}
    for key, value in simple_patt_net_set_dict.items():
        patt_comb_net_list = value              # list from first approach
        for i in range(0, len(patt_comb_net_list)):
            curr_set = patt_comb_net_list[i]
            curr_patt = curr_set[0]
            curr_net_comb = curr_set[1]
                
            if curr_patt in merged_patt_net_dict.keys():
                #for net_comb in curr_set[1]:
                if curr_net_comb not in merged_patt_net_dict[curr_patt]:
                    merged_patt_net_dict[curr_patt] = list(set(merged_patt_net_dict[curr_patt] + curr_net_comb))
            else:
                merged_patt_net_dict[curr_patt] = curr_net_comb

    sorted_key = []
    for k in sorted(merged_patt_net_dict, key=lambda k: len(merged_patt_net_dict[k]), reverse=False):
        sorted_key.append(k)
        
    # print("########")
    # for key in sorted_key:
    #     print(key, merged_patt_net_dict[key])
    # print("########")
    # print("- - - - - - - - - - - ")
    # for i in range(0, len(sorted_key)):
    #     key = sorted_key[i]
    #     curr_patt_nets = patt_net_dict[key]
    #     print(key, curr_patt_nets)


    #removing subset nets
    opt_patt_net_dict = {}              # reduced directory with min patterns and max rare net set
    subset_count = 0
    for i in range(0, len(sorted_key)):
        key = sorted_key[i]
        curr_patt_nets = merged_patt_net_dict[key]
        flag = 0
        for j in range(i+1, len(sorted_key)-1):
            comapre_key = sorted_key[j]
            compare_patt_nets = merged_patt_net_dict[comapre_key]
            if(set(curr_patt_nets).issubset(set(compare_patt_nets))):
                # print("subset", curr_patt_nets, compare_patt_nets)
                flag = 1
        if flag == 0:
            opt_patt_net_dict[key] = curr_patt_nets
        else:
            subset_count = subset_count + 1

    # print("- - - - -reduced patterns in attempt 2 - - - - - - ")
    # for k in sorted(opt_patt_net_dict, key=lambda k: len(opt_patt_net_dict[k]), reverse=True):
    #     print(k, opt_patt_net_dict[k])

    # print("Attempt 2: ", subset_count)

    #remove / reorder PI order 
    # print("remove / reorder PI order ")
    # print(opt_patt_net_dict)
    # not required as patterns are already ordered
    # opt_patt_net_dict = reorder_dict_pi(opt_patt_net_dict, tmax_pi_list_org, cast_sorted_tmax_columns)
    # print(opt_patt_net_dict)
    

    return alt_pattern_dict, patt_net_set_dict, opt_patt_net_dict

def get_all_patterns(alt_pattern_dict_1, alt_pattern_dict_2, alt_pattern_dict_3, patterns_df, alt_ordered_2_df, alt_ordered_3_df):

    net_set = set(list(alt_pattern_dict_1.keys()))
    net_set.update(list(alt_pattern_dict_2.keys()))
    net_set.update(list(alt_pattern_dict_3.keys()))

    # print(patterns_df[['Net_OrigName', 'OriginalPattern']])
    alt_ordered_1_df = patterns_df[['Net_OrigName', 'OriginalPatternOrdered']]
    
    alt_ordered_2_df.columns = ['Net_OrigName', 'OriginalPatternOrdered']
    alt_ordered_3_df.columns = ['Net_OrigName', 'OriginalPatternOrdered']

    frames = [alt_ordered_1_df, alt_ordered_2_df, alt_ordered_3_df]

    combined_df = pd.concat(frames)
    combined_df = combined_df.reset_index(drop=True)

    combined_df.to_csv("delete.csv")
    
    base1_file = dumpDir + "/base1.csv"
    alt_ordered_1_df.to_csv(base1_file)

    base2_file = dumpDir + "/base2.csv"
    alt_ordered_2_df.to_csv(base2_file)

    base3_file = dumpDir + "/base3.csv"
    alt_ordered_3_df.to_csv(base3_file)
    

    net_list = list(net_set)

    combined_dict = {}
    combined_dict_key_list = []
    for i in range(0, len(combined_df)):
        curr_net = combined_df.at[combined_df.index[i], 'Net_OrigName']
        curr_patt = combined_df.at[combined_df.index[i], 'OriginalPatternOrdered']
        key = curr_net

        if key in combined_dict.keys():
            if curr_patt not in combined_dict[key]:
                combined_dict[key].append(curr_patt)
        else:
            combined_dict[key] = [curr_patt]

        if key not in combined_dict_key_list:
            combined_dict_key_list.append(key)

    # print("-------LOGIC----------")
    sortedKeyList = sorted(combined_dict.keys(), key=lambda s: len(combined_dict.get(s)))

    # for net in sortedKeyList:
    #     print(net, len(combined_dict[net]))

    final_pattern_bucket = []
    final_pattern_bucket_dict = {}
    final_pattern_bucket_alt_dict = {}
    patt_bucket_dict = {}
    for i in range(0, len(sortedKeyList)):
        key = sortedKeyList[i]
        curr_patt_list = combined_dict[key]
        covered_net = [0] * len(sortedKeyList)
        #iterate through all patterns for current net
        for curr_patt in curr_patt_list:
            #comapre patt with remaining patt in other dictionaries
            min_hit = 0
            for j in range(i+1, len(sortedKeyList)-1):
                #iterate only if comapre net already not covered
                if(covered_net[j] == 0):            
                    compare_key = sortedKeyList[j]
                    compare_patt_list = combined_dict[compare_key]
                    for compare_patt in compare_patt_list:
                        ret, matched_patt = return_match_patt(curr_patt, compare_patt)
                        if ret == 1:
                            if matched_patt not in final_pattern_bucket:
                                final_pattern_bucket.append(matched_patt)
                                final_pattern_bucket_dict[key] = matched_patt
                                final_pattern_bucket_alt_dict[key] = [curr_patt, compare_patt, compare_key]
                                min_hit = 1
                            if key in patt_bucket_dict:
                                if matched_patt not in patt_bucket_dict[key]:
                                    patt_bucket_dict[key].append(matched_patt)
                                    covered_net[j] = 1
                                    if compare_key in patt_bucket_dict:
                                        if matched_patt not in patt_bucket_dict[compare_key]:
                                            patt_bucket_dict[compare_key].append(matched_patt)
                                    else:
                                        patt_bucket_dict[compare_key] = [matched_patt]
                                    
                            else:
                                patt_bucket_dict[key] = [matched_patt]
                                covered_net[j] = 1
                                if compare_key in patt_bucket_dict:
                                    if matched_patt not in patt_bucket_dict[compare_key]:
                                        patt_bucket_dict[compare_key].append(matched_patt)
                                else:
                                    patt_bucket_dict[compare_key] = [matched_patt]
                            break
            #not a single hit add it to current key dictionary
            if min_hit == 0:
                if key in patt_bucket_dict:
                    # if matched_patt not in patt_bucket_dict[key]:
                    if curr_patt not in patt_bucket_dict[key]:
                        patt_bucket_dict[key].append(curr_patt)                        
                else:
                    # patt_bucket_dict[key] = [matched_patt]
                    patt_bucket_dict[key] = [curr_patt]
                    # covered_net[j] = 1                    

    # print("-----------------")
    # print(len(final_pattern_bucket))

    # for key, value in patt_bucket_dict.items():
    #     print(key, len(value))

    
    binary ='01'
    final_alt_vector = []
    random.seed(datetime.now())
    # for i in range(0, len(final_pattern_bucket)):
    random_patt_dict = {}
    for key, value in final_pattern_bucket_dict.items():
        #print(i)
        #print(patt_set_list[i])
        #print(final_opt_list[i])
        #print(patt_set_net_list[i])

        # vector_w_unk = final_pattern_bucket[i]
        # original_patt = final_pattern_bucket[i]

        vector_w_unk = value
        original_patt = value

        vector_w_unk_cnt = vector_w_unk.count("X")

        temp_list = []
        unk_cnt = vector_w_unk.count("X")
        #generating all possible test vectors
        if (2**unk_cnt) < ndetect :
            possible_patt = 2 ** unk_cnt 
        else:
            possible_patt = ndetect

        # possible_patt = 10
        # possible_patt = 2
        # print("+++++++++++++++++++++++++++")
        # print(key, value, final_pattern_bucket_alt_dict[key])

        while(possible_patt > 0):
            #generating variations for pattern [i]
            pattern_str = vector_w_unk
            vector_w_unk_cnt = pattern_str.count("X")

            #creating random pattern
            while(vector_w_unk_cnt !=0 ):
                pattern_str = pattern_str.replace('X', random.choice(binary), 1)
                vector_w_unk_cnt = vector_w_unk_cnt - 1            
            
            if pattern_str not in temp_list:
                temp_list.append(pattern_str)
                possible_patt = possible_patt - 1
                
            if pattern_str not in final_alt_vector:
                final_alt_vector.append(pattern_str)
                if key in random_patt_dict.keys():
                    random_patt_dict[key].append(pattern_str)
                else:
                    random_patt_dict[key] = [pattern_str]
                


    # print("total_patterns", len(final_alt_vector))

    combined_vector_file = dumpDir + "/vector_opt.out"
    combined_test_vector = open(combined_vector_file, 'w')
    for i in final_alt_vector:
        combined_test_vector.write(i)
        combined_test_vector.write("\n")
    combined_test_vector.close()

    combined_vector_file = dumpDir + "/vector_opt_debug.out"
    combined_test_vector = open(combined_vector_file, 'w')
    for key, value in random_patt_dict.items():
        for data in value:
            combined_test_vector.write(key)
            combined_test_vector.write(",")
            combined_test_vector.write(data)
            combined_test_vector.write("\n")
    combined_test_vector.close()


        # print(key, len(value))

def reorder_alt_pi(patterns_df, tmax_pi_list, cast_sorted_tmax_columns):

    temp_patt_list = []
    net_list = []
    for i in range(0, len(patterns_df)):
        curr_alt_patt = patterns_df.at[patterns_df.index[i], 'alt_patterns']
        curr_net = patterns_df.at[patterns_df.index[i], 'Net_OrigName']
        net_list.append(curr_net)
        curr_patt_list = list(curr_alt_patt)
        temp_patt_list.append(curr_patt_list)        

    #print(len(temp_patt_list[0]))
    #print(tmax_pi_list)
    pattern_bit_df = pd.DataFrame(temp_patt_list, columns=tmax_pi_list)
    
    #rearraning columns
    pattern_bit_df = pattern_bit_df[cast_sorted_tmax_columns]
    
    sorted_patt_df_file = dumpDir + "/bit_sorted_alt_df.csv"
    pattern_bit_df.to_csv(sorted_patt_df_file, index=False)

    #merge columns
    pattern_bit_df['merged'] = pattern_bit_df[pattern_bit_df.columns].apply(
        lambda x: ''.join(x.dropna().astype(str)),
        axis=1
    )

    patterns_df['alt_patterns'] = pattern_bit_df['merged'].values
    #adding net name
    pattern_bit_df["Net_OrigName"] = net_list


    return patterns_df


def reorder_dict_pi(patt_net_set_dict, tmax_pi_list, cast_sorted_tmax_columns):

    patt_net_set_dict_updated = {}
    dict_to_list_keys = []
    dict_to_list_values = []
    for key, value in patt_net_set_dict.items():
        for i in range(0, len(value)):
            set_list = value[i]
            dict_to_list_keys.append(list(key))
            dict_to_list_values.append(set_list)
            # if key in patt_net_set_dict.keys():
            #     patt_net_set_dict[key].append([patt, alt_pattern_comb[key][i],alt_pattern_comb_status[key][i]])
            # else:
            #     patt_net_set_dict[key] = [[patt, alt_pattern_comb[key][i], alt_pattern_comb_status[key][i]]]

    pattern_bit_df = pd.DataFrame(dict_to_list_keys, columns=tmax_pi_list)
    
    pattern_bit_df = pattern_bit_df[cast_sorted_tmax_columns]

    pattern_bit_df['merged'] = pattern_bit_df[pattern_bit_df.columns].apply(
        lambda x: ''.join(x.dropna().astype(str)),
        axis=1
    )

    for i in range(0, len(pattern_bit_df)):
        curr_patt = pattern_bit_df.at[pattern_bit_df.index[i], 'merged']
        if curr_patt in patt_net_set_dict_updated.keys():
            patt_net_set_dict_updated[curr_patt].append(dict_to_list_values[i])
        else:
            patt_net_set_dict_updated[curr_patt] = [dict_to_list_values[i]]

    return patt_net_set_dict_updated

def get_conflict_data(patterns_df, cast_sorted_tmax_columns):

    # print("---------MULT APPROCH---------")

    conflict_df_file = dumpDir + "/conflict_df.csv"
    conflict_df = pd.read_csv(conflict_df_file, index_col=0)
    if debug:
        print(conflict_df)

    temp_patt_list = []
    net_list = []
    for i in range(0, len(patterns_df)):
        curr_patt = patterns_df.at[patterns_df.index[i], 'OriginalPatternOrdered']
        curr_net = patterns_df.at[patterns_df.index[i], 'Net_OrigName']
        net_list.append(curr_net)
        curr_patt_list = list(curr_patt)
        temp_patt_list.append(curr_patt_list)

    pattern_bit_df = pd.DataFrame(temp_patt_list, columns=cast_sorted_tmax_columns)
    pattern_bit_df["Net_OrigName"] = net_list

    #print("---------CONFLICT ANLYSIS---------")
    #print(patterns_df)
    #print(pattern_bit_df)
    #print("----------------------------------")

    fanin_PI_df_file = dumpDir + "/fanin_df.csv"
    #print(fanin_PI_df_file)
    fanin_PI_df = pd.read_csv(fanin_PI_df_file) 
    
    
    
    #for bit_index in range(1, input_size+1):
    input_size = len(pattern_bit_df.columns)

    net_conflict_dict = {}
    ordered_net_conflict_dict = []
    #loop to detect overall conmflicting nets
    #net_conflict_dict[net_name] = [list of conflicting nets]
    for i in range(0, len(patterns_df)-1):
        dict_list = []
        curr_net = patterns_df.at[patterns_df.index[i], 'Net_OrigName']
        curr_patt = patterns_df.at[patterns_df.index[i], 'OriginalPatternOrdered']

        #patt_unk_cnt = curr_patt.count("X")
        #if patt_unk_cnt == 0:
        #    continue
        #print("Conflict analysis on: ", curr_net)
        #compare pair wise for conflict
        for j in range(i+1, len(patterns_df)):
            compare_net = patterns_df.at[patterns_df.index[j], 'Net_OrigName']
            compare_patt = patterns_df.at[patterns_df.index[j], 'OriginalPatternOrdered']
            match_flag = check_patt_match(curr_patt, compare_patt)

            #conflict
            if(not match_flag):
                if curr_net not in net_conflict_dict:
                    net_conflict_dict[curr_net] = [compare_net]
                    ordered_net_conflict_dict.append(curr_net)
                else:
                    net_conflict_dict[curr_net].append(compare_net)
        #grab frame based on nets preset in key and value and perform conflict detail analysis
        if curr_net in net_conflict_dict:
            if debug:
                print(curr_net, net_conflict_dict[curr_net])

    
    #loop to check conflict for each set in their respective sliced df

    conflict_count_dict = {}
    for curr_net in ordered_net_conflict_dict:
        conflicting_nets = net_conflict_dict[curr_net] 
        #slice df based on these nets
        curr_slice_df = pattern_bit_df[pattern_bit_df['Net_OrigName'].isin(conflicting_nets)]
        
        dict_list = []
        #for bit_index in range(1, input_size+1):
        input_size = len(pattern_bit_df.columns) -1 #skipping last net name column
        net_index = patterns_df.index[patterns_df['Net_OrigName']==curr_net].tolist()[0]
        curr_patt = patterns_df.at[net_index, 'OriginalPatternOrdered']
        curr_patt_conflict_count = []
        for bit_index in range(0, input_size):
            if(curr_patt[bit_index] != 'X'):
                curr_column = pattern_bit_df.columns[bit_index]
                #print("------", bit_index, curr_column)
                #print(pattern_bit_df[curr_column].value_counts().to_dict())
                #dict_list.append(pattern_bit_df[curr_column].value_counts().to_dict())        

                #looking for conflict in conflicting nets df
                curr_dict = curr_slice_df[curr_column].value_counts().to_dict()
                if(curr_patt[bit_index] == '1'):
                    if '0' in curr_dict:
                        curr_patt_conflict_count.append(curr_dict['0'])        
                    else:
                        curr_patt_conflict_count.append(0)        
                else:
                    if '1' in curr_dict:
                        curr_patt_conflict_count.append(curr_dict['1'])        
                    else:
                        curr_patt_conflict_count.append(0)        
            else:
                curr_patt_conflict_count.append(0)

            conflict_count_dict[curr_net] = curr_patt_conflict_count

    flip_bit_dict = {}    
    for curr_net in ordered_net_conflict_dict:
        #print(curr_net, conflict_count_dict[curr_net])

        list1 = list(pattern_bit_df.columns)[0:-1]
        list2 = conflict_count_dict[curr_net]

        #print(list1)
        #print(list2)

        tempDict = {}
        tempDict = {list1[i]: list2[i] for i in range(len(list2))}
        
        sorted_dict = {k: v for k, v in sorted(tempDict.items(), key=lambda item: item[1], reverse=True)}
        
        sorted_pi = []
        sorted_pi_conflict_index = []
        # Element addition in the list
        for i in sorted_dict.keys():
            sorted_pi.append(i)
            sorted_pi_conflict_index.append(sorted_dict[i])
        
        #print("-----------")
        #print(sorted_pi)
        #print(sorted_pi_conflict_index)
        
        #traverse through final_list2 till first 0
        #check for conflict in fan in cone
        #flip if it is affecting
        #don't otherwise
        conflicting_nets = copy.deepcopy(net_conflict_dict[curr_net] )
        conflicting_nets.insert(0, curr_net) 
        #print(curr_net, conflicting_nets)
        curr_fanin_slice_df = fanin_PI_df[fanin_PI_df['Net_OrigName'].isin(conflicting_nets)]
        #print(curr_fanin_slice_df)
        
        for i  in range(0, len(sorted_pi_conflict_index)):
            curr_pi_conflict = sorted_pi_conflict_index[i]
            curr_pi_name = sorted_pi[i]
            if(curr_pi_conflict != 0):
            

                depend_count = len(curr_fanin_slice_df[curr_fanin_slice_df[curr_pi_name] == 1])
            
                if(depend_count>0):
                    if curr_net in flip_bit_dict:
                        flip_bit_dict[curr_net].append(curr_pi_name)
                    else:
                        flip_bit_dict[curr_net] = [curr_pi_name]
    if debug:    
        for curr_net in ordered_net_conflict_dict:   
            if curr_net in flip_bit_dict:
                print(curr_net, flip_bit_dict[curr_net])
            else:
                print("Conflict and input dependancies mis match: ", curr_net)
    
    return ordered_net_conflict_dict, net_conflict_dict, flip_bit_dict, pattern_bit_df

def mult_patt_approach(patterns_df, cast_sorted_tmax_columns, net_id_dict, tmax_pi_dict, tmax_pi_list_org):

    ordered_net_conflict_dict, net_conflict_dict, flip_bit_dict, pattern_bit_df = get_conflict_data(patterns_df, cast_sorted_tmax_columns)

    
    #if number of conflcits + original net are less than 5
    #do all combinations in reverse order
    #else flip one bit at a time from give dictionary values

    mult_script_path = dumpDir + "/tmax_script_get_pattern_at2.tcl"
    get_tmax_pre_script(mult_script_path)

    updated_pattern_script_2 = open(mult_script_path, 'a')

    patt_attempt = []
    net_set_attempt = []
    #print(pattern_bit_df)
    max_conflict_set = 0
    total_attempt = 0
    for curr_net in ordered_net_conflict_dict:  
        conflict_nets = net_conflict_dict[curr_net]
        
        if max_conflict_set < len(conflict_nets):
            max_conflict_set = len(conflict_nets)
        
        #print("---curr_net---: ", curr_net, conflict_nets)        
        if(len(conflict_nets)<6):   #get all combinations
            all_comb = []
            if(len(conflict_nets)==1):
                all_comb=[[curr_net, conflict_nets[0]]]
            else:
                all_comb = sum([list(map(list, combinations(conflict_nets, i))) for i in range(len(conflict_nets) + 1)], [])
                #modifying sublist as it is not deep copy
                for sub_list in all_comb:
                    if(len(sub_list)>0):
                        sub_list.append(curr_net)                
                all_comb.pop(0)
            #print(all_comb)
            #try to obtain patterns for above set of nets from TMAX
            
            # net_id_dict[net_name] = [net_id, excite_value, cell_name]

            patt_attempt.append(len(all_comb))
            
            for curr_net_set  in reversed(all_comb):
                net_set_attempt.append(curr_net_set)
                #print(curr_net_set)
                command = "run_justification -full_sequential -set { "
                command_comment = "#run_justification -full_sequential -set { "
                net_comb_no = "#attempt:"+str(total_attempt) + "\n"
                total_attempt = total_attempt + 1
                net_name_comment = "#current_net:" + curr_net + "\n"
                net_comb_comment = "#current_comb_set:" + curr_net + " "
                for net in curr_net_set:
                    #print(net, net_id_dict[net])
                    command = command + str(net_id_dict[net][0]) + " " + str(net_id_dict[net][1]) + " "
                    command_comment = command_comment + str(net) + " " + str(net_id_dict[net][1]) + " "
                    net_comb_comment = net_comb_comment + str(net) + "," + str(net_id_dict[net][1]) + " "
                command = command + "} -verbose -store"
                command_comment = command_comment + "} -verbose -store\n"
                updated_pattern_script_2.write(command_comment)
                updated_pattern_script_2.write(net_comb_no)
                updated_pattern_script_2.write(net_name_comment)
                net_comb_comment = net_comb_comment + "\n"
                updated_pattern_script_2.write(net_comb_comment)
                updated_pattern_script_2.write(command)
                updated_pattern_script_2.write('\n')
                #print(command)
        else:   # flip all conflicting bits one at time 
            #print("Multiple conflicts: hoing with alternate approach")
            patt_attempt.append(len(flip_bit_dict[curr_net]))
            for pi_bit in flip_bit_dict[curr_net]:
                net_set_attempt.append([curr_net])
                #get original bit for current net
                #flip it
                net_index = pattern_bit_df.index[pattern_bit_df['Net_OrigName']==curr_net].tolist()[0]
                original_bit = pattern_bit_df.at[net_index, pi_bit]
                flipped_bit = int(original_bit) ^ 1
                command = "run_justification -full_sequential -set { "
                command_comment = "#run_justification -full_sequential -set { "
                net_comb_no = "#attempt:"+str(total_attempt) + "\n"
                total_attempt = total_attempt + 1
                net_name_comment = "#current_net:" + curr_net + "\n"
                net_comb_comment = "#current_comb:" + curr_net + " "
                command = command + str(net_id_dict[curr_net][0]) + " " + str(net_id_dict[curr_net][1]) + " "
                command_comment = command_comment + str(curr_net) + " " + str(net_id_dict[curr_net][1]) + " "
                net_comb_comment = net_comb_comment + str(curr_net) + "," + str(net_id_dict[curr_net][1]) + " "
                #force primary bits
                command = command + str(tmax_pi_dict[pi_bit]) + " " + str(flipped_bit) + " "
                command_comment = command_comment + str(pi_bit) + " " + str(flipped_bit) + " "
                net_comb_comment = net_comb_comment + str(pi_bit) + "," + str(flipped_bit) + " "
                command = command + "} -verbose -store"
                command_comment = command_comment + "} -verbose -store\n"
                updated_pattern_script_2.write(command_comment)
                updated_pattern_script_2.write(net_comb_no)
                updated_pattern_script_2.write(net_name_comment)
                net_comb_comment = net_comb_comment + "\n"
                updated_pattern_script_2.write(net_comb_comment)
                updated_pattern_script_2.write(command)
                updated_pattern_script_2.write('\n')                

        
    updated_pattern_script_2.write('report_patterns -internal -all\n')
    updated_pattern_script_2.write('exit\n')
    updated_pattern_script_2.close()
    
    #print("max conflict set: ", max_conflict_set+1) #+ 1 as original net was no considered
    #print(net_set_attempt)

    mult_script_op_file = dumpDir + "/mult_pattern_op_new.txt"
    #print("=========== Running command to obtain test patterns w alt ===========")
    if(tmaxSrc == "NA"):
        tmax_command = "tmax -shell -tcl " + mult_script_path + " > " + mult_script_op_file 
    elif(tmaxSrc == "ECE"):
        tmax_command = "source /apps/settings && tmax -shell -tcl " + mult_script_path + " > " + mult_script_op_file 
    else:
        tmax_command = tmaxSrc + " && tmax -shell -tcl " + mult_script_path + " > " + mult_script_op_file 
    
    
    if(justOptCov == 0):            # skipping derivation of patterns for just opt cov option
        os.system(tmax_command)
    else:
        print("INFO: skipping pattern derivation for mult pat appraoch")
        
    

    alt_pattern_dict, patt_net_set_dict = get_parsed_patterns(mult_script_op_file, patt_attempt, ordered_net_conflict_dict, net_set_attempt, tmax_pi_list_org, cast_sorted_tmax_columns)

    


    # ordered_rare_net_file = dumpDir + "/approach_2_nets.csv"
    # ordered_rare_net_file_handle = open(ordered_rare_net_file, 'w')
    # for key, value in alt_pattern_dict.items():
    #     for patt in value:
    #         ordered_rare_net_file_handle.write(key)
    #         ordered_rare_net_file_handle.write(",")
    #         ordered_rare_net_file_handle.write(patt)
    #         ordered_rare_net_file_handle.write("\n")

    # ordered_rare_net_file_handle.close()    


    # #print("!!!!!!!!!! Parsed")
    # #remove duplicate patterns from alt_pattern_dict that match exactly with base pattern
    # #!!!!!!!!!!!!!!!
    # updated_alt_patt_dict = {}
    # for curr_net, net_alt_patt in alt_pattern_dict.items():
    #     flag=0
    #     net_index = patterns_df.index[patterns_df['Net_OrigName']==curr_net].tolist()[0]
    #     base_patt = patterns_df.at[net_index, 'OriginalPatternOrdered']        
    #     #print(curr_net, base_patt, net_alt_patt)
    #     for idx in range(len(net_alt_patt)-1, 0, -1):
    #         compare_patt = net_alt_patt[idx]
    #         if compare_patt == base_patt:
    #             net_alt_patt.pop(idx)
    #             flag = 1
        
    #     #if flag == 1:
    #     #    print("---", curr_net, net_alt_patt)

    # #print(patterns_df)

    # #adding alternate patterns in patterns_df
    # patterns_df['alt_patterns'] = patterns_df.Net_OrigName.map(alt_pattern_dict)

    # patterns_df.fillna(value = 0, inplace = True)
    # #patterns_df = patterns_df.fillna({'alt_patterns':[]})
    # #patterns_df.loc[patterns_df.alt_patterns.isnull(), 'alt_patterns'] = []

    
    # pattern_df_w_alt_file = dumpDir + "/pattern_df_w_alt_set.csv"
    
    # patterns_df.to_csv(pattern_df_w_alt_file, index=True)

    # #remove extra tmax pi and reorder them as per cast pi


    # #group by approach
    # #print("-----group by approach-----")
    # all_net_patterns_dict = {}
    # for i in range(0, len(patterns_df)):
    #     curr_net = patterns_df.at[patterns_df.index[i], 'Net_OrigName']
    #     #curr_org_patt = patterns_df.at[patterns_df.index[i], 'original_patt']

    #     #all_net_patterns_dict[curr_net] = [curr_org_patt]

    #     curr_alt_patt = patterns_df.at[patterns_df.index[i], 'alt_patterns']

    #     if type(curr_alt_patt) is list:
    #         #all_net_patterns_dict[curr_net] = all_net_patterns_dict[curr_net]+ curr_alt_patt
    #         all_net_patterns_dict[curr_net] = curr_alt_patt
        
    # #temp_df = pd.DataFrame(all_net_patterns_dict).melt(var_name='Net_Name')
    # alt_ordered_df = pd.DataFrame.from_dict(all_net_patterns_dict,orient='index')
    # alt_ordered_df = alt_ordered_df.T
    # alt_ordered_df = alt_ordered_df.melt()
    # alt_ordered_df = alt_ordered_df.dropna()

    # alt_ordered_df.columns = ['Net_OrigName', 'alt_patterns']

    # # print("cast_sorted_tmax_columns")
    # # print(cast_sorted_tmax_columns)

    # # print("tmax_pi_list_org")
    # # print(tmax_pi_list_org)
    # print("----testing---")
    # #not required as patterns are already ordered
    # # alt_ordered_df = reorder_alt_pi(temp_df, tmax_pi_list_org, cast_sorted_tmax_columns)
    # # print(temp_df)
    # #print(alt_ordered_df)

    # #only alternate patterns after reordering PI
    # alt_patterns_df = alt_ordered_df[['Net_OrigName', 'alt_patterns']]
    # alt_patterns_df.columns = ['Net_OrigName', 'base_alt_patterns']

    # #base patterns after reordering PI
    # org_patterns_df = patterns_df[['Net_OrigName', 'OriginalPatternOrdered']]
    # org_patterns_df.columns = ['Net_OrigName', 'base_alt_patterns']

    # #print(org_patterns_df)

    # #combined patterns 
    # all_patt_df = pd.concat([org_patterns_df, alt_patterns_df])

    # all_patt_df.reset_index(drop=True, inplace=True)


    # #print(all_patt_df)

    
    # patt_set_list = []
    # patt_set_net_list = []
    # for i in range(0, len(all_patt_df)-1):
    #     temp_patt_list = []
    #     temp_patt_net_list = []
    #     curr_patt = all_patt_df.at[all_patt_df.index[i], 'base_alt_patterns']
    #     curr_net = all_patt_df.at[all_patt_df.index[i], 'Net_OrigName']

    #     temp_patt_list.append(curr_patt)
    #     temp_patt_net_list.append(curr_net)

    #     for j in range(i+1, len(all_patt_df)):
    #         compare_patt = all_patt_df.at[all_patt_df.index[j], 'base_alt_patterns']
    #         compare_net = all_patt_df.at[all_patt_df.index[j], 'Net_OrigName']

    #         matchFlag = check_patt_match(curr_patt, compare_patt)
    #         if matchFlag:
    #             temp_patt_list.append(compare_patt)
    #             temp_patt_net_list.append(compare_net)

    #     patt_set_list.append(temp_patt_list)
    #     patt_set_net_list.append(temp_patt_net_list)
        
    # final_opt_list = []
    # for i in range(0, len(patt_set_list)):
    #     curr_set_list = patt_set_list[i]
    #     curr_set_net_list = patt_set_net_list[i]

    #     #print("-------------")
    #     #print(curr_set_list)
    #     #print(curr_set_net_list)
    #     pattern_size = len(curr_set_list[0])        
    #     final_opt_pattern = ''
    #     for j in range(0, pattern_size):
    #         flag_added = 0
    #         for k in range(0, len(curr_set_list)):
    #             if curr_set_list[k][j] == '1':
    #                 final_opt_pattern = final_opt_pattern + '1'
    #                 flag_added = 1
    #                 break
    #             elif curr_set_list[k][j] == '0':
    #                 final_opt_pattern = final_opt_pattern + '0'
    #                 flag_added = 1
    #                 break
    #         if flag_added == 0:
    #             final_opt_pattern = final_opt_pattern + 'X'
            
    #     if final_opt_pattern not in final_opt_list:
    #         final_opt_list.append(final_opt_pattern)

    #     #print(final_opt_pattern)

    
    # binary ='01'
    # final_alt_vector = []
    # for i in range(0, len(final_opt_list)):
    #     #print(i)
    #     #print(patt_set_list[i])
    #     #print(final_opt_list[i])
    #     #print(patt_set_net_list[i])

    #     pattern_str = final_opt_list[i]
    #     vector_w_unk_cnt = pattern_str.count("X")

    #     #creating random pattern
    #     while(vector_w_unk_cnt !=0 ):
    #         pattern_str = pattern_str.replace('X', random.choice(binary), 1)
    #         vector_w_unk_cnt = vector_w_unk_cnt - 1
        
    #     if pattern_str not in final_alt_vector:
    #         final_alt_vector.append(pattern_str)

    # #print("Total vector with alt set : ", len(final_alt_vector))

    # #print("Combined base with alt patterns")
    # #combined_patterns = base_patterns + final_alt_vector
    

    simple_patt_net_set_dict = {}
    for key, value in patt_net_set_dict.items():
        for patt_net_set in value:
            #print("#####", key, patt_net_set[0], patt_net_set[1])
            if key in simple_patt_net_set_dict.keys():
                simple_patt_net_set_dict[key].append([patt_net_set[0], patt_net_set[1][1:]])
            else:
                simple_patt_net_set_dict[key] = [[patt_net_set[0], patt_net_set[1][1:]]]

    # print("Simplified")
    # for key, value in simple_patt_net_set_dict.items():
    #     for patt_net_set in value:
    #         print("#####", key, patt_net_set[0], patt_net_set[1])


    
    # print("- - - - - - - - - - - ")
    # sorted_key = []
    # for k in sorted(simple_patt_net_set_dict, key=lambda k: len(simple_patt_net_set_dict[k]), reverse=False):
    #     sorted_key.append(k)
    #     print(k, simple_patt_net_set_dict[k])
        

    merged_patt_net_dict = {}
    for key, value in simple_patt_net_set_dict.items():
        patt_comb_net_list = value              # list from first approach
        for i in range(0, len(patt_comb_net_list)):
            curr_set = patt_comb_net_list[i]
            curr_patt = curr_set[0]
            curr_net_comb = curr_set[1]
                
            if curr_patt in merged_patt_net_dict.keys():
                #for net_comb in curr_set[1]:
                if curr_net_comb not in merged_patt_net_dict[curr_patt]:
                    merged_patt_net_dict[curr_patt] = list(set(merged_patt_net_dict[curr_patt] + curr_net_comb))
            else:
                merged_patt_net_dict[curr_patt] = curr_net_comb

    sorted_key = []
    for k in sorted(merged_patt_net_dict, key=lambda k: len(merged_patt_net_dict[k]), reverse=False):
        sorted_key.append(k)
        
    # print("########")
    # for key in sorted_key:
    #     print(key, merged_patt_net_dict[key])
    # print("########")
    # print("- - - - - - - - - - - ")
    # for i in range(0, len(sorted_key)):
    #     key = sorted_key[i]
    #     curr_patt_nets = patt_net_dict[key]
    #     print(key, curr_patt_nets)

    opt_patt_net_dict = {}
    subset_count = 0
    for i in range(0, len(sorted_key)):
        key = sorted_key[i]
        curr_patt_nets = merged_patt_net_dict[key]
        flag = 0
        for j in range(i+1, len(sorted_key)-1):
            comapre_key = sorted_key[j]
            compare_patt_nets = merged_patt_net_dict[comapre_key]
            if(set(curr_patt_nets).issubset(set(compare_patt_nets))):
                # print("subset", curr_patt_nets, compare_patt_nets)
                flag = 1
        if flag == 0:
            opt_patt_net_dict[key] = curr_patt_nets
        else:
            subset_count = subset_count + 1

    # print("- - - - -reduced patterns in attempt 1 - - - - - - ")
    # for k in sorted(opt_patt_net_dict, key=lambda k: len(opt_patt_net_dict[k]), reverse=True):
    #     print(k, opt_patt_net_dict[k])

    # print("Attempt 1: ", subset_count)

    #remove / reorder PI order 
    # print("remove / reorder PI order ")
    # print(opt_patt_net_dict)
    # not requried as patterns are already ordered
    # opt_patt_net_dict = reorder_dict_pi(opt_patt_net_dict, tmax_pi_list_org, cast_sorted_tmax_columns)
    # print(opt_patt_net_dict)
    

    return alt_pattern_dict, patt_net_set_dict, opt_patt_net_dict

def get_conflict_analysis(patterns_df, cast_sorted_tmax_columns):
    input_size = len(patterns_df.at[patterns_df.index[0], 'OriginalPatternOrdered'])


    temp_patt_list = []
    for i in range(0, len(patterns_df)):
        curr_patt = patterns_df.at[patterns_df.index[i], 'OriginalPatternOrdered']
        curr_patt_list = list(curr_patt)
        temp_patt_list.append(curr_patt_list)

    # print(len(temp_patt_list[0]))
    # print(len(cast_sorted_tmax_columns))
    pattern_bit_df = pd.DataFrame(temp_patt_list, columns=cast_sorted_tmax_columns)


    # pattern_bit_df = patterns_df["original_patt"].str.split("", expand = True)

    # #deleting extra last column
    # pattern_bit_df = pattern_bit_df.iloc[:, :-1]
    # #deleting extra first column
    # pattern_bit_df = pattern_bit_df.iloc[:, 1:]
    
    # #pattern_bit_df.columns = column_names
    
    if(debug):
        pattern_bit__file = dumpDir + "bit_file.csv"
        #print(pattern_bit_df)
        pattern_bit_df.to_csv(pattern_bit__file, index=False)

    if(debug):
        print("---------CONFLICT ANLYSIS---------")
    
    dict_list = []
    #for bit_index in range(1, input_size+1):
    input_size = len(pattern_bit_df.columns)
    for bit_index in range(0, input_size):
        curr_column = pattern_bit_df.columns[bit_index]
        #print("------", bit_index, curr_column)
        #print(pattern_bit_df[curr_column].value_counts().to_dict())
        dict_list.append(pattern_bit_df[curr_column].value_counts().to_dict())        

    freq_df = pd.DataFrame(dict_list)
    #freq_df.fillna(0, inplace=True)
    freq_df['eclud_sqrt']=np.sqrt((freq_df['0']**2 + freq_df['1']**2))

    freq_df['PI'] = list(pattern_bit_df.columns)

    freq_df = freq_df.sort_values('eclud_sqrt', ascending=False)
    
    conflict_df_file = dumpDir + "/conflict_df.csv"
    freq_df.to_csv(conflict_df_file, index=True)

#check hit count with others and keeps pattern in other dictionaries as well.
#to keep track which patterns match for a real pattern in random_patt_set

# real_patterns -> pass it as list
# patterns_df -> structure containing all patterns

#order for alternate patterns and original pattern is based on hamming distance
#1. original patterns are obtained and sorted by avg hamming distance
#2. alternate are obtaiend based on this order
def get_hit_count(curr_patt_idx, real_patt_list, patterns_df, alt_pattern, total_alt_patterns):
    #List of real patterns in real_patt_list
    #to keep track of hit count a real pattern in random_patt_set
    real_patt_hit_count = [0]*len(real_patt_list) 
    #to keep track of hit count index with a real pattern in random_patt_set
    real_patt_hit_patt_idx_global = []
    real_patt_alt_hit_patt_idx_global = []
    for real_patt_index in range(0, len(real_patt_list)):
        real_patt = real_patt_list[real_patt_index]
        real_patt_hit_by_patt_idx = []
        real_patt_hit_by_alt_patt_idx = []
        alt_patt_match_flag = 0
        #checking match with remaining test patterns 
        for j in range(0, len(patterns_df)):
            #new pattern always work for current edge, hence skipping it 
            if(j != curr_patt_idx):
                patt_2_str = patterns_df.at[patterns_df.index[j], 'OriginalPatternOrdered']
                patt_match_flag = check_patt_match(real_patt, patt_2_str)
                
                #as patterns are matching same pattern can be used for two rare edges
                #increase hit count based on conditions
                if(patt_match_flag == 1):
                    real_patt_hit_count[real_patt_index] = real_patt_hit_count[real_patt_index] + 1
                    real_patt_hit_by_patt_idx.append(j)
                    #no need to check hit with respective alternate pattern at j
                    continue

                #check for match in alternate pattern set at same index j
                if altPattFlag and total_alt_patterns != 0 and patt_match_flag == 0:
                    #getting all alternate patterns for index j
                    alt_patts_j = alt_pattern[j]
                    #checking if no alternate patterns are available or not
                    if(alt_patts_j[0] != 'NA'):
                        #iterating through all alternate patterns
                        #check for hit with alternate patterns
                        for js_alt_patt_index in range(0, len(alt_patts_j)):
                            js_alt_patt = alt_patts_j[js_alt_patt_index]
                            alt_patt_match_flag = check_patt_match(real_patt, js_alt_patt)
                            if alt_patt_match_flag == 1:
                                real_patt_hit_count[real_patt_index] = real_patt_hit_count[real_patt_index] + 1
                                #normal index added 
                                real_patt_hit_by_patt_idx.append(j)
                                real_patt_hit_by_alt_patt_idx.append(j)
                                #no need to check other alternate patterns once at least on patterns is matched
                                break

                
        
        real_patt_hit_patt_idx_global.append(real_patt_hit_by_patt_idx)
        #to keep track which of the alternate j index hits real pattern
        # to further keep track of which actual alternate pattern hits
        # need to keep track of js_alt_patt_index
        real_patt_alt_hit_patt_idx_global.append(real_patt_hit_by_alt_patt_idx)
        
    #mergin hit count + hit index + respectve real pattern 
    merged_hit_lists = zip(real_patt_hit_count, real_patt_hit_patt_idx_global, real_patt_alt_hit_patt_idx_global, real_patt_list)   
    #sorting based on hit count max to min i.e. real_patt_hit_count
    merged_hit_lists = sorted(merged_hit_lists ,  key = lambda t: t[0], reverse=True)

    return merged_hit_lists

def get_unique_random_patterns(curr_patt_idx, vector_w_unk, pattern_dict):

    binary = "01"
    unk_cnt = vector_w_unk.count("X")
    
    #generating all possible test vectors systematically
    if unk_cnt < 9 :

        binary = "01"
        unk_cnt = vector_w_unk.count("X")
        
        #generating all possible test vectors
        if unk_cnt < 9 :
            possible_patt = 2 ** unk_cnt 
        else:
            possible_patt = 2 * ndetect

        vector_w_unk_cnt = vector_w_unk.count("X")

        random_patt_list =[]

        if curr_patt_idx in pattern_dict:
            possible_patt = possible_patt - len(pattern_dict[curr_patt_idx])
        
        list_of_unk = [i for i, ltr in enumerate(vector_w_unk) if ltr == 'X']
        for data in itertools.product(range(2), repeat=len(list_of_unk)):
            # while(possible_patt > 0):
            if(possible_patt <= 0):
                break
            #generating variations for pattern [i]
            pattern_str = vector_w_unk
            vector_w_unk_cnt = pattern_str.count("X")

            #creating systmetic pattern
            for i in range(0, len(data)):
                replace_chr = data[i]
                pattern_str = pattern_str.replace('X', str(replace_chr), 1)
            
            if ((pattern_str not in random_patt_list)):
                if(curr_patt_idx in pattern_dict and pattern_str in pattern_dict[curr_patt_idx]):
                    continue
                random_patt_list.append(pattern_str)
                possible_patt = possible_patt - 1          

        return random_patt_list

    #otherwise look for randonmness parameter to decide how to get patterns
    if("-1" in randomness or "0" not in randomness):

        if("-1" not in randomness):
            random.seed(int(randomness))

        #generating all possible test vectors
        if unk_cnt < 9 :
            possible_patt = 2 ** unk_cnt 
        else:
            possible_patt = 2 * ndetect

        random_patt_list =[]
        
        if curr_patt_idx in pattern_dict:
            possible_patt = possible_patt - len(pattern_dict[curr_patt_idx])
        while(possible_patt > 0):
            #generating variations for pattern [i]
            pattern_str = vector_w_unk
            vector_w_unk_cnt = pattern_str.count("X")

            #creating random pattern
            while(vector_w_unk_cnt !=0 ):
                pattern_str = pattern_str.replace('X', random.choice(binary), 1)
                vector_w_unk_cnt = vector_w_unk_cnt - 1
            
            #no repeateed pattern 
            #also it should not be already present in current index dictionary
            if ((pattern_str not in random_patt_list)):
                if(curr_patt_idx in pattern_dict and pattern_str in pattern_dict[curr_patt_idx]):
                    continue
                random_patt_list.append(pattern_str)
                possible_patt = possible_patt - 1
        
    else:
        binary = "01"
        unk_cnt = vector_w_unk.count("X")
        
        #generating all possible test vectors
        if unk_cnt < 9 :
            possible_patt = 2 ** unk_cnt 
        else:
            possible_patt = 2 * ndetect

        vector_w_unk_cnt = vector_w_unk.count("X")

        random_patt_list =[]

        if curr_patt_idx in pattern_dict:
            possible_patt = possible_patt - len(pattern_dict[curr_patt_idx])
        
        list_of_unk = [i for i, ltr in enumerate(vector_w_unk) if ltr == 'X']
        for data in itertools.product(range(2), repeat=len(list_of_unk)):
            # while(possible_patt > 0):
            if(possible_patt <= 0):
                break
            #generating variations for pattern [i]
            pattern_str = vector_w_unk
            vector_w_unk_cnt = pattern_str.count("X")

            #creating systmetic pattern
            for i in range(0, len(data)):
                replace_chr = data[i]
                pattern_str = pattern_str.replace('X', str(replace_chr), 1)
            
            if ((pattern_str not in random_patt_list)):
                if(curr_patt_idx in pattern_dict and pattern_str in pattern_dict[curr_patt_idx]):
                    continue
                random_patt_list.append(pattern_str)
                possible_patt = possible_patt - 1                            

        
    return random_patt_list

def get_optimized_patterns_wip(patterns_df, alt_pattern, total_alt_patterns):
    #pattern optimization
    duplicate_pattern = []
    final_patterns = []
    final_patterns_hit_count = {}
    final_patterns_alt_hit_count = {}
    final_patterns_hit_count_orig_patt_indx = {}
    binary = "10"
    pattern_hit_count = [0] * len(patterns_df)
    pattern_dict = {}
    pattern_dict_patt_hit_counter = {}
    pattern_dict_duplicate = {}
    pattern_match_count = [0] * len(patterns_df)
    pattern_ndetect_count = [0] * len(patterns_df)

    for i in range(0, len(patterns_df)):
        if(verboseFlag and debug):
            print("--------------------------------", i)
        patt_pool = []
        pattern_str = patterns_df.at[patterns_df.index[i], 'OriginalPatternOrdered']
        original_pattern = pattern_str
        patt_unk_cnt = pattern_str.count("X")
        less_unk = 0
        min_1_match_flag = 0

        #if already hit count is matched no need to look for more patterns
        #might miss patterns that perform best w.r.t. current pattern if bucket is already full
        if pattern_ndetect_count[i] == ndetect:
            if(verboseFlag and debug):
                print("*** Bucket for pattern %d is already full.", i)
            continue
        
        #create patterns for 2 variations 
        # 1. number of unknowns are less than N-detect number
        # 2. number of unknowns are sufficient

        if(patt_unk_cnt < nxt_pwr_2):
            if(verboseFlag and debug):
                print("Number of 'X' to generate N-detect patterns is less.Duplicate remaining patterns.\n")
            duplicate_pattern.append(i)
            possible_patt = 2 ** patt_unk_cnt
            less_unk = 1
            random_patt_set = []

            patt_unk_cnt = pattern_str.count("X")

            if(pattern_ndetect_count[i] == possible_patt):
                #already all possible patterns present in pattern dictionary
                continue

            #creating multiple pattern not possible
            #it is an unique pattern
            if patt_unk_cnt == 0:
                real_patt = pattern_str
                isPattAdded = 0
                #check if entry for current index already exists?
                if((i in pattern_dict)): 
                    #check if pattern already exists in current indexed pattern dictionary
                    if(real_patt in pattern_dict[i]):
                        continue;
                    #already index is present but pattern is new
                    else:
                        #check hit count with others and keeps pattern in other dictionaries as well.
                        real_patt_list = [real_patt]
                        merged_hit_lists = get_hit_count(i, real_patt_list, patterns_df, alt_pattern, total_alt_patterns)
                        
                        #as number of 'X' is less than sqrt of n-detect, consider all patterns and 
                        #add till N-detect matched/patterns over
                        patt_unk_cnt = original_pattern.count("X")
                        possible_patt = 2 ** patt_unk_cnt
                        for hit_count, hit_patt_idx, hit_alt_patt_idx, real_patt in merged_hit_lists:
                            #checking if pattern_dict bucket capacity
                            #Here, only one real pattern will get added if possible in pattern dict [i]
                            if pattern_ndetect_count[i] < ndetect:
                                #if dictionary index is already created and if patt is already preesent do not add pattern
                                # if((i in pattern_dict)): 
                                #     if(real_patt in pattern_dict[i]):
                                #         continue;
                                #     #already index is present but pattern is new
                                #     else:
                                #         pattern_dict[i].append(real_patt)
                                #         pattern_ndetect_count[i] = pattern_ndetect_count[i] + 1
                                #         if(real_patt not in final_patterns):
                                #             final_patterns.append(real_patt)
                                #             final_patterns_hit_count[real_patt] = hit_patt_idx
                                #             final_patterns_hit_count_orig_patt_indx[real_patt] = i
                                # else:
                                pattern_dict[i].append(real_patt)
                                pattern_ndetect_count[i] = pattern_ndetect_count[i] + 1
                                isPattAdded = 1
                                if(real_patt not in final_patterns):
                                    final_patterns.append(real_patt)
                                    final_patterns_hit_count[real_patt] = hit_patt_idx
                                    final_patterns_alt_hit_count[real_patt] = hit_alt_patt_idx
                                    final_patterns_hit_count_orig_patt_indx[real_patt] = i
                                    #update it with respective shuffled/sorted index
                                    #final_patterns_hit_count_orig_patt_indx[real_patt] = patterns_df.at[patterns_df.index[i], 'hamm_avg_sort']                                            
                            else:
                                if(verboseFlag):
                                    print("Pattern bucket[i] already full for unique case if part.")

                            #for matched pattern -> add it to each of the individual dictinoaries for which it 
                            #matched present in random_patt_set_hit_patt_idx   
                            '''
                            skipping this as here we are not adding patterns to [j]
                            for matched_index in hit_patt_idx:                                                                                                            
                                if pattern_ndetect_count[matched_index] < ndetect:
                                    if((matched_index in pattern_dict)): 
                                        if(real_patt in pattern_dict[matched_index]):
                                            continue;
                                        #already index is present but pattern is new
                                        else:
                                            pattern_dict[matched_index].append(real_patt)
                                            pattern_ndetect_count[matched_index] = pattern_ndetect_count[matched_index] + 1
                                            if(real_patt not in final_patterns):
                                                final_patterns.append(real_patt)
                                                #final_patterns_hit_count[real_patt] = hit_patt_idx
                                    else:
                                        pattern_dict[matched_index] = [real_patt]
                                        pattern_ndetect_count[matched_index] = pattern_ndetect_count[matched_index] + 1
                                        if(real_patt not in final_patterns):
                                            final_patterns.append(real_patt)
                                            #final_patterns_hit_count[real_patt] = hit_patt_idx
                                else:
                                    print("Pattern bucket[j] already full. It can be further optimized by replacing low hit with higher hit in future", i, matched_index)

                            if(pattern_ndetect_count[i] == possible_patt or pattern_ndetect_count[i] == ndetect):
                                #all possible patterns present in pattern dictionary
                                break
                            '''
                            #pattern_dict[i].append(real_patt)
                            #pattern_ndetect_count[i] = pattern_ndetect_count[i] + 1
                            #if(real_patt not in final_patterns):
                            #    final_patterns.append(real_patt)
                            #    final_patterns_hit_count[real_patt] = [-1]
                #Adding for the first time
                else:
                    #to keep track which patterns match for each pattern in random_patt_set
                    real_patt_list = [real_patt]
                    merged_hit_lists = get_hit_count(i, real_patt_list, patterns_df, alt_pattern, total_alt_patterns)
                    
                    #as number of 'X' is less than sqrt of n-detect
                    #consider all patterns and add till N-detect matched/patterns over
                    patt_unk_cnt = original_pattern.count("X")
                    possible_patt = 2 ** patt_unk_cnt
                    for hit_count, hit_patt_idx, hit_alt_patt_idx, real_patt in merged_hit_lists:
                        if pattern_ndetect_count[i] < ndetect:
                            #if dictionary index is already created and if patt is already preesent do not add pattern
                            # if((i in pattern_dict)): 
                            #     if(real_patt in pattern_dict[i]):
                            #         continue;
                            #     #already index is present but pattern is new
                            #     else:
                            #         pattern_dict[i].append(real_patt)
                            #         pattern_ndetect_count[i] = pattern_ndetect_count[i] + 1
                            #         if(real_patt not in final_patterns):
                            #             final_patterns.append(real_patt)
                            #             final_patterns_hit_count[real_patt] = hit_patt_idx
                            #             final_patterns_hit_count_orig_patt_indx[real_patt] = i
                            # else:
                            pattern_dict[i] = [real_patt]
                            pattern_ndetect_count[i] = pattern_ndetect_count[i] + 1
                            isPattAdded = 1
                            if(real_patt not in final_patterns):
                                final_patterns.append(real_patt)
                                final_patterns_hit_count[real_patt] = hit_patt_idx
                                final_patterns_alt_hit_count[real_patt] = hit_alt_patt_idx
                                final_patterns_hit_count_orig_patt_indx[real_patt] = i
                                #update it with respective to shuffled/sorted index
                                #final_patterns_hit_count_orig_patt_indx[real_patt] = patterns_df.at[patterns_df.index[i], 'hamm_avg_sort']                                            
                        else:
                            if(verboseFlag):
                                print("Pattern bucket[i] already full for unique case else part.")

                        #for matched pattern -> add it to each of the individual dictinoaries for which it 
                        #matched present in random_patt_set_hit_patt_idx   
                        '''
                        not adding the pattern in [j]
                        for matched_index in hit_patt_idx:                                                                                                            
                            if pattern_ndetect_count[matched_index] < ndetect:
                                if((matched_index in pattern_dict)): 
                                    if(real_patt in pattern_dict[matched_index]):
                                        continue;
                                    #already index is present but pattern is new
                                    else:
                                        pattern_dict[matched_index].append(real_patt)
                                        pattern_ndetect_count[matched_index] = pattern_ndetect_count[matched_index] + 1
                                        if(real_patt not in final_patterns):
                                            final_patterns.append(real_patt)
                                            #final_patterns_hit_count[real_patt] = hit_patt_idx
                                else:
                                    pattern_dict[matched_index] = [real_patt]
                                    pattern_ndetect_count[matched_index] = pattern_ndetect_count[matched_index] + 1
                                    if(real_patt not in final_patterns):
                                        final_patterns.append(real_patt)
                                        #final_patterns_hit_count[real_patt] = hit_patt_idx
                            else:
                                print("Pattern bucket[j] already full. It can be further optimized by replacing low hit with higher hit in future", i, matched_index)

                        if(pattern_ndetect_count[i] == possible_patt or pattern_ndetect_count[i] == ndetect):
                            #all possible patterns present in pattern dictionary
                            break
                        '''
                        #check hit count with others and keeps pattern in other dictionaries as well.
                        # pattern_dict[i] = [real_patt]
                        # pattern_ndetect_count[i] = pattern_ndetect_count[i] + 1
                        # if(real_patt not in final_patterns):
                        #     final_patterns.append(real_patt)
                        #     final_patterns_hit_count[real_patt] = [-1]
                
                #once patterns are added in pattern_dict[i] add same in pattern dict of j where patterns match
                #merged_hit_lists -> will have hit list for only one pattern for unique case
                if isPattAdded == 1:
                    for hit_count, hit_patt_idx, hit_alt_patt_idx, real_patt in merged_hit_lists:
                        #grabbing all matched indices for current unique real pattern
                        for matched_index in hit_patt_idx:
                            #checking if bucket of matched pattern index is empty or not?                                                                                                             
                            if pattern_ndetect_count[matched_index] < ndetect:
                                if((matched_index in pattern_dict)): 
                                    if(real_patt in pattern_dict[matched_index]):
                                        continue;
                                    #already index is present but pattern is new
                                    else:
                                        pattern_dict[matched_index].append(real_patt)
                                        pattern_ndetect_count[matched_index] = pattern_ndetect_count[matched_index] + 1
                                        #not required as pattern is already added while adding it in pattern dict[i]
                                        #if(real_patt not in final_patterns):
                                        #    final_patterns.append(real_patt)
                                        #    #final_patterns_hit_count[real_patt] = hit_patt_idx
                                else:
                                    pattern_dict[matched_index] = [real_patt]
                                    pattern_ndetect_count[matched_index] = pattern_ndetect_count[matched_index] + 1
                                    #not required as pattern is already added while adding it in pattern dict[i]
                                    #if(real_patt not in final_patterns):
                                    #    final_patterns.append(real_patt)
                                    #    #final_patterns_hit_count[real_patt] = hit_patt_idx
                            elif(verboseFlag and debug):
                                print("Pattern bucket[j] already full. It can be further optimized by replacing low hit with higher hit in future")
                                print("Filled %d while working on %d.", matched_index, i)
                #else:
                #    print("Pattern bucket[i] already full. It can be further optimized by replacing low hit with higher hit in future")
                #print("INFO: Pattern with no known. Unique pattern")
            else:
                isPattAdded = 0
                #create all possible patterns 
                random_patt_list = get_unique_random_patterns(i, original_pattern, pattern_dict)
                
                #find hit count with other test vectors
                #checking if randomly created pattern for vector [i] matches with any of the remaining test vectors

                real_patt_list = random_patt_list
                merged_hit_lists = get_hit_count(i, real_patt_list, patterns_df, alt_pattern, total_alt_patterns)

                #as number of 'X' is less than sqrt of n-detect, consider all patterns and add till N-detect matched/patterns over
                patt_unk_cnt = original_pattern.count("X")
                possible_patt = 2 ** patt_unk_cnt

                #to keep track of how many pattern from top added in pattern dict []
                addedPattern_counter = 0
                for hit_count, hit_patt_idx, hit_alt_patt_idx, real_patt in merged_hit_lists:
                    if pattern_ndetect_count[i] < ndetect:
                        #if dictionary index is already created and if patt is already preesent do not add pattern
                        if((i in pattern_dict)): 
                            if(real_patt in pattern_dict[i]):
                                continue;
                            #already index is present but pattern is new
                            else:
                                pattern_dict[i].append(real_patt)
                                pattern_ndetect_count[i] = pattern_ndetect_count[i] + 1
                                isPattAdded = 1
                                addedPattern_counter = addedPattern_counter + 1

                                if(real_patt not in final_patterns):
                                    final_patterns.append(real_patt)
                                    final_patterns_hit_count[real_patt] = hit_patt_idx
                                    final_patterns_alt_hit_count[real_patt] = hit_alt_patt_idx
                                    final_patterns_hit_count_orig_patt_indx[real_patt] = i
                                    #update it with respective index sorted
                                    #final_patterns_hit_count_orig_patt_indx[real_patt] = patterns_df.at[patterns_df.index[i], 'hamm_avg_sort']                                            
                        #adding pattern for first time for pattern bucket at i
                        else:
                            pattern_dict[i] = [real_patt]
                            pattern_ndetect_count[i] = pattern_ndetect_count[i] + 1
                            isPattAdded = 1
                            addedPattern_counter = addedPattern_counter + 1

                            if(real_patt not in final_patterns):
                                final_patterns.append(real_patt)
                                final_patterns_hit_count[real_patt] = hit_patt_idx
                                final_patterns_alt_hit_count[real_patt] = hit_alt_patt_idx
                                final_patterns_hit_count_orig_patt_indx[real_patt] = i
                                #update it with respective index sorted
                                #final_patterns_hit_count_orig_patt_indx[real_patt] = patterns_df.at[patterns_df.index[i], 'hamm_avg_sort']                                            
                    else:
                        print("Pattern bucket[i] already full for 'X' < sqrt of N-detect.")

                    #for matched pattern -> add it to each of the individual dictinoaries for which it 
                    #matched present in random_patt_set_hit_patt_idx   
                    '''
                    for matched_index in hit_patt_idx:                                                                                                            
                        if pattern_ndetect_count[matched_index] < ndetect:
                            if((matched_index in pattern_dict)): 
                                if(real_patt in pattern_dict[matched_index]):
                                    continue;
                                #already index is present but pattern is new
                                else:
                                    pattern_dict[matched_index].append(real_patt)
                                    pattern_ndetect_count[matched_index] = pattern_ndetect_count[matched_index] + 1
                                    if(real_patt not in final_patterns):
                                        final_patterns.append(real_patt)
                                        #final_patterns_hit_count[real_patt] = hit_patt_idx
                            else:
                                pattern_dict[matched_index] = [real_patt]
                                pattern_ndetect_count[matched_index] = pattern_ndetect_count[matched_index] + 1
                                if(real_patt not in final_patterns):
                                    final_patterns.append(real_patt)
                                    #final_patterns_hit_count[real_patt] = hit_patt_idx
                        else:
                            print("Pattern bucket[j] already full. It can be further optimized by replacing low hit with higher hit in future", i, matched_index)
                    '''
                    #Terminating condition when all possible patterns are present in pattern dictionary
                    if(pattern_ndetect_count[i] == possible_patt or pattern_ndetect_count[i] == ndetect):
                        #all possible patterns present in pattern dictionary
                        break
                    
                #once patterns are added in pattern_dict[i] add same in pattern dict of j where patterns match
                #merged_hit_lists -> will have hit list for only one pattern for unique case
                if isPattAdded == 1:
                    for hit_count, hit_patt_idx, hit_alt_patt_idx, real_patt in merged_hit_lists:
                        addedPattern_counter = addedPattern_counter - 1
                        #grabbing all matched indices for current unique real pattern
                        for matched_index in hit_patt_idx:
                            #checking if bucket of matched pattern index is empty or not?                                                                                                             
                            if pattern_ndetect_count[matched_index] < ndetect:
                                if((matched_index in pattern_dict)): 
                                    if(real_patt in pattern_dict[matched_index]):
                                        continue;
                                    #already index is present but pattern is new
                                    else:
                                        pattern_dict[matched_index].append(real_patt)
                                        pattern_ndetect_count[matched_index] = pattern_ndetect_count[matched_index] + 1
                                        #not required as pattern is already added while adding it in pattern dict[i]
                                        #if(real_patt not in final_patterns):
                                        #    final_patterns.append(real_patt)
                                        #    #final_patterns_hit_count[real_patt] = hit_patt_idx
                                else:
                                    pattern_dict[matched_index] = [real_patt]
                                    pattern_ndetect_count[matched_index] = pattern_ndetect_count[matched_index] + 1
                                    #not required as pattern is already added while adding it in pattern dict[i]
                                    #if(real_patt not in final_patterns):
                                    #    final_patterns.append(real_patt)
                                    #    #final_patterns_hit_count[real_patt] = hit_patt_idx
                            elif(verboseFlag and debug):
                                print("Pattern bucket[j] already full. It can be further optimized by replacing low hit with higher hit in future")
                                print("Filled %d while working on %d.", matched_index, i)
                        #considering only those number of patterns that are inserted in pattern dict [i]
                        if addedPattern_counter == 0:
                            break

        #create all possible patterns if # of 'X' < 9
        #Here, obtaining all patterns for above condition as [2 ^ # of 'X'] is small number
        #itearting till possible pattern count is set to 0

        #Here, instead of randomly creating all pattern they are created systematically 
        elif(patt_unk_cnt < 9):
            random_patt_set =[]
            pattern_str = original_pattern
            #create all possible patterns if # of 'X' < 9
            #Here, obtaining all patterns for above condition as [2 ^ # of 'X'] is small number
            #itearting till possible pattern count is set to 0

            #Here, instead of randomly creating all pattern create systematically 
            isPattAdded = 0

            #Generating all possible case 3: 2^([nxt_pwr_2 < # of 'X' < 9 ]) patterns
            random_patt_list = get_unique_random_patterns(i, original_pattern, pattern_dict)

            #find hit count with other test vectors
            #checking if randomly created pattern for vector [i] matches with any of the remaining test vectors
            
            #getting hit count for all case 3 patterns
            real_patt_list = random_patt_list
            merged_hit_lists = get_hit_count(i, real_patt_list, patterns_df, alt_pattern, total_alt_patterns)

            addedPattern_counter = 0

            #as number of 'X' is greater than sqrt of n-detect, consider max hit pattern and add that pattern
            if i in pattern_dict:
                #adding till count matches N-detect
                for hit_count, hit_patt_idx, hit_alt_patt_idx, real_patt in merged_hit_lists:
                    if pattern_ndetect_count[i] == ndetect:
                        break
                    elif real_patt not in pattern_dict[i]:
                        pattern_dict[i].append(real_patt)
                        pattern_ndetect_count[i] = pattern_ndetect_count[i] + 1
                        isPattAdded = 1
                        addedPattern_counter = addedPattern_counter + 1
                        if(real_patt not in final_patterns):
                            final_patterns.append(real_patt)
                            final_patterns_hit_count[real_patt] = hit_patt_idx
                            final_patterns_alt_hit_count[real_patt] = hit_alt_patt_idx
                            final_patterns_hit_count_orig_patt_indx[real_patt] = i
                            #update it with respective index sorted
                            #final_patterns_hit_count_orig_patt_indx[real_patt] = patterns_df.at[patterns_df.index[i], 'hamm_avg_sort']                                            
            else:
                #adding till count matches N-detect
                temp_counter = 0
                for hit_count, hit_patt_idx, hit_alt_patt_idx, real_patt in merged_hit_lists:
                    #adding for first time in pattern dict[i]
                    if temp_counter == 0:
                        pattern_dict[i] = [real_patt]
                        pattern_ndetect_count[i] = pattern_ndetect_count[i] + 1
                        isPattAdded = 1
                        addedPattern_counter = addedPattern_counter + 1
                        temp_counter = temp_counter + 1
                        if(real_patt not in final_patterns):
                            final_patterns.append(real_patt)
                            final_patterns_hit_count[real_patt] = hit_patt_idx
                            final_patterns_alt_hit_count[real_patt] = hit_alt_patt_idx
                            final_patterns_hit_count_orig_patt_indx[real_patt] = i
                            #update it with respective index
                            #final_patterns_hit_count_orig_patt_indx[real_patt] = patterns_df.at[patterns_df.index[i], 'hamm_avg_sort']                                            
                    else:
                        if pattern_ndetect_count[i] == ndetect:
                            break
                        elif real_patt not in pattern_dict[i]:
                            pattern_dict[i].append(real_patt)
                            pattern_ndetect_count[i] = pattern_ndetect_count[i] + 1
                            isPattAdded = 1
                            addedPattern_counter = addedPattern_counter + 1
                            if(real_patt not in final_patterns):
                                final_patterns.append(real_patt)
                                final_patterns_hit_count[real_patt] = hit_patt_idx
                                final_patterns_alt_hit_count[real_patt] = hit_alt_patt_idx
                                final_patterns_hit_count_orig_patt_indx[real_patt] = i
                                #update it with respective index sorted
                                #final_patterns_hit_count_orig_patt_indx[real_patt] = patterns_df.at[patterns_df.index[i], 'hamm_avg_sort']                                            

            #If patterns are added corresponding hit patterns are added in respective bucket                        
            # addedPattern_counter will keep track of iter till which patterns were added in [i]
            if isPattAdded == 1:
                for hit_count, hit_patt_idx, hit_alt_patt_idx, real_patt in merged_hit_lists:
                    addedPattern_counter = addedPattern_counter - 1
                    #grabbing all matched indices for current unique real pattern
                    for matched_index in hit_patt_idx:
                        #checking if bucket of matched pattern index is empty or not?                                                                                                             
                        if pattern_ndetect_count[matched_index] < ndetect:
                            if((matched_index in pattern_dict)): 
                                if(real_patt in pattern_dict[matched_index]):
                                    continue;
                                #already index is present but pattern is new
                                else:
                                    pattern_dict[matched_index].append(real_patt)
                                    pattern_ndetect_count[matched_index] = pattern_ndetect_count[matched_index] + 1
                                    #not required as pattern is already added while adding it in pattern dict[i]
                                    #if(real_patt not in final_patterns):
                                    #    final_patterns.append(real_patt)
                                    #    #final_patterns_hit_count[real_patt] = hit_patt_idx
                            else:
                                pattern_dict[matched_index] = [real_patt]
                                pattern_ndetect_count[matched_index] = pattern_ndetect_count[matched_index] + 1
                                #not required as pattern is already added while adding it in pattern dict[i]
                                #if(real_patt not in final_patterns):
                                #    final_patterns.append(real_patt)
                                #    #final_patterns_hit_count[real_patt] = hit_patt_idx
                        elif(verboseFlag and debug):
                            print("Pattern bucket[j] already full. It can be further optimized by replacing low hit with higher hit in future")
                            print("Filled %d while working on %d.", matched_index, i)
                    #considering only those number of patterns that are inserted in pattern dict [i]
                    if addedPattern_counter == 0:
                        break

        else:
            #this loops needs to be updated as per user requirement
            #global_try_count is number of attempts to get max hit count above given threshold
            #currently it is set to 10
            global_try_count = 0

            #Iterating till N-detect count is not matched as number of possible patterns are [2^(#'X') > N-detect]
            while(pattern_ndetect_count[i] < ndetect):
                global_try_count = global_try_count + 1
                possible_patt = 2 * ndetect
                random_patt_set =[]
                pattern_str = original_pattern
                
                isPattAdded = 0
                #randomly create N*2 patterns and take max hit from it
                random_patt_list = get_unique_random_patterns(i, original_pattern, pattern_dict)

                #find hit count with other test vectors
                #checking if randomly created pattern for vector [i] matches with any of the remaining test vectors
                real_patt_list = random_patt_list
                merged_hit_lists = get_hit_count(i, real_patt_list, patterns_df, alt_pattern, total_alt_patterns)

                addedPattern_counter = 0
                #as number of 'X' is greater than sqrt of n-detect, consider max hit pattern and add that pattern
                #---if pattern_ndetect_count[i] < ndetect:

                for hit_count, hit_patt_idx, hit_alt_patt_idx, real_patt in merged_hit_lists:
                    #!!!!!!!!!!!! hard threshold of 10
                    #adding if hit count > 10
                    #if hit_count < 10:
                    #    break
                    #Not possible scenario as while creating real_pattern_set not using already used pattern
                    if ((i in pattern_dict) and (real_patt in pattern_dict[i])):
                        #pattern already present. Iterate again 
                        print("!!!!!!!!! WEIRED !!!!!!!!!")
                        break
                    #check if top pattern is already present in pattern dict of i
                    #!!!!!!!!!!! bugFix to improve runtime if yes, consider next max hit pattern
                    #not a bug as real_pattern_set does not contain any pattern that is already present for current patt dict
                    #----if pattern_ndetect_count[i] < ndetect:
                    #if dictionary index is already created and if patt is already preesent do not add pattern
                    if((i in pattern_dict)): 
                        if(real_patt in pattern_dict[i]):   #impossible case
                            continue;
                        #already index is present but pattern is new
                        else:
                            pattern_dict[i].append(real_patt)
                            pattern_ndetect_count[i] = pattern_ndetect_count[i] + 1
                            isPattAdded = 1
                            addedPattern_counter = addedPattern_counter + 1
                            if(real_patt not in final_patterns):
                                final_patterns.append(real_patt)
                                final_patterns_hit_count[real_patt] = hit_patt_idx
                                final_patterns_alt_hit_count[real_patt] = hit_alt_patt_idx
                                final_patterns_hit_count_orig_patt_indx[real_patt] = i
                                #update it with respective index sorted
                                #final_patterns_hit_count_orig_patt_indx[real_patt] = patterns_df.at[patterns_df.index[i], 'hamm_avg_sort']                                            
                    else:
                        pattern_dict[i] = [real_patt]
                        pattern_ndetect_count[i] = pattern_ndetect_count[i] + 1
                        isPattAdded = 1
                        addedPattern_counter = addedPattern_counter + 1
                        if(real_patt not in final_patterns):
                            final_patterns.append(real_patt)
                            final_patterns_hit_count[real_patt] = hit_patt_idx
                            final_patterns_alt_hit_count[real_patt] = hit_alt_patt_idx
                            final_patterns_hit_count_orig_patt_indx[real_patt] = i
                            #update it with respective index sorted
                            #final_patterns_hit_count_orig_patt_indx[real_patt] = patterns_df.at[patterns_df.index[i], 'hamm_avg_sort']                                            
                    
                    #breaking it as only max hit pattern is considered
                    if pattern_ndetect_count[i] == ndetect:
                        break

                    if isPattAdded == 1:
                        for hit_count, hit_patt_idx, hit_alt_patt_idx, real_patt in merged_hit_lists:
                            addedPattern_counter = addedPattern_counter - 1
                            #grabbing all matched indices for current unique real pattern
                            for matched_index in hit_patt_idx:
                                #checking if bucket of matched pattern index is empty or not?                                                                                                             
                                if pattern_ndetect_count[matched_index] < ndetect:
                                    if((matched_index in pattern_dict)): 
                                        if(real_patt in pattern_dict[matched_index]):
                                            continue;
                                        #already index is present but pattern is new
                                        else:
                                            pattern_dict[matched_index].append(real_patt)
                                            pattern_ndetect_count[matched_index] = pattern_ndetect_count[matched_index] + 1
                                            #not required as pattern is already added while adding it in pattern dict[i]
                                            #if(real_patt not in final_patterns):
                                            #    final_patterns.append(real_patt)
                                            #    #final_patterns_hit_count[real_patt] = hit_patt_idx
                                    else:
                                        pattern_dict[matched_index] = [real_patt]
                                        pattern_ndetect_count[matched_index] = pattern_ndetect_count[matched_index] + 1
                                        #not required as pattern is already added while adding it in pattern dict[i]
                                        #if(real_patt not in final_patterns):
                                        #    final_patterns.append(real_patt)
                                        #    #final_patterns_hit_count[real_patt] = hit_patt_idx
                                elif(verboseFlag and debug):
                                    print("Pattern bucket[j] already full. It can be further optimized by replacing low hit with higher hit in future")
                                    print("Filled %d while working on %d.", matched_index, i)
                            #considering only those number of patterns that are inserted in pattern dict [i]
                            if addedPattern_counter == 0:
                                break
                    # !!!!!!!!!! #taking just top
                    break
                # If global_try_count matched -> taking top N-detect from last  set of real_patt_set
                # Can be optimized to take best from each run but need to keep track of selected nets in each try
                # and try not to repeat top pattern in each of real_patt_set              

                #In last iteration when global_try_count == 10 if pattern is addded then
                # print("!!!!!!!!! WEIRED 2 !!!!!!!!!") gets executed and extra loop is 
                # happening. Can be avoided by keeping track of this condition and avoid one extra iteration

                if global_try_count == 10:
                    if verboseFlag and debug:
                        print("global_try_count reqached", i)
                        if pattern_ndetect_count[i] == ndetect:
                            print("but bucket for ", i, "already full")
                    #as number of 'X' is greater than sqrt of n-detect, consider max hit pattern and add that pattern
                    isPattAdded = 0
                    addedPattern_counter = 0
                    if pattern_ndetect_count[i] < ndetect:
                        for hit_count, hit_patt_idx, hit_alt_patt_idx, real_patt in merged_hit_lists:
                            #Not possible scenario as while creating real_pattern_set not using already used pattern
                            if ((i in pattern_dict) and (real_patt in pattern_dict[i])):
                                #pattern already present. Iterate again 
                                #print("!!!!!!!!! WEIRED 2 !!!!!!!!!")
                                break
                            #check if top pattern is already present in pattern dict of i
                            #!!!!!!!!!!! bugFix to improve runtime if yes, consider next max hit pattern

                            if((i in pattern_dict)): 
                                pattern_dict[i].append(real_patt)
                                pattern_ndetect_count[i] = pattern_ndetect_count[i] + 1
                                isPattAdded = 1
                                addedPattern_counter = addedPattern_counter + 1
                                if(real_patt not in final_patterns):
                                    final_patterns.append(real_patt)
                                    final_patterns_hit_count[real_patt] = hit_patt_idx
                                    final_patterns_alt_hit_count[real_patt] = hit_alt_patt_idx
                                    final_patterns_hit_count_orig_patt_indx[real_patt] = i
                                    #update it with respective index sorted
                                    #final_patterns_hit_count_orig_patt_indx[real_patt] = patterns_df.at[patterns_df.index[i], 'hamm_avg_sort']                                            
                            else:
                                pattern_dict[i] = [real_patt]
                                pattern_ndetect_count[i] = pattern_ndetect_count[i] + 1
                                isPattAdded = 1
                                addedPattern_counter = addedPattern_counter + 1
                                if(real_patt not in final_patterns):
                                    final_patterns.append(real_patt)
                                    final_patterns_hit_count[real_patt] = hit_patt_idx
                                    final_patterns_alt_hit_count[real_patt] = hit_alt_patt_idx
                                    final_patterns_hit_count_orig_patt_indx[real_patt] = i
                                    #update it with respective index sorted
                                    #final_patterns_hit_count_orig_patt_indx[real_patt] = patterns_df.at[patterns_df.index[i], 'hamm_avg_sort']                                            

                            if pattern_ndetect_count[i] == ndetect:
                                break
                            
                            # if pattern_ndetect_count[i] < ndetect:
                            #     #if dictionary index is already created and if patt is already preesent do not add pattern
                            #     if((i in pattern_dict)): 
                            #         if(real_patt in pattern_dict[i]):
                            #             continue;
                            #         #already index is present but pattern is new
                            #         else:
                            #             pattern_dict[i].append(real_patt)
                            #             pattern_ndetect_count[i] = pattern_ndetect_count[i] + 1
                            #             if(real_patt not in final_patterns):
                            #                 final_patterns.append(real_patt)
                            #                 final_patterns_hit_count[real_patt] = hit_patt_idx
                            #                 final_patterns_hit_count_orig_patt_indx[real_patt] = i
                            #     else:
                            #         pattern_dict[i] = [real_patt]
                            #         pattern_ndetect_count[i] = pattern_ndetect_count[i] + 1
                            #         if(real_patt not in final_patterns):
                            #             final_patterns.append(real_patt)
                            #             final_patterns_hit_count[real_patt] = hit_patt_idx
                            #             final_patterns_hit_count_orig_patt_indx[real_patt] = i
                            # else:
                            #     print("Pattern bucket[i] already full. It can be further optimized by replacing low hit with higher hit in future", i)
                            #     break
                            #     #print("Pattern bucket[i] already full. ", matched_index)        
            
                        if isPattAdded == 1:
                            for hit_count, hit_patt_idx, hit_alt_patt_idx, real_patt in merged_hit_lists:
                                addedPattern_counter = addedPattern_counter - 1
                                #grabbing all matched indices for current unique real pattern
                                for matched_index in hit_patt_idx:
                                    #checking if bucket of matched pattern index is empty or not?                                                                                                             
                                    if pattern_ndetect_count[matched_index] < ndetect:
                                        if((matched_index in pattern_dict)): 
                                            if(real_patt in pattern_dict[matched_index]):
                                                continue;
                                            #already index is present but pattern is new
                                            else:
                                                pattern_dict[matched_index].append(real_patt)
                                                pattern_ndetect_count[matched_index] = pattern_ndetect_count[matched_index] + 1
                                                #not required as pattern is already added while adding it in pattern dict[i]
                                                #if(real_patt not in final_patterns):
                                                #    final_patterns.append(real_patt)
                                                #    #final_patterns_hit_count[real_patt] = hit_patt_idx
                                        else:
                                            pattern_dict[matched_index] = [real_patt]
                                            pattern_ndetect_count[matched_index] = pattern_ndetect_count[matched_index] + 1
                                            #not required as pattern is already added while adding it in pattern dict[i]
                                            #if(real_patt not in final_patterns):
                                            #    final_patterns.append(real_patt)
                                            #    #final_patterns_hit_count[real_patt] = hit_patt_idx
                                    elif(verboseFlag and debug):
                                        print("Pattern bucket[j] already full. It can be further optimized by replacing low hit with higher hit in future")
                                        print("Filled %d while working on %d.", matched_index, i)
                                #considering only those number of patterns that are inserted in pattern dict [i]
                                if addedPattern_counter == 0:
                                    break
    
    
    return final_patterns, final_patterns_hit_count, final_patterns_alt_hit_count, final_patterns_hit_count_orig_patt_indx

def get_fanin_analysis(passed_nets, cast_sorted_tmax_columns):
    # print("---Running fanin analysis---")

    # excite_0_file = dumpDir + "/valid_excite_0.csv"
    # excite_1_file = dumpDir + "/valid_excite_1.csv"

    # command = exeDir+ "/faninCone "+ str(inpFile) + " "  + moduleName \
    #             + " " + str(dumpDir) + " " + str(verboseFlag) + " " + libName \
    #                 + " " + ckt_type + " " + exeDir + " " + excite_0_file \
    #                     + " " + excite_1_file 
    # #print(command)
    # os.system(command)
    # print("---Fanin analysis over---")

    faninCone_file = dumpDir + "/fanin_cone_pi.csv"
    # print(cast_sorted_tmax_columns)
    net_name_list = []
    temp_faninPI_list = []
    with open(faninCone_file, 'r') as filehandle:              
        for line in filehandle:
            edges = line.strip().split(",")
            net_name = edges[0]
            net_name_list.append(net_name)
            tempList = edges[1:-1]
            usedPIList = ['0']*len(cast_sorted_tmax_columns)
            for edge in tempList:
                usedPIList[cast_sorted_tmax_columns.index(edge)]='1'                
            usedPIList.append(net_name)
            temp_faninPI_list.append(usedPIList)

    col_w_net = cast_sorted_tmax_columns + ["Net_OrigName"]
    fanin_PI_df = pd.DataFrame(temp_faninPI_list, columns=col_w_net)

    fanin_PI_df_file = dumpDir + "/fanin_df.csv"
    fanin_PI_df.to_csv(fanin_PI_df_file, index=False)

def reorder_pi_only(patterns_df):

    tmax_pi_file = dumpDir + "/tmax_pi.txt"

    counter1 = 0
    counter2 = 0
    tmax_pi_flag = 0
    tmax_pi_list = []
    tmax_pi_dict = {}
    with open(tmax_pi_file, 'r') as filehandle:              
        for line in filehandle:
            if tmax_pi_flag == 0:
                if counter1 < 2:
                    counter1 = counter1 + 1
                    continue
                data = line.split()
                if data[0] == 'scan_cells':
                    tmax_pi_flag = 1
                    continue
                
                tmax_pi_list.append(data[2])
                #adding tmax PI index which will be used while forcing bits to certain values
                tmax_pi_dict[data[2]] = len(tmax_pi_list)-1
            else:
                if counter2 < 2:
                    counter2 = counter2 + 1
                    continue
                data = line.split()
                tmax_pi_list.append(data[5])
                tmax_pi_dict[data[5]] = len(tmax_pi_list)-1

    cast_pi_file = dumpDir + "/cast_pi.csv"

    cast_pi_list = []
    with open(cast_pi_file, 'r') as filehandle:              
        for line in filehandle:
            data = line.strip().split(",")
            if len(data) > 2:
                cast_pi_list.append(data[3])
            else:
                cast_pi_list.append(data[1])

    # print("tmax: ", sorted(tmax_pi_list))
    # print("cast: ", sorted(cast_pi_list))

    # if(tmax_pi_list != cast_pi_list):
    #     print("!WARNING: PI order is not same")

    tmax_pi_list_org = copy.deepcopy(tmax_pi_list) 

    # if(len(tmax_pi_list) != len(cast_pi_list)):
    #     print("WARNING: PI's not matching.")

    index_to_remove = []
    tmax_col_to_remove = []
    cast_sorted_index = []
    index_counter = 0

    for pi in tmax_pi_list:
        if pi not in cast_pi_list:
            # print("------", pi)
            index_to_remove.append(index_counter)
            tmax_col_to_remove.append(cast_pi_list[index_counter])
        index_counter = index_counter + 1

    # for pi in cast_pi_list:
    #     if pi not in tmax_pi_list:
    #         print("Extra input column in CAST (FF not considered as scan)", pi)

    # input_size = len(patterns_df.at[patterns_df.index[0], 'original_tmax_pattern'])

    temp_patt_list = []
    # net_list = []
    for i in range(0, len(patterns_df)):
        curr_patt = patterns_df.at[patterns_df.index[i], 'original_tmax_pattern']
        # curr_net = patterns_df.at[patterns_df.index[i], 'Net_OrigName']
        # net_list.append(curr_net)
        curr_patt_list = list(curr_patt)
        temp_patt_list.append(curr_patt_list)

    #print(tmax_pi_list)
    pattern_bit_df = pd.DataFrame(temp_patt_list, columns=tmax_pi_list)
    pattern_bit_df_temp = pd.DataFrame(temp_patt_list, columns=tmax_pi_list)
    
    #rearraning columns
    cast_filtered_columns = []
    for pi in cast_pi_list:
        if pi not in tmax_pi_list:
            print("CAST column not present in TMAX column", pi)
        else:
            cast_filtered_columns.append(pi)

    pattern_bit_df_temp = pattern_bit_df_temp[cast_filtered_columns]

    #remove tmax PI:
    for rev_i in reversed(index_to_remove):
        # print("Removing TMAX PI not present in CAST pi.", tmax_pi_list[rev_i])
        tmax_pi_list.pop(rev_i)

    cast_sorted_tmax_columns = []
    for pi in cast_pi_list:
        if pi in tmax_pi_list:
            index_in_tmax = tmax_pi_list.index(pi)
            cast_sorted_index.append(index_in_tmax)            
            cast_sorted_tmax_columns.append(tmax_pi_list[index_in_tmax])
        else:
            print(pi)

    if(debug):
        print("Index to remove: ", index_to_remove)
    #print("cast sorted indices: ", cast_sorted_index)
    

    #remove extra tmax columns
    pattern_bit_df.drop(tmax_col_to_remove, axis = 1)

    #rearraning columns
    pattern_bit_df = pattern_bit_df[cast_sorted_tmax_columns]
    
    # print("original_approach: ", list(pattern_bit_df.columns))
    # print("new_approach     : ", list(pattern_bit_df_temp.columns))
    
    #adding net net
    #pattern_bit_df["Net_Name"] = net_list
    # sorted_patt_df_file = dumpDir + "/patterns_bit_sorted_df.csv"
    # pattern_bit_df.to_csv(sorted_patt_df_file, index=False)

    #merge columns
    pattern_bit_df['merged'] = pattern_bit_df[pattern_bit_df.columns].apply(
        lambda x: ''.join(x.dropna().astype(str)),
        axis=1
    )

    patterns_df['OriginalPatternOrdered'] = pattern_bit_df['merged'].values

    return patterns_df 

def reorder_pi(patterns_df):

    tmax_pi_file = dumpDir + "/tmax_pi.txt"

    counter1 = 0
    counter2 = 0
    tmax_pi_flag = 0
    tmax_pi_list = []
    tmax_pi_dict = {}
    with open(tmax_pi_file, 'r') as filehandle:              
        for line in filehandle:
            if tmax_pi_flag == 0:
                if counter1 < 2:
                    counter1 = counter1 + 1
                    continue
                data = line.split()
                if data[0] == 'scan_cells':
                    tmax_pi_flag = 1
                    continue
                
                tmax_pi_list.append(data[2])
                #adding tmax PI index which will be used while forcing bits to certain values
                tmax_pi_dict[data[2]] = len(tmax_pi_list)-1
            else:
                if counter2 < 2:
                    counter2 = counter2 + 1
                    continue
                data = line.split()
                tmax_pi_list.append(data[5])
                tmax_pi_dict[data[5]] = len(tmax_pi_list)-1

    cast_pi_file = dumpDir + "/cast_pi.csv"

    cast_pi_list = []
    with open(cast_pi_file, 'r') as filehandle:              
        for line in filehandle:
            data = line.strip().split(",")
            if len(data) > 2:
                cast_pi_list.append(data[3])
            else:
                cast_pi_list.append(data[1])

    # print("tmax: ", sorted(tmax_pi_list))
    # print("cast: ", sorted(cast_pi_list))

    if(tmax_pi_list != cast_pi_list):
        print("WARNING: PI order is not same")

    tmax_pi_list_org = copy.deepcopy(tmax_pi_list) 

    if(len(tmax_pi_list) != len(cast_pi_list)):
        print("WARNING: PI's not matching.")

    index_to_remove = []
    tmax_col_to_remove = []
    cast_sorted_index = []
    index_counter = 0

    for pi in tmax_pi_list:
        if pi not in cast_pi_list:
            # print("------", pi)
            index_to_remove.append(index_counter)
            tmax_col_to_remove.append(cast_pi_list[index_counter])
        index_counter = index_counter + 1

    # for pi in cast_pi_list:
    #     if pi not in tmax_pi_list:
    #         print("Extra input column in CAST (FF not considered as scan)", pi)

    input_size = len(patterns_df.at[patterns_df.index[0], 'OriginalPattern'])

    temp_patt_list = []
    net_list = []
    for i in range(0, len(patterns_df)):
        curr_patt = patterns_df.at[patterns_df.index[i], 'OriginalPattern']
        curr_net = patterns_df.at[patterns_df.index[i], 'Net_OrigName']
        net_list.append(curr_net)
        curr_patt_list = list(curr_patt)
        temp_patt_list.append(curr_patt_list)

    #print(tmax_pi_list)
    pattern_bit_df = pd.DataFrame(temp_patt_list, columns=tmax_pi_list)
    pattern_bit_df_temp = pd.DataFrame(temp_patt_list, columns=tmax_pi_list)
    
    #rearraning columns
    cast_filtered_columns = []
    for pi in cast_pi_list:
        if pi not in tmax_pi_list:
            print("CAST column not present in TMAX column", pi)
        else:
            cast_filtered_columns.append(pi)

    pattern_bit_df_temp = pattern_bit_df_temp[cast_filtered_columns]

    #remove tmax PI:
    for rev_i in reversed(index_to_remove):
        # print("Removing TMAX PI not present in CAST pi.", tmax_pi_list[rev_i])
        tmax_pi_list.pop(rev_i)

    cast_sorted_tmax_columns = []
    for pi in cast_pi_list:
        if pi in tmax_pi_list:
            index_in_tmax = tmax_pi_list.index(pi)
            cast_sorted_index.append(index_in_tmax)            
            cast_sorted_tmax_columns.append(tmax_pi_list[index_in_tmax])
        else:
            print(pi)

    if(debug):
        print("Index to remove: ", index_to_remove)
    #print("cast sorted indices: ", cast_sorted_index)
    

    #remove extra tmax columns
    pattern_bit_df.drop(tmax_col_to_remove, axis = 1)

    #rearraning columns
    pattern_bit_df = pattern_bit_df[cast_sorted_tmax_columns]
    
    # print("original_approach: ", list(pattern_bit_df.columns))
    # print("new_approach     : ", list(pattern_bit_df_temp.columns))
    
    #adding net net
    #pattern_bit_df["Net_Name"] = net_list
    if(debug):
        sorted_patt_df_file = dumpDir + "/patterns_bit_sorted_df.csv"
        pattern_bit_df.to_csv(sorted_patt_df_file, index=False)
    
    #merge columns
    pattern_bit_df['merged'] = pattern_bit_df[pattern_bit_df.columns].apply(
        lambda x: ''.join(x.dropna().astype(str)),
        axis=1
    )

    patterns_df['OriginalPatternOrdered'] = pattern_bit_df['merged'].values

    base_pattern_df_file = dumpDir + "/base_pattern_df.csv"
    patterns_df.to_csv(base_pattern_df_file, index=True)

    return patterns_df, cast_sorted_tmax_columns, tmax_pi_dict, tmax_pi_list_org

def get_pi_details(patterns_df):

    tmax_pi_file = dumpDir + "/tmax_pi.txt"

    counter1 = 0
    counter2 = 0
    tmax_pi_flag = 0
    tmax_pi_list = []
    tmax_pi_dict = {}
    with open(tmax_pi_file, 'r') as filehandle:              
        for line in filehandle:
            if tmax_pi_flag == 0:
                if counter1 < 2:
                    counter1 = counter1 + 1
                    continue
                data = line.split()
                if data[0] == 'scan_cells':
                    tmax_pi_flag = 1
                    continue
                
                tmax_pi_list.append(data[2])
                #adding tmax PI index which will be used while forcing bits to certain values
                tmax_pi_dict[data[2]] = len(tmax_pi_list)-1
            else:
                if counter2 < 2:
                    counter2 = counter2 + 1
                    continue
                data = line.split()
                tmax_pi_list.append(data[5])
                tmax_pi_dict[data[5]] = len(tmax_pi_list)-1

    cast_pi_file = dumpDir + "/cast_pi.csv"

    cast_pi_list = []
    with open(cast_pi_file, 'r') as filehandle:              
        for line in filehandle:
            data = line.strip().split(",")
            if len(data) > 2:
                cast_pi_list.append(data[3])
            else:
                cast_pi_list.append(data[1])

    # print("tmax: ", tmax_pi_list)
    # print("cast: ", cast_pi_list)

    if(tmax_pi_list != cast_pi_list):
        print("!WARNING: PI order is not same")

    tmax_pi_list_org = copy.deepcopy(tmax_pi_list) 

    if(len(tmax_pi_list) != len(cast_pi_list)):
        print("WARNING: PI's not matching.")

    index_to_remove = []
    tmax_col_to_remove = []
    cast_sorted_index = []
    index_counter = 0

    for pi in tmax_pi_list:
        if pi not in cast_pi_list:
            # print("------", pi)
            index_to_remove.append(index_counter)
            tmax_col_to_remove.append(cast_pi_list[index_counter])
        index_counter = index_counter + 1

    #remove tmax PI:
    for rev_i in reversed(index_to_remove):
        tmax_pi_list.pop(rev_i)

    cast_sorted_tmax_columns = []
    for pi in cast_pi_list:
        if pi in tmax_pi_list:
            index_in_tmax = tmax_pi_list.index(pi)
            cast_sorted_index.append(index_in_tmax)            
            cast_sorted_tmax_columns.append(tmax_pi_list[index_in_tmax])

    return cast_sorted_tmax_columns, tmax_pi_dict, tmax_pi_list_org

def read_rare_pattern_file(inpFile):

    data_list = []
    pattern_dict = {}
    with open(inpFile, 'r') as filehandle:              
        for line in filehandle:
            data = line.strip().split(",")
            data_list.append(data)
            pattern_dict[data[0]] = [data[-1]]

    patterns_df = pd.DataFrame(data_list, columns=['Net_OrigName', 'Excite_Value', 'OriginalPattern'])

    return patterns_df, pattern_dict

def get_net_id_dict():
    inpFile = dumpDir + "/valid_rare_nets.txt"
    net_id_dict = {}
    with open(inpFile, 'r') as filehandle:              
        for line in filehandle:
            data = line.strip().split(",")
            net_id_dict[data[0]] = [data[1], data[2]]
            # net_id_dict[all_excite_nets[lineCounter]] = [net_id[-1], 0, cell_name[-1]]            

    return net_id_dict 

def exaustive_pattern_gen(opt_patt_net_dict):
    binary ='01'
    final_alt_vector = []
    final_alt_vector_nets = {}
    final_alt_vector_unk_patt = {}

    for key in sorted(opt_patt_net_dict, key=lambda k: len(opt_patt_net_dict[k]), reverse=True):
        
        # print(key, opt_patt_net_dict[key])
        vector_w_unk = key
        original_patt = key

        # print(key, opt_patt_net_dict[key])

        vector_w_unk_cnt = vector_w_unk.count("X")

        temp_list = []
        unk_cnt = vector_w_unk.count("X")
        #generating all possible test vectors
        # if (2**unk_cnt) < ndetect :
        #     possible_patt = 2 ** unk_cnt 
        # else:
        #     possible_patt = ndetect
        possible_patt = 2 ** unk_cnt 

        # print("+++++++++++++++++++++++++++")
        # print(key, value, final_pattern_bucket_alt_dict[key])

        list_of_unk = [i for i, ltr in enumerate(key) if ltr == 'X']
        for data in itertools.product(range(2), repeat=len(list_of_unk)):
            # while(possible_patt > 0):
            if(possible_patt <= 0):
                break
            #generating variations for pattern [i]
            pattern_str = vector_w_unk
            vector_w_unk_cnt = pattern_str.count("X")

            #creating random pattern
            # while(vector_w_unk_cnt !=0 ):
            #     pattern_str = pattern_str.replace('X', random.choice(binary), 1)
            #     vector_w_unk_cnt = vector_w_unk_cnt - 1            

            #creating systmetic pattern
            # for data in itertools.product(range(2), repeat=len(list_of_unk)):
            for i in range(0, len(data)):
                replace_chr = data[i]
                pattern_str = pattern_str.replace('X', str(replace_chr), 1)
            
            # if pattern_str not in temp_list:
            #     temp_list.append(pattern_str)
            #     possible_patt = possible_patt - 1
                
            # if pattern_str not in final_alt_vector:
            final_alt_vector.append(pattern_str)
            # final_alt_vector_nets[pattern_str] = opt_patt_net_dict[key]
            # final_alt_vector_unk_patt[pattern_str] = original_patt                


    final_alt_vector = list(set(final_alt_vector))
    vector_file_name = dumpDir + "/exaustive_vector.out"
    vector_file_handle = open(vector_file_name, 'w')
    for i in final_alt_vector:
        vector_file_handle.write(i)
        vector_file_handle.write("\n")
    vector_file_handle.close()


    # get unique vectors and dump them

    # vector_file_name = dumpDir + "/exaustive_unique_vector.out"
    # vector_file_handle = open(vector_file_name, 'w')
    # for i in final_alt_vector:
    #     vector_file_handle.write(i)
    #     vector_file_handle.write("\n")
    # vector_file_handle.close()

    

def systematic_pattern_gen(opt_patt_net_dict):

    binary ='01'
    final_alt_vector = []
    final_alt_vector_nets = {}
    final_alt_vector_unk_patt = {}
    
    for key in sorted(opt_patt_net_dict, key=lambda k: len(opt_patt_net_dict[k]), reverse=True):
        
        # print(key, opt_patt_net_dict[key])
        vector_w_unk = key
        original_patt = key

        # print(key, opt_patt_net_dict[key])

        vector_w_unk_cnt = vector_w_unk.count("X")

        temp_list = []
        unk_cnt = vector_w_unk.count("X")
        #generating all possible test vectors
        if (2**unk_cnt) < ndetect :
            possible_patt = 2 ** unk_cnt 
        else:
            possible_patt = ndetect

        # print("+++++++++++++++++++++++++++")
        # print(key, value, final_pattern_bucket_alt_dict[key])

        list_of_unk = [i for i, ltr in enumerate(key) if ltr == 'X']
        for data in itertools.product(range(2), repeat=len(list_of_unk)):
            # while(possible_patt > 0):
            if(possible_patt <= 0):
                break
            #generating variations for pattern [i]
            pattern_str = vector_w_unk
            vector_w_unk_cnt = pattern_str.count("X")

            #creating random pattern
            # while(vector_w_unk_cnt !=0 ):
            #     pattern_str = pattern_str.replace('X', random.choice(binary), 1)
            #     vector_w_unk_cnt = vector_w_unk_cnt - 1            

            #creating systmetic pattern
            # for data in itertools.product(range(2), repeat=len(list_of_unk)):
            for i in range(0, len(data)):
                replace_chr = data[i]
                pattern_str = pattern_str.replace('X', str(replace_chr), 1)
            
            if pattern_str not in temp_list:
                temp_list.append(pattern_str)
                possible_patt = possible_patt - 1
                
            if pattern_str not in final_alt_vector:
                final_alt_vector.append(pattern_str)
                final_alt_vector_nets[pattern_str] = opt_patt_net_dict[key]
                final_alt_vector_unk_patt[pattern_str] = original_patt                


    vector_file_name = dumpDir + "/pre_opt_only_vector.out"
    vector_file_handle = open(vector_file_name, 'w')
    for i in final_alt_vector:
        vector_file_handle.write(i)
        vector_file_handle.write("\n")
    vector_file_handle.close()

    vector_file_w_net_name = dumpDir + "/pre_opt_only_vector_w_nets.txt"
    vector_file_w_net_handle = open(vector_file_w_net_name, 'w')
    for i in final_alt_vector:
        pattern_str = i
        vector_file_w_net_handle.write(final_alt_vector_unk_patt[pattern_str])
        vector_file_w_net_handle.write(",")
        vector_file_w_net_handle.write(i)
        vector_file_w_net_handle.write(",")
        # filehandle.writelines("%s\n" % place for place in places_list)
        # vector_file_w_net_handle.writelines("%s," % net for net in final_alt_vector_nets[pattern_str])
        wo_duplicate_nets = list(set(final_alt_vector_nets[pattern_str]))
        vector_file_w_net_handle.writelines("%s," % net for net in wo_duplicate_nets)
        vector_file_w_net_handle.write("\n")
    vector_file_w_net_handle.close()

def ndetect_pattern_gen(opt_patt_net_dict, valid_rare_nets):

    binary ='01'
    final_alt_vector = []
    final_alt_vector_nets = {}
    final_alt_vector_unk_patt = {}

    rare_net_dict = {}
    for net in valid_rare_nets:
        rare_net_dict[net] = 0

    rare_net_bucket_dict = copy.deepcopy(rare_net_dict)

    # for key in sorted(opt_patt_net_dict, key=lambda k: len(opt_patt_net_dict[k]), reverse=True):        
    #     print(key, opt_patt_net_dict[key])

    dict_count = 0
    for key in sorted(opt_patt_net_dict, key=lambda k: len(opt_patt_net_dict[k]), reverse=True):       
        dict_count = dict_count + 1 
        vector_w_unk = key
        original_patt = key

        vector_w_unk_cnt = vector_w_unk.count("X")

        temp_list = []
        unk_cnt = vector_w_unk.count("X")
        #generating all possible test vectors
        if (2**unk_cnt) < ndetect :
            possible_patt = 2 ** unk_cnt 
        else:
            possible_patt = ndetect

        list_of_unk = [i for i, ltr in enumerate(key) if ltr == 'X']
        for data in itertools.product(range(2), repeat=len(list_of_unk)):
            if(possible_patt <= 0):
                break
            #generating variations for pattern [i]
            pattern_str = vector_w_unk
            vector_w_unk_cnt = pattern_str.count("X")

            #creating systmetic pattern
            for i in range(0, len(data)):
                replace_chr = data[i]
                pattern_str = pattern_str.replace('X', str(replace_chr), 1)
            
            if pattern_str not in temp_list:
                temp_list.append(pattern_str)
                possible_patt = possible_patt - 1
                
            if pattern_str not in final_alt_vector:
                final_alt_vector.append(pattern_str)
                final_alt_vector_nets[pattern_str] = opt_patt_net_dict[key]
                final_alt_vector_unk_patt[pattern_str] = original_patt                

                for exp_hit_nets in opt_patt_net_dict[key]:
                    rare_net_dict[exp_hit_nets] = rare_net_dict[exp_hit_nets] + 1

        for net in valid_rare_nets:
            if(rare_net_dict[net] >= ndetect):
                rare_net_bucket_dict[net] = 1
        
        multF = 1
        for key in rare_net_bucket_dict:
            multF = multF*rare_net_bucket_dict[key]
        
        if(multF == 1):
            print("All buckets full at ", dict_count, "/", len(opt_patt_net_dict))
            break

    vector_file_name = dumpDir + "/pre_opt_only_vector.out"
    vector_file_handle = open(vector_file_name, 'w')
    for i in final_alt_vector:
        vector_file_handle.write(i)
        vector_file_handle.write("\n")
    vector_file_handle.close()

    vector_file_w_net_name = dumpDir + "/pre_opt_only_vector_w_nets.txt"
    vector_file_w_net_handle = open(vector_file_w_net_name, 'w')
    for i in final_alt_vector:
        pattern_str = i
        vector_file_w_net_handle.write(final_alt_vector_unk_patt[pattern_str])
        vector_file_w_net_handle.write(",")
        vector_file_w_net_handle.write(i)
        vector_file_w_net_handle.write(",")
        # filehandle.writelines("%s\n" % place for place in places_list)
        # vector_file_w_net_handle.writelines("%s," % net for net in final_alt_vector_nets[pattern_str])
        wo_duplicate_nets = list(set(final_alt_vector_nets[pattern_str]))
        vector_file_w_net_handle.writelines("%s," % net for net in wo_duplicate_nets)
        vector_file_w_net_handle.write("\n")
    vector_file_w_net_handle.close()


def ndetect_pattern_gen_on_the_go(opt_patt_net_dict, valid_rare_nets):

    sorted_pattern = []
    vector_file_w_net_name = dumpDir + "/unk_vector_w_nets.txt"
    vector_file_w_net_handle = open(vector_file_w_net_name, 'w')

    # removing duplicate expected hit nets
    for key in sorted(opt_patt_net_dict, key=lambda k: len(opt_patt_net_dict[k]), reverse=True): 
        unique_exp_git = list(set(opt_patt_net_dict[key]))
        opt_patt_net_dict[key] = unique_exp_git

    for key in sorted(opt_patt_net_dict, key=lambda k: len(opt_patt_net_dict[k]), reverse=True):        
        sorted_pattern.append(opt_patt_net_dict)
        vector_file_w_net_handle.write(key)
        vector_file_w_net_handle.write(",")
        vector_file_w_net_handle.writelines("%s," % net for net in opt_patt_net_dict[key])
        vector_file_w_net_handle.write("\n")
    vector_file_w_net_handle.close()
    
    # merged_dict = {}
    # for i in range(0, len(sorted_pattern)-1):
    #     curr_patt = sorted_pattern[i]
    #     for j in range(i+1, len(sorted_pattern)):
    #         comp_patt = sorted_pattern[j]
    #         mergeFlag, mergedPatt = isMergePossible(curr_patt, comp_patt)
    #         if(mergeFlag == 1):
    #             # combine expected hit nets
    #             merged_dict[mergedPatt] = list(set(opt_patt_net_dict[curr_patt] + opt_patt_net_dict[comp_patt]))





def patt_net_dict_to_vector_file(opt_patt_net_dict, op_filename):

    binary ='01'
    final_alt_vector = []
    final_alt_vector_nets = {}
    final_alt_vector_unk_patt = {}
    random.seed(datetime.now())

    random_patt_dict = {}
    for key in sorted(opt_patt_net_dict, key=lambda k: len(opt_patt_net_dict[k]), reverse=True):
        
        vector_w_unk = key
        original_patt = key

        vector_w_unk_cnt = vector_w_unk.count("X")

        temp_list = []
        unk_cnt = vector_w_unk.count("X")
        #generating all possible test vectors
        if (2**unk_cnt) < ndetect :
            possible_patt = 2 ** unk_cnt 
        else:
            possible_patt = ndetect

        list_of_unk = [i for i, ltr in enumerate(key) if ltr == 'X']
        for data in itertools.product(range(2), repeat=len(list_of_unk)):
            if(possible_patt <= 0):
                break

            pattern_str = vector_w_unk
            vector_w_unk_cnt = pattern_str.count("X")

            for i in range(0, len(data)):
                replace_chr = data[i]
                pattern_str = pattern_str.replace('X', str(replace_chr), 1)
            
            if pattern_str not in temp_list:
                temp_list.append(pattern_str)
                possible_patt = possible_patt - 1
                
            if pattern_str not in final_alt_vector:
                final_alt_vector.append(pattern_str)
                for nets_data in opt_patt_net_dict[key]:        #net_name,excite_value
                    net_name = nets_data.split(",")[0]
                    if pattern_str in final_alt_vector_nets.keys():
                        final_alt_vector_nets[pattern_str].append(net_name)
                    else:
                        final_alt_vector_nets[pattern_str] = [net_name]
                final_alt_vector_unk_patt[pattern_str] = original_patt
                # final_alt_vector_nets[pattern_str] = opt_patt_net_dict[key]
                if key in random_patt_dict.keys():
                    random_patt_dict[key].append(pattern_str)
                else:
                    random_patt_dict[key] = [pattern_str]


    combined_vector_file = dumpDir + "/vector_opt_latest_w_nets.txt"
    combined_test_vector = open(combined_vector_file, 'w')
    for i in final_alt_vector:
        pattern_str = i
        combined_test_vector.write(final_alt_vector_unk_patt[pattern_str])
        combined_test_vector.write(",")
        combined_test_vector.write(i)
        combined_test_vector.write(",")
        combined_test_vector.writelines("%s," % net for net in final_alt_vector_nets[pattern_str])
        combined_test_vector.write("\n")
    combined_test_vector.close()

def latest_approach_further(opt_patt_net_dict):

    binary ='01'
    final_alt_vector = []
    random.seed(datetime.now())
    # for i in range(0, len(final_pattern_bucket)):
    random_patt_dict = {}

    
    for key in sorted(opt_patt_net_dict, key=lambda k: len(opt_patt_net_dict[k]), reverse=True):
        
        #print(i)
        #print(patt_set_list[i])
        #print(final_opt_list[i])
        #print(patt_set_net_list[i])

        # vector_w_unk = final_pattern_bucket[i]
        # original_patt = final_pattern_bucket[i]

        vector_w_unk = key
        original_patt = key

        vector_w_unk_cnt = vector_w_unk.count("X")

        temp_list = []
        unk_cnt = vector_w_unk.count("X")
        #generating all possible test vectors
        if unk_cnt < 9 :
            possible_patt = 2 ** unk_cnt 
        else:
            possible_patt = 2 * ndetect

        
        possible_patt = 10
        # print("+++++++++++++++++++++++++++")
        # print(key, value, final_pattern_bucket_alt_dict[key])

        while(possible_patt > 0):
            #generating variations for pattern [i]
            pattern_str = vector_w_unk
            vector_w_unk_cnt = pattern_str.count("X")

            #creating random pattern
            while(vector_w_unk_cnt !=0 ):
                pattern_str = pattern_str.replace('X', random.choice(binary), 1)
                vector_w_unk_cnt = vector_w_unk_cnt - 1            
            
            if pattern_str not in temp_list:
                temp_list.append(pattern_str)
                possible_patt = possible_patt - 1
                
            if pattern_str not in final_alt_vector:
                final_alt_vector.append(pattern_str)
                if key in random_patt_dict.keys():
                    random_patt_dict[key].append(pattern_str)
                else:
                    random_patt_dict[key] = [pattern_str]
                


    # print("total_patterns", len(final_alt_vector))

    combined_vector_file = dumpDir + "/vector_opt_latest_further.out"
    combined_test_vector = open(combined_vector_file, 'w')
    for i in final_alt_vector:
        combined_test_vector.write(i)
        combined_test_vector.write("\n")
    combined_test_vector.close()



def further_optimize(passed_opt_patt_net_dict, cast_sorted_tmax_columns):

    sorted_key = []
    for k in sorted(passed_opt_patt_net_dict, key=lambda k: len(passed_opt_patt_net_dict[k]), reverse=False):
        sorted_key.append(k)
        
    print("####further_optimize####")
    # for key in sorted_key:
    #     print(key, passed_opt_patt_net_dict[key])
    print("####further_optimize####")


    opt_patt_net_dict = {}
    subset_count = 0
    for i in range(0, len(sorted_key)):
        key = sorted_key[i]
        curr_patt_nets = passed_opt_patt_net_dict[key]
        if(len(curr_patt_nets) == 2):
            subs = curr_patt_nets[1].split(",")[0]                     # check if primary bit is flipped
            check_pi = [i for i in cast_sorted_tmax_columns if subs in i]
            net_to_check = curr_patt_nets[0].split(",")[0]             # check if pattern available for that net
            flag = 0
            for j in range(i+1, len(sorted_key)-1):
                comapre_key = sorted_key[j]
                compare_patt_nets = passed_opt_patt_net_dict[comapre_key]
                if(len(compare_patt_nets) == 2):
                    continue
                check_net = [i for i in compare_patt_nets if net_to_check in i]
                # if(set(net_to_check).issubset(set(compare_patt_nets))):
                if(len(check_net)>0):
                    # print("subset", net_to_check, compare_patt_nets)
                    flag = 1
                    break
            if flag == 0:
                opt_patt_net_dict[key] = curr_patt_nets
            else:
                subset_count = subset_count + 1
        else:
            opt_patt_net_dict[key] = curr_patt_nets

    print("- - - - - - - - - - - ")
    # for k in sorted(opt_patt_net_dict, key=lambda k: len(opt_patt_net_dict[k]), reverse=True):
    #     print(k, opt_patt_net_dict[k])
    
    print("subset_count", subset_count)

    print("Total pattenrns: ", len(opt_patt_net_dict))

    # latest_approach_further(opt_patt_net_dict)

def merge_all_dict(alt_pattern_dict_1, alt_pattern_dict_2, alt_pattern_dict_3, patt_net_set_dict_2, patt_net_set_dict_3, tmax_pi_list_org, cast_sorted_tmax_columns):

    all_rara_nets_keys = list(set(list(alt_pattern_dict_1.keys()) + list(patt_net_set_dict_2.keys()) + list(patt_net_set_dict_3.keys())))

    combined_dict = {}

    key_list = []
    pattern_list = []
    comb_list = []

    attempt1_combiend = []
    for key, value in sorted(alt_pattern_dict_1.items()):
        key_list.append(key)
        pattern_list.append(value[0])
        comb_list.append([key])
        attempt1_combiend.append([value[0], key])

    # print(pattern_list[0],comb_list[0])
    # print(attempt1_combiend)

    attempt1_columns = ['original_tmax_pattern', 'expected_hit_net']
    attempt1_combiend_df = pd.DataFrame(attempt1_combiend, columns=attempt1_columns)

    attempt1_combiend_df = reorder_pi_only(attempt1_combiend_df)

    if(debug):
        attempt_1_pattern_df_file = dumpDir + "/attempt_1_pattern_df.csv"
        attempt1_combiend_df.to_csv(attempt_1_pattern_df_file, index=True)

    attempt1_comb_length = len(comb_list)
    # ['1XXX0XXXXX0X0X10X0XX0XXXXXX10001', [0, 'N196,1', 'current_state0_reg_2_,0'], 'SATISFIED']
    # ['01000010000XXXXXXXXXXXXXXXX11010', [1, 'n427,1', 'n415,1', 'n250,0'], 'SATISFIED']
    # print("patt_net_set_dict_2")
    attempt2_combined = []
    for key, value in sorted(patt_net_set_dict_2.items()):       
        # print(key, value[0])
        for i in range(0, len(value)):
            key_list.append(key)
            patt_set_stat = value[i]
            # print(key, patt_set_stat)
            pattern_list.append(patt_set_stat[0])
            comb_set = patt_set_stat[1]
            if comb_set[0] == 0:    # get only first net, second is primary input
                comb_list.append([comb_set[1]])
            else:                   # get combination
                comb_list.append(comb_set[1:])
            # print(patt_set_stat[0], ','.join([str(elem) for elem in comb_list[-1]]) )
            attempt2_combined.append([patt_set_stat[0], ','.join([str(elem) for elem in comb_list[-1]])])
    # print(pattern_list[attempt1_comb_length+0],comb_list[attempt1_comb_length+0])
    # print(attempt2_combined)
    if(len(attempt2_combined)!=0):
        attempt2_columns = ['original_tmax_pattern', 'expected_hit_comb_net']
        attempt2_combined_df = pd.DataFrame(attempt2_combined, columns=attempt2_columns)
        attempt2_combined_df = reorder_pi_only(attempt2_combined_df)

        if(debug):
            attempt_2_pattern_df_file = dumpDir + "/attempt_2_pattern_df.csv"
            attempt2_combined_df.to_csv(attempt_2_pattern_df_file, index=True)

    attempt3_combined = []
    # print("patt_net_set_dict_3")
    for key, value in sorted(patt_net_set_dict_3.items()):       
        # print(key, value[0])
        for i in range(0, len(value)):
            key_list.append(key)
            patt_set_stat = value[i]
            # print(key, patt_set_stat)
            pattern_list.append(patt_set_stat[0])
            comb_set = patt_set_stat[1]
            if comb_set[0] == 0:    # get only first net, second is primary input
                comb_list.append([comb_set[1]])
            else:                   # get combination
                comb_list.append(comb_set[1:])
            attempt3_combined.append([patt_set_stat[0], ','.join([str(elem) for elem in comb_list[-1]])])
    # for i in range(0, len(key_list)):
    #     print(i, key_list[i], pattern_list[i], comb_list[i])
    if(len(attempt3_combined)!=0):
        attempt3_columns = ['original_tmax_pattern', 'expected_hit_comb_net']
        attempt3_combined_df = pd.DataFrame(attempt3_combined, columns=attempt3_columns)
        attempt3_combined_df = reorder_pi_only(attempt3_combined_df)

        if(debug):
            attempt_3_pattern_df_file = dumpDir + "/attempt_3_pattern_df.csv"
            attempt3_combined_df.to_csv(attempt_3_pattern_df_file, index=True)

    #reorder all patterns 
    ordered_pattern_list = reorder_patt_list(pattern_list, tmax_pi_list_org, cast_sorted_tmax_columns)

    for i in range(0, len(key_list)):
        patt = ordered_pattern_list[i]
        if patt in combined_dict.keys():
            combined_dict[patt]= list(set(combined_dict[patt] + comb_list[i]))
        else:
            combined_dict[patt] = comb_list[i]
        
    #dictionary without excite value and PI nets
    combined_simple_dict = {}
    for key, value in combined_dict.items():
        tempList = []
        for nets in value:
            data = nets.split(",")
            if len(data) == 2:
                if data[0] not in cast_sorted_tmax_columns:     # removing PI nets
                    tempList.append(data[0])
            else:
                tempList.append(data[0])
        combined_simple_dict[key] = tempList
        

    sorted_patt_key = []
    for k in sorted(combined_simple_dict, key=lambda k: len(combined_simple_dict[k]), reverse=False):
        sorted_patt_key.append(k)
        
    # print("########")
    # for key in sorted_patt_key:
    #     print(key, combined_simple_dict[key])
    # print("########")

    # print("- - - - - - - - - - - ")
    # for i in range(0, len(sorted_key)):
    #     key = sorted_key[i]
    #     curr_patt_nets = patt_net_dict[key]
    #     print(key, curr_patt_nets)


    #removing subset nets
    opt_patt_net_dict = {}              # reduced directory with min patterns and max rare net set
    subset_count = 0
    for i in range(0, len(sorted_patt_key)):
        key = sorted_patt_key[i]
        curr_patt_nets = combined_simple_dict[key]
        flag = 0
        for j in range(i+1, len(sorted_patt_key)-1):
            comapre_key = sorted_patt_key[j]
            compare_patt_nets = combined_simple_dict[comapre_key]
            if(set(curr_patt_nets).issubset(set(compare_patt_nets))):
                # print("subset", curr_patt_nets, compare_patt_nets)
                flag = 1
        if flag == 0:
            opt_patt_net_dict[key] = curr_patt_nets
        else:
            subset_count = subset_count + 1

    # print("packed set ")
    # for key, value in opt_patt_net_dict.items():
    #     print(key, value)

    # print("original set w unk: ", len(sorted_patt_key))
    # print("reduced set w unk: ", len(opt_patt_net_dict))

    return combined_simple_dict

def main():

    result_file = dumpDir + "/results_" + str(ndetect) + "_" + str(ntrig) + ".txt"

    if(os.path.isfile(result_file)):
        os.remove(result_file)

    patterns_df, alt_pattern_dict_1 = read_rare_pattern_file(inpFile)

    patterns_df, cast_sorted_tmax_columns, tmax_pi_dict, tmax_pi_list_org = reorder_pi(patterns_df)

    pi_order = dumpDir + "/PI_order.txt"
    with open(pi_order, "w") as output:
        for data in cast_sorted_tmax_columns:
            output.write(str(data))
            output.write("\n")

    # cast_sorted_tmax_columns, tmax_pi_dict, tmax_pi_list_org = get_pi_details()
    
    passed_nets = patterns_df['Net_OrigName'].tolist()
    get_fanin_analysis(passed_nets, cast_sorted_tmax_columns)
    
    # alt_pattern = []
    # total_alt_patterns = 0
    # final_patterns, final_patterns_hit_count, final_patterns_alt_hit_count, final_patterns_hit_count_orig_patt_indx = get_optimized_patterns_wip(patterns_df, alt_pattern, total_alt_patterns)

    get_conflict_analysis(patterns_df, cast_sorted_tmax_columns)
    
    #dump real patterns in vector.out file
    # results_test =  list(set(final_patterns))
    # orig_vector_file = dumpDir + "/base_vector.out"
    # orig_test_vector = open(orig_vector_file, 'w')

    # temp_list = []
    # for i in final_patterns:
    #     orig_test_vector.write(i)
    #     orig_test_vector.write("\n")
    #     temp_list.append(list(i))
    # orig_test_vector.close()

    net_id_dict = get_net_id_dict()

    
    # if(debug):
    # print("!!..Mult call approach 2 from w Trojan file")
    alt_pattern_dict_2, patt_net_set_dict_2, simple_patt_set_dict_2 = mult_patt_approach(patterns_df, cast_sorted_tmax_columns, net_id_dict, tmax_pi_dict, tmax_pi_list_org)
    
    # if(debug):
    # print("!!..Mult call set approach from w Trojan file")
    alt_pattern_dict_3, patt_net_set_dict_3, simple_patt_set_dict_3 = mult_patt_set_approach(patterns_df, cast_sorted_tmax_columns, net_id_dict, tmax_pi_dict, tmax_pi_list_org)
    
    # print("Merging dictionaries")
    opt_patt_net_dict = merge_all_dict(alt_pattern_dict_1, alt_pattern_dict_2, alt_pattern_dict_3, patt_net_set_dict_2, patt_net_set_dict_3, tmax_pi_list_org, cast_sorted_tmax_columns)

    if(ndetectApp == "1"):
        print("INFO: Creating patterns with n-detect approach...")        
        ndetect_pattern_gen(opt_patt_net_dict, passed_nets)
    elif(ndetectApp == "-1"):
        # print("INFO: Creating patterns with n-detect approach on the go...")        
        ndetect_pattern_gen_on_the_go(opt_patt_net_dict, passed_nets)
    elif(exaustive == "0"):
        print("INFO: Creating patterns in systematic way...")
        systematic_pattern_gen(opt_patt_net_dict)
    elif(exaustive == "1"):
        print("INFO: Creating all possible patterns")
        print("INFO: Input size: ", len(cast_sorted_tmax_columns))
        start = timeit.default_timer()
        exaustive_pattern_gen(opt_patt_net_dict)
        stop = timeit.default_timer()
        print('Time(s): ', stop - start)   
    else:
        print("!!ERROR: Wrong exaustive argument")


    # further_optimize(opt_patt_net_dict, cast_sorted_tmax_columns)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="To run MERO_v2")
    parser.add_argument("-vF", "--vFile",  required=True, help="Verilog file")
    parser.add_argument("-f", "--rFile",  required=True, help="Rare nets with respective patterns")
    parser.add_argument("-d", "--oDir",  required=True, help="Output Directory")
    parser.add_argument("-e", "--eDir",  required=True, help="Executable file directory")
    parser.add_argument("-N", "--nDetect",  required=True, help="N-DETECT")
    parser.add_argument("-m", "--moduleN",  required=True, help="Module name")
    parser.add_argument("-lib", "--libName",  required=True, help="Cell library name")
    parser.add_argument("-T", "--nTrig",  required=True, help="Number of triggers ")

    parser.add_argument("-ndApp", "--ndetectApp",  required=True, help="N-detect approach flag")
    parser.add_argument("-tmaxSrc", "--tmaxSrc",  required=False, help="tmax source files")
    
    group = parser.add_mutually_exclusive_group(required=True)
    group.add_argument('-q', '--quiet', action='store_true', help='Print less details')
    group.add_argument('-v', '--verbose', action='store_true',  help='Print more details')
    
    group1 = parser.add_mutually_exclusive_group(required=True)
    group1.add_argument("-comb", "--comb", action='store_true', help="Combinational design")
    group1.add_argument("-seq", "--seq", action='store_true', help="Sequential design")
    
    parser.add_argument("-clk", "--clkName",  required='-seq' in sys.argv, help="clock signal name")
    parser.add_argument("-clkV", "--clkValue",  required='-clk' in sys.argv, help="Off state of the clock")

    group2 = parser.add_mutually_exclusive_group(required='-seq' in sys.argv)
    group2.add_argument("-wreset", "--wrst", action='store_true', help="Use reset signal")
    group2.add_argument("-woreset", "--worst", action='store_true', help="Do not use reset signal")

    parser.add_argument("-rst", "--rstName",  required='-wreset' in sys.argv, help="reset signal name")
    parser.add_argument("-rstV", "--rstValue",  required='-wreset' in sys.argv, help="Off state of the reset")

    # parser.add_argument('-seed','--randomness',metavar='', required=True, help="-1:time base, 0 systmatic, seed based")
    parser.add_argument('-seed','--randomness', required=True, help="-1:time base, 0 systmatic, seed based")
    # parser.add_argument('-ex','--exaustive',metavar='', required=True, help="0 normal opt, 1 exasutive pattern creation")

    parser.add_argument('-libFile','--libFile', required=False, help="library file")
    # parser.add_argument('-justOpt','--justOpt',metavar='', required=True, help="just do optimization and coverage analysis")
    parser.add_argument('-justOpt','--justOpt', required=True, help="just do optimization and coverage analysis")

    args = parser.parse_args()

    vFile = args.vFile
    inpFile = args.rFile
    dumpDir = args.oDir
    exeDir = args.eDir
    ndetect = int(args.nDetect)
    moduleName = args.moduleN
    libName = args.libName
    ntrig = args.nTrig
    randomness = args.randomness
    justOptCov = int(args.justOpt)

    ndetectApp = args.ndetectApp

    tmaxSrc = "NA"
    if args.tmaxSrc:
        tmaxSrc = args.tmaxSrc

    exaustive = "0"
    # exaustive = args.exaustive

    libFile = "NA"
    if args.libFile:
        libFile = args.libFile

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

        if args.clkValue:
            clkV = args.clkValue
        else:
            clkV = '0'
            print("WARNING: Using default clock value might not work with TetraMAX")        

        wrst = 0
        if args.wrst:
            wrst = 1                
            if args.rstName:
                RST = args.rstName
            else:
                RST = "RST"
                print("WARNING: Using default reset might not work with TetraMAX")
                
            if args.rstValue:
                rstV = args.rstValue
            else:
                rstV = '0'
                print("WARNING: Using default reset value might not work with TetraMAX")
        else:
            RST = "NA"
            rstV = '-1'

    #altPattFlag = int(args.alt)
    altPattFlag = 0;
    flow_flag= 0
    
    #Each time ndetect*2 number of pattrsn are created to check hit count
    nxt_pwr_2 = ceil(math.log(ndetect*2,2))

    verboseFlag = 0
    if(args.quiet and args.verbose):
        sys.exit("ERROR: Provide either of the flags")    
    elif(args.quiet):
        verboseFlag = 0
    elif(args.verbose):
        verboseFlag = 1
        # print("INFO: N-DETECT: ", ndetect)
    
    start = timeit.default_timer()
    debug = 0
    main()    
    stop = timeit.default_timer()

    # result_file = dumpDir + "results_" + ndetect + "_" + ntrig + ".txt"    
    # print('Time for optimization(s): ', stop - start)    

    result_file = dumpDir + "/results_" + str(ndetect) + "_" + str(ntrig) + ".txt"
    result_log_handle = open(result_file, 'a')
    # print('Time(s): ', stop - start, file=result_log_handle)    
    # print("==============================================================", file=result_log_handle)    
    result_log_handle.close()

    
    
