echo c5315 LEDA 

#Trojans = 1
# flow with Tmax
python3 mero.py -f  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/c5315_netlist.v  -d  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/  -e /home/UFAD/pravin.gaikwad/mero_v2_1/src/ -m c5315 -comb -scan 1 -lib LEDA -v -thr 0.4 -N 10 -T 1 -TS 1000 -woTrojFile -tFile /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/valid_trojans_1.txt -seed 0 -tvF 1 -cF 0 -vFlag 0 -vFile  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/pre_opt_only_vector_w_nets.txt -justTroj 0 -justOptCov 0 -postOpt 0 -codeBase $base/mero_cast/ -compareiVeriFlag 1 -tmaxSrc ECE -graphStruct 0 -ndApp -1 -wTmax 1

# remaing flow without Tmax
python3 mero.py -f  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/c5315_netlist.v  -d  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/  -e /home/UFAD/pravin.gaikwad/mero_v2_1/src/ -m c5315 -comb -scan 1 -lib LEDA -v -thr 0.4 -N 10 -T 1 -TS 1000 -wTrojFile -tFile /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/valid_trojans_1.txt -seed 0 -tvF 1 -cF 0 -vFlag 0 -vFile  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/pre_opt_only_vector_w_nets.txt -justTroj 0 -justOptCov 0 -postOpt 0 -codeBase $base/mero_cast/ -compareiVeriFlag 1 -tmaxSrc ECE -graphStruct 0 -ndApp -1 -wTmax 0

#Trojans = 2
# flow with Tmax
python3 mero.py -f  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/c5315_netlist.v  -d  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/  -e /home/UFAD/pravin.gaikwad/mero_v2_1/src/ -m c5315 -comb -scan 1 -lib LEDA -v -thr 0.4 -N 10 -T 2 -TS 1000 -woTrojFile -tFile /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/valid_trojans_2.txt -seed 0 -tvF 1 -cF 0 -vFlag 0 -vFile  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/pre_opt_only_vector_w_nets.txt -justTroj 0 -justOptCov 0 -postOpt 0 -codeBase $base/mero_cast/ -compareiVeriFlag 1 -tmaxSrc ECE -graphStruct 0 -ndApp -1 -wTmax 1

# remaing flow without Tmax
python3 mero.py -f  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/c5315_netlist.v  -d  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/  -e /home/UFAD/pravin.gaikwad/mero_v2_1/src/ -m c5315 -comb -scan 1 -lib LEDA -v -thr 0.4 -N 10 -T 2 -TS 1000 -wTrojFile -tFile /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/valid_trojans_2.txt -seed 0 -tvF 1 -cF 0 -vFlag 0 -vFile  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/pre_opt_only_vector_w_nets.txt -justTroj 0 -justOptCov 0 -postOpt 0 -codeBase $base/mero_cast/ -compareiVeriFlag 1 -tmaxSrc ECE -graphStruct 0 -ndApp -1 -wTmax 0

#Trojans = 3
# flow with Tmax
python3 mero.py -f  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/c5315_netlist.v  -d  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/  -e /home/UFAD/pravin.gaikwad/mero_v2_1/src/ -m c5315 -comb -scan 1 -lib LEDA -v -thr 0.4 -N 10 -T 3 -TS 1000 -woTrojFile -tFile /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/valid_trojans_3.txt -seed 0 -tvF 1 -cF 0 -vFlag 0 -vFile  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/pre_opt_only_vector_w_nets.txt -justTroj 0 -justOptCov 0 -postOpt 0 -codeBase $base/mero_cast/ -compareiVeriFlag 1 -tmaxSrc ECE -graphStruct 0 -ndApp -1 -wTmax 1

# remaing flow without Tmax
python3 mero.py -f  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/c5315_netlist.v  -d  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/  -e /home/UFAD/pravin.gaikwad/mero_v2_1/src/ -m c5315 -comb -scan 1 -lib LEDA -v -thr 0.4 -N 10 -T 3 -TS 1000 -wTrojFile -tFile /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/valid_trojans_3.txt -seed 0 -tvF 1 -cF 0 -vFlag 0 -vFile  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/pre_opt_only_vector_w_nets.txt -justTroj 0 -justOptCov 0 -postOpt 0 -codeBase $base/mero_cast/ -compareiVeriFlag 1 -tmaxSrc ECE -graphStruct 0 -ndApp -1 -wTmax 0


#Trojans = 4
# flow with Tmax
python3 mero.py -f  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/c5315_netlist.v  -d  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/  -e /home/UFAD/pravin.gaikwad/mero_v2_1/src/ -m c5315 -comb -scan 1 -lib LEDA -v -thr 0.4 -N 10 -T 4 -TS 1000 -woTrojFile -tFile /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/valid_trojans_1.txt -seed 0 -tvF 1 -cF 0 -vFlag 0 -vFile  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/pre_opt_only_vector_w_nets.txt -justTroj 0 -justOptCov 0 -postOpt 0 -codeBase $base/mero_cast/ -compareiVeriFlag 1 -tmaxSrc ECE -graphStruct 0 -ndApp -1 -wTmax 1

# remaing flow without Tmax
python3 mero.py -f  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/c5315_netlist.v  -d  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/  -e /home/UFAD/pravin.gaikwad/mero_v2_1/src/ -m c5315 -comb -scan 1 -lib LEDA -v -thr 0.4 -N 10 -T 4 -TS 1000 -wTrojFile -tFile /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/valid_trojans_4.txt -seed 0 -tvF 1 -cF 0 -vFlag 0 -vFile  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS85/c5315/pre_opt_only_vector_w_nets.txt -justTroj 0 -justOptCov 0 -postOpt 0 -codeBase $base/mero_cast/ -compareiVeriFlag 1 -tmaxSrc ECE -graphStruct 0 -ndApp -1 -wTmax 0

