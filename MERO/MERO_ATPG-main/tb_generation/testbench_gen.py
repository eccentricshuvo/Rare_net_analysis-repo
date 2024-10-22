# -*- coding: utf-8 -*-
"""
Created on Mon Apr 12 10:35:51 2021

@author: dev
"""

import re
import sys
import os
import argparse

parser = argparse.ArgumentParser(description="Generate testbench for simulation")
parser.add_argument('-d','--design', type=str,help="input assembly file", required = True)
parser.add_argument('-top','--top',type=str,help="top level module name",required=True)
parser.add_argument('-clk','--clk',type=str,help="name of clock signal")
parser.add_argument('-rst','--rst',type=str,help="Name of reset signal")
parser.add_argument('-reset_e','-reset_e',type=int,help="activation edge of reset")
parser.add_argument('-type','--type',choices=['a','w'],help="Type of monitoring. 'a': all nets. 'w': wires only")
parser.add_argument('-test','--test',type=str,help="test pattern file")
parser.add_argument('-o','--output',type=str,help="output testbench file name")
parser.add_argument('-log','--log',type=str,help="output log name")
parser.add_argument("-piF", "--piFile",  required=True, help="PI file")
parser.add_argument("-oD", "--opDir",  required=True, help="dump Dir")


args = parser.parse_args()

design_file_name = args.design
if(os.path.isfile(design_file_name)==False):
    print("ERROR: Unable to open design file: "+str(design_file_name))
    sys.exit(-1)
clk = None
rst = None
reset_e = -1
top = args.top

piFile = args.piFile
dumpDir = args.opDir

if(args.clk!=None):
    clk = args.clk
if(args.rst!=None):
    rst = args.rst
if(args.reset_e!=None):
    reset_e = args.reset_e

with open(design_file_name,'r') as file:
    file_contents = file.read()

#TODO:
#   support vector declarations
#   gate-level
#grab all inputs
prim_input_list = []
prim_output_list = []
pseudo_prim_output_list = []
wire_list = []
port_map_input_list = []
port_map_output_list = []
input_match = re.findall(r'input ([^;]+);',file_contents)
for match in input_match:
    match = re.sub(r'\s+','',match) #remove whitespace
    match = match.split(',')
    for signal_name in match:
        if(signal_name[0] == "["):
            continue
        prim_input_list.append(signal_name)
        port_map_input_list.append(signal_name)
input_vector_match = re.findall(r'input\s*\[\s*(\d+)\s*:(\d+)\s*\]\s*([^;]+);',file_contents)
for match in input_vector_match:
    print(match)
    num1 = int(match[0])
    num2 = int(match[1])
    print(match[2])
    signals = re.sub(r'\s+','',match[2])
    l_signal_list = signals.split(",")
    if(num1>num2):
        for i in range(num2,num1+1):
            for signal in l_signal_list:
                prim_input_list.append(signal+"["+str(i)+"]")
    elif(num2>num1):
        for i in range(num1,num2+1):
            for signal in l_signal_list:
                prim_input_list.append(signal+"["+str(i)+"]")
    else:
        for signal in l_signal_list:
                prim_input_list.append(signal+"["+str(num1)+"]")
    for signal in l_signal_list:
        port_map_input_list.append(signal)
output_match = re.findall(r'output ([^;]+);',file_contents)
for match in output_match:
    match = re.sub(r'\s+','',match) #remove whitespace
    match = match.split(',')
    for signal_name in match:
        if(signal_name[0] == "["):
            continue
        prim_output_list.append(signal_name)
        port_map_output_list.append(signal_name)
output_vector_match = re.findall(r'output\s*\[\s*(\d+)\s*:(\d+)\s*\]\s*([^;]+);',file_contents)
for match in output_vector_match:
    num1 = int(match[0])
    num2 = int(match[1])
    signals = re.sub(r'\s+','',match[2])
    l_signal_list = signals.split(",")
    if(num1>num2):
        for i in range(num2,num1+1):
            for signal in l_signal_list:
                prim_output_list.append(signal+"["+str(i)+"]")
    elif(num2>num1):
        for i in range(num1,num2+1):
            for signal in l_signal_list:
                prim_output_list.append(signal+"["+str(i)+"]")
    else:
        for signal in l_signal_list:
                prim_output_list.append(signal+"["+str(num1)+"]")
    for signal in l_signal_list:
        port_map_output_list.append(signal)
gate_match = re.findall(r'\s*(\S+)\s+(\S+)\s+(\([^;]+;)',file_contents)
for match in gate_match:
    port_list = re.sub(r'[\n\r]+','',match[2])
    outport_match = re.findall(r'(\.Q|\.QN|\.Q_N|\.X|\.Y)\s*\(\s*([^\)]+)\)', port_list)
    inport_match = re.findall(r'(\.\S+)\s*\(\s*([^\)]+)\)', port_list)
    for outport in outport_match:
        signal_name = re.sub(r'\s+','',outport[1]) #remove whitespace
        if(signal_name not in prim_output_list and signal_name not in wire_list):
            wire_list.append(signal_name)
    for inport in inport_match:
        signal_name = re.sub(r'\s+','',inport[1])
        if(inport[0]!=".Q" and inport[0]!=".QN" and inport[0]!=".Q_N" and inport[0]!=".X" and inport[0]!=".Y" and signal_name in prim_output_list):
            pseudo_prim_output_list.append(signal_name)
print("-------Desgin INFO--------")
print("primary output       : ", len(prim_output_list))
print("primary input        : ", len(prim_input_list))
print("port_map_input_list  : ", len(port_map_input_list))
print("port_map_output_list : ", len(port_map_output_list))
print("wires                : ", len(wire_list))

if(clk!=None and clk not in prim_input_list):
    print("ERROR: clock signal "+str(clk)+" not found. Exiting...")
if(rst!=None and rst not in prim_input_list):
    print("ERROR: reset signal "+str(rst)+" not found. Exiting...")

f_tb = open(args.output,'w')
f_tb.write("`timescale 1ns/10ps\n\n")
f_tb.write("module tb;\n")

pi_list = []
with open(piFile, 'r') as filehandle:
    lines = filehandle.readlines()
    for i in range(0, len(lines)):
        line = lines[i]
        line = line.strip()
        pi_list.append(line)

print("PI from cast         : ", len(pi_list))

prim_input_list = pi_list[::-1]

for wire in prim_input_list:
    f_tb.write("\treg "+wire+";\n")
for wire in prim_output_list:
    f_tb.write("\twire "+wire+";\n")
f_tb.write("\n")
f_tb.write("\t"+top+" uut(\n")
for wire in port_map_input_list:
    f_tb.write("\t\t."+wire+"("+wire+"),\n")
for i in range(len(port_map_output_list)-1):
    f_tb.write("\t\t."+port_map_output_list[i]+"("+port_map_output_list[i]+"),\n")
f_tb.write("\t\t."+port_map_output_list[-1]+"("+port_map_output_list[-1]+")")
f_tb.write("\t);\n\n\tinteger file, file_out;\n\n")
if(clk!=None):
    f_tb.write("\tinitial begin\n\t\t"+clk+"=0;\n\t\tforever #5 "+clk+" = ~"+clk+";\n\tend\n\n")
    prim_input_list.remove(clk)
f_tb.write('\tinitial begin\n\t\tfile_out=$fopen("'+args.log+'");\n\t\t$dumpfile("output.vcd");\n\t\t$dumpvars(0,tb);\n')

f_tb.write("\t\t{")
for i in range(len(prim_input_list)-1):
    f_tb.write(prim_input_list[-i-1]+",")
f_tb.write(prim_input_list[0]+"} = 0;\n")
if(rst!=None):
    f_tb.write("\t\t"+rst+" = "+str(reset_e)+";\n")
    f_tb.write("\t\t#10 "+rst+" = "+str(reset_e ^ 1)+";\n")
    prim_input_list.remove(rst)
f_pattern = open(args.test,'r')
for line in f_pattern:
    line = re.sub(r'\s+','',line)
    f_tb.write("\t\t{")
    for i in range(len(prim_input_list)-1):
        f_tb.write(prim_input_list[-i-1]+",")
    f_tb.write(prim_input_list[0]+"} = "+str(len(line))+"'b"+line+";\n")
    f_tb.write('\t\t#10 $fwrite(file_out,"%b\\n",{uut.')
    if(args.type == 'w'):
        f_tb.write(",uut.".join(wire_list)+"};\n")
    if(args.type == 'a'):
         f_tb.write(",uut.".join(prim_input_list)+",uut."+",uut.".join(prim_output_list)+",uut."+",uut.".join(wire_list)+"});\n")
f_tb.write("\t\t#100 $finish;\n\tend\nendmodule")

net_file_path = dumpDir + "/tb_net_file.txt"
net_file = open(net_file_path,'w')
if(args.type == 'w'):
    net_file.write("\n".join(wire_list))
if(args.type == 'a'):
    net_file.write("\n".join(prim_input_list)+"\n"+"\n".join(prim_output_list)+"\n"+"\n".join(wire_list))
