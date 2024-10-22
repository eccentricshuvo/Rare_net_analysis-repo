import argparse
import re

def get_parsed_data():

    net_list = []
    with open(nFile, 'r') as filehandle:
        lines = filehandle.readlines()
        for i in range(0, len(lines)):
            line = lines[i]
            line = line.strip()
            net_list.append(line)

    value_list = []
    with open(pFile, 'r') as filehandle:
        lines = filehandle.readlines()
        for i in range(0, len(lines)):
            line = lines[i]
            line = line.strip()
            value_list.append(list(line))

    net_value_file = open(oFile,'w')
    for i in range(0, len(net_list)):
        net_value_file.write(net_list[i])
        net_value_file.write(" ")
        for mult_result_idx in range(0, len(value_list)):
            net_value_file.write(value_list[mult_result_idx][i])
            net_value_file.write(" ")
        net_value_file.write("\n")
    net_value_file.close()

    print(len(net_list), len(value_list), len(value_list[0]))



if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="To parse pattern file")
    parser.add_argument("-nF", "--nFile",  required=True, help="Net file")
    parser.add_argument("-pF", "--pFile",  required=True, help="Net value file")
    parser.add_argument("-oF", "--oFile",  required=True, help="Output file name")

    group = parser.add_mutually_exclusive_group(required=True)
    group.add_argument('-q', '--quiet', action='store_true', help='Print less details')
    group.add_argument('-v', '--verbose', action='store_true',  help='Print more details')

    args = parser.parse_args()

    nFile = args.nFile
    pFile = args.pFile
    oFile = args.oFile

    get_parsed_data()
