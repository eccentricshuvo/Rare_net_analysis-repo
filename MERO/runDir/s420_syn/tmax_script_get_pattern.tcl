read_netlist /home/UFAD/sudiptaparia/Downloads/mero_v2_1/src//lec25dscc25.v -library
read_netlist /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn/s420_syn.v
set_build -nodelete_unused_gates -merge noglobal_tie_propagate
run_build_model s420
add_clocks 1 CLK
set_scan_ability on -all 
drc 
test 
set pindata seq_sim_data 
#run_justification -full_sequential -set { DFF_12_N3 1 } -verbose -store
#current_net:DFF_12_N3
run_justification -full_sequential -set { 132 1 } -verbose -store
#run_justification -full_sequential -set { DFF_8_N3 1 } -verbose -store
#current_net:DFF_8_N3
run_justification -full_sequential -set { 117 1 } -verbose -store
#run_justification -full_sequential -set { DFF_0_N3 1 } -verbose -store
#current_net:DFF_0_N3
run_justification -full_sequential -set { 75 1 } -verbose -store
#run_justification -full_sequential -set { DFF_6_N3 1 } -verbose -store
#current_net:DFF_6_N3
run_justification -full_sequential -set { 84 1 } -verbose -store
#run_justification -full_sequential -set { DFF_4_N3 1 } -verbose -store
#current_net:DFF_4_N3
run_justification -full_sequential -set { 94 1 } -verbose -store
#run_justification -full_sequential -set { DFF_14_N3 1 } -verbose -store
#current_net:DFF_14_N3
run_justification -full_sequential -set { 124 1 } -verbose -store
#run_justification -full_sequential -set { DFF_10_N3 1 } -verbose -store
#current_net:DFF_10_N3
run_justification -full_sequential -set { 107 1 } -verbose -store
#run_justification -full_sequential -set { n154 0 } -verbose -store
#current_net:n154
run_justification -full_sequential -set { 67 0 } -verbose -store
#run_justification -full_sequential -set { n156 1 } -verbose -store
#current_net:n156
run_justification -full_sequential -set { 72 1 } -verbose -store
#run_justification -full_sequential -set { n158 0 } -verbose -store
#current_net:n158
run_justification -full_sequential -set { 76 0 } -verbose -store
#run_justification -full_sequential -set { n160 1 } -verbose -store
#current_net:n160
run_justification -full_sequential -set { 81 1 } -verbose -store
#run_justification -full_sequential -set { n146 0 } -verbose -store
#current_net:n146
run_justification -full_sequential -set { 90 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 } -verbose -store
#current_net:n148
run_justification -full_sequential -set { 91 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 } -verbose -store
#current_net:n150
run_justification -full_sequential -set { 103 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 } -verbose -store
#current_net:n152
run_justification -full_sequential -set { 104 1 } -verbose -store
#run_justification -full_sequential -set { n139 0 } -verbose -store
#current_net:n139
run_justification -full_sequential -set { 108 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 } -verbose -store
#current_net:n141
run_justification -full_sequential -set { 114 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 } -verbose -store
#current_net:n140
run_justification -full_sequential -set { 123 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 } -verbose -store
#current_net:n143
run_justification -full_sequential -set { 121 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 } -verbose -store
#current_net:n144
run_justification -full_sequential -set { 130 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 } -verbose -store
#current_net:n145
run_justification -full_sequential -set { 131 0 } -verbose -store
#run_justification -full_sequential -set { n149 0 } -verbose -store
#current_net:n149
run_justification -full_sequential -set { 106 0 } -verbose -store
#run_justification -full_sequential -set { n153 0 } -verbose -store
#current_net:n153
run_justification -full_sequential -set { 116 0 } -verbose -store
#run_justification -full_sequential -set { n157 0 } -verbose -store
#current_net:n157
run_justification -full_sequential -set { 83 0 } -verbose -store
#run_justification -full_sequential -set { n161 0 } -verbose -store
#current_net:n161
run_justification -full_sequential -set { 93 0 } -verbose -store
#run_justification -full_sequential -set { n168 0 } -verbose -store
#current_net:n168
run_justification -full_sequential -set { 74 0 } -verbose -store
report_patterns -internal -all 
report_primitives -pis > /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//tmax_pi.txt
echo scan_cells >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//tmax_pi.txt
report_scan_cells -all >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//tmax_pi.txt
exit 
