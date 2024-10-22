echo s400 LEDA 

#Trojans = 1
# flow with Tmax
python3 mero.py -f /home/UFAD/sudiptaparia/Downloads/mero_v2_1/s400_syn/s400_syn.v -d /home/UFAD/sudiptaparia/Downloads/mero_v2_1/s400_syn  -e /home/UFAD/sudiptaparia/Downloads/mero_v2_1/src -m s400 -seq -clk CLK -clkV 1 -wreset -rst RST -rstV 0 -scan 1 -v -thr 0.5 -lib LEDA -v -N 10 -T 1 -TS 1000 -seed 0 -woTrojFile -tvF 1 -cF 0 -vFlag 0 -justTroj 0 -justOptCov 0 -postOpt 0 -tmaxSrc ECE -graphStruct 0 -ndApp -1 -wTmax 1

#-codeBase $base/mero_cast/

# remaing flow without Tmax
#python3 mero.py -f  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/s9234.v  -d  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/  -e /home/UFAD/pravin.gaikwad/mero_v2_1/src/ -m s9234 -seq -clk blif_clk_net -clkV 0 -wreset -rst blif_reset_net -rstV 0 -scan 1 -lib LEDA -v -thr 0.5 -N 10 -T 1 -TS 1000 -wTrojFile -tFile /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/valid_trojans_1.txt -seed 0 -tvF 1 -cF 0 -vFlag 0 -vFile  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/pre_opt_only_vector_w_nets.txt -justTroj 0 -justOptCov 0 -postOpt 0 -codeBase $base/mero_cast/ -compareiVeriFlag 1 -tmaxSrc ECE -graphStruct 0 -ndApp -1 -wTmax 0

#Trojans = 2
# flow with Tmax
#python3 mero.py -f  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/s9234.v  -d  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/  -e /home/UFAD/pravin.gaikwad/mero_v2_1/src/ -m s9234 -seq -clk blif_clk_net -clkV 0 -wreset -rst blif_reset_net -rstV 0 -scan 1 -lib LEDA -v -thr 0.5 -N 10 -T 2 -TS 1000 -woTrojFile -tFile /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/valid_trojans_2.txt -seed 0 -tvF 1 -cF 0 -vFlag 0 -vFile  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/pre_opt_only_vector_w_nets.txt -justTroj 0 -justOptCov 0 -postOpt 0 -codeBase $base/mero_cast/ -compareiVeriFlag 1 -tmaxSrc ECE -graphStruct 0 -ndApp -1 -wTmax 1

# remaing flow without Tmax
#python3 mero.py -f  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/s9234.v  -d  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/  -e /home/UFAD/pravin.gaikwad/mero_v2_1/src/ -m s9234 -seq -clk blif_clk_net -clkV 0 -wreset -rst blif_reset_net -rstV 0 -scan 1 -lib LEDA -v -thr 0.5 -N 10 -T 2 -TS 1000 -wTrojFile -tFile /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/valid_trojans_2.txt -seed 0 -tvF 1 -cF 0 -vFlag 0 -vFile  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/pre_opt_only_vector_w_nets.txt -justTroj 0 -justOptCov 0 -postOpt 0 -codeBase $base/mero_cast/ -compareiVeriFlag 1 -tmaxSrc ECE -graphStruct 0 -ndApp -1 -wTmax 0

#Trojans = 3
# flow with Tmax
#python3 mero.py -f  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/s9234.v  -d  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/  -e /home/UFAD/pravin.gaikwad/mero_v2_1/src/ -m s9234 -seq -clk blif_clk_net -clkV 0 -wreset -rst blif_reset_net -rstV 0 -scan 1 -lib LEDA -v -thr 0.5 -N 10 -T 3 -TS 1000 -woTrojFile -tFile /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/valid_trojans_3.txt -seed 0 -tvF 1 -cF 0 -vFlag 0 -vFile  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/pre_opt_only_vector_w_nets.txt -justTroj 0 -justOptCov 0 -postOpt 0 -codeBase $base/mero_cast/ -compareiVeriFlag 1 -tmaxSrc ECE -graphStruct 0 -ndApp -1 -wTmax 1

# remaing flow without Tmax
#python3 mero.py -f  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/s9234.v  -d  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/  -e /home/UFAD/pravin.gaikwad/mero_v2_1/src/ -m s9234 -seq -clk blif_clk_net -clkV 0 -wreset -rst blif_reset_net -rstV 0 -scan 1 -lib LEDA -v -thr 0.5 -N 10 -T 3 -TS 1000 -wTrojFile -tFile /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/valid_trojans_3.txt -seed 0 -tvF 1 -cF 0 -vFlag 0 -vFile  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/pre_opt_only_vector_w_nets.txt -justTroj 0 -justOptCov 0 -postOpt 0 -codeBase $base/mero_cast/ -compareiVeriFlag 1 -tmaxSrc ECE -graphStruct 0 -ndApp -1 -wTmax 0

#Trojans = 4
# flow with Tmax
#python3 mero.py -f  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/s9234.v  -d  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/  -e /home/UFAD/pravin.gaikwad/mero_v2_1/src/ -m s9234 -seq -clk blif_clk_net -clkV 0 -wreset -rst blif_reset_net -rstV 0 -scan 1 -lib LEDA -v -thr 0.5 -N 10 -T 4 -TS 1000 -woTrojFile -tFile /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/valid_trojans_4.txt -seed 0 -tvF 1 -cF 0 -vFlag 0 -vFile  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/pre_opt_only_vector_w_nets.txt -justTroj 0 -justOptCov 0 -postOpt 0 -codeBase $base/mero_cast/ -compareiVeriFlag 1 -tmaxSrc ECE -graphStruct 0 -ndApp -1 -wTmax 1

# remaing flow without Tmax
#python3 mero.py -f  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/s9234.v  -d  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/  -e /home/UFAD/pravin.gaikwad/mero_v2_1/src/ -m s9234 -seq -clk blif_clk_net -clkV 0 -wreset -rst blif_reset_net -rstV 0 -scan 1 -lib LEDA -v -thr 0.5 -N 10 -T 4 -TS 1000 -wTrojFile -tFile /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/valid_trojans_4.txt -seed 0 -tvF 1 -cF 0 -vFlag 0 -vFile  /home/UFAD/pravin.gaikwad/Benchmarks//LEDA/ISCAS89/s9234/pre_opt_only_vector_w_nets.txt -justTroj 0 -justOptCov 0 -postOpt 0 -codeBase $base/mero_cast/ -compareiVeriFlag 1 -tmaxSrc ECE -graphStruct 0 -ndApp -1 -wTmax 0

