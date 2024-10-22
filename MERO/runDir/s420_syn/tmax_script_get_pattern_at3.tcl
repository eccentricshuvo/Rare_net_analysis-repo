read_netlist /home/UFAD/sudiptaparia/Downloads/mero_v2_1/src/lec25dscc25.v -library
read_netlist /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn/s420_syn.v
set_build -nodelete_unused_gates -merge noglobal_tie_propagate 
run_build_model s420

add_clocks 1 CLK
set_scan_ability on -all
drc
test
set pindata seq_sim_data 
#run_justification -full_sequential -set { n143 0 n148 1 n152 1 n154 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:0
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n148,1 n152,1 n154,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 91 1 104 1 67 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n152 1 n154 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:1
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n144,1 n152,1 n154,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 130 1 104 1 67 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n148 1 n150 0 n152 1 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:2
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n148,1 n150,0 n152,1 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 91 1 103 0 104 1 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n152 1 n154 0 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:3
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n152,1 n154,0 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 104 1 67 0 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n150 0 n156 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:4
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n144,1 n150,0 n156,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 130 1 103 0 72 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n150 0 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:5
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n144,1 n150,0 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 130 1 103 0 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n154 0 n156 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:6
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n152,1 n154,0 n156,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 104 1 67 0 72 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n148 1 n152 1 n154 0 DFF_12_N3 1 } -verbose -store
#attempt:7
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n148,1 n152,1 n154,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 91 1 104 1 67 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n145 0 n148 1 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:8
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n144,1 n145,0 n148,1 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 130 1 131 0 91 1 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n154 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:9
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n148,1 n152,1 n154,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 91 1 104 1 67 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n150 0 n154 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:10
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n144,1 n150,0 n154,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 130 1 103 0 67 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n145 0 n148 1 n150 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:11
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n145,0 n148,1 n150,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 131 0 91 1 103 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n145 0 n148 1 n154 0 DFF_12_N3 1 } -verbose -store
#attempt:12
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n144,1 n145,0 n148,1 n154,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 130 1 131 0 91 1 67 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n144 1 n150 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:13
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n144,1 n150,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 130 1 103 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n145 0 n152 1 n154 0 DFF_12_N3 1 } -verbose -store
#attempt:14
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n144,1 n145,0 n152,1 n154,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 130 1 131 0 104 1 67 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n152 1 n154 0 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:15
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n152,1 n154,0 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 104 1 67 0 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n148 1 n156 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:16
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n148,1 n156,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 91 1 72 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n145 0 n152 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:17
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n144,1 n145,0 n152,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 130 1 131 0 104 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n148 1 n150 0 n152 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:18
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n148,1 n150,0 n152,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 91 1 103 0 104 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n145 0 n152 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:19
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n144,1 n145,0 n152,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 130 1 131 0 104 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n152 1 n154 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:20
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n152,1 n154,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 104 1 67 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n150 0 n154 0 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:21
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n150,0 n154,0 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 103 0 67 0 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n145 0 n148 1 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:22
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n145,0 n148,1 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 131 0 91 1 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n145 0 n156 1 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:23
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n145,0 n156,1 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 131 0 72 1 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n148 1 n154 0 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:24
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n144,1 n148,1 n154,0 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 130 1 91 1 67 0 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n145 0 n148 1 n154 0 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:25
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n145,0 n148,1 n154,0 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 131 0 91 1 67 0 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n156 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:26
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n150,0 n152,1 n156,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 103 0 104 1 72 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n145 0 n148 1 n152 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:27
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n145,0 n148,1 n152,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 131 0 91 1 104 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n145 0 n152 1 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:28
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n145,0 n152,1 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 131 0 104 1 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n150 0 n156 1 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:29
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n150,0 n156,1 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 103 0 72 1 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n145 0 n148 1 n152 1 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:30
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n145,0 n148,1 n152,1 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 131 0 91 1 104 1 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n145 0 n150 0 n154 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:31
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n145,0 n150,0 n154,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 131 0 103 0 67 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n145 0 n148 1 n152 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:32
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n145,0 n148,1 n152,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 131 0 91 1 104 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n148 1 n152 1 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:33
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n148,1 n152,1 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 91 1 104 1 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n156 1 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:34
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n148,1 n150,0 n156,1 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 91 1 103 0 72 1 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n145 0 n148 1 n152 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:35
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n145,0 n148,1 n152,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 131 0 91 1 104 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n154 0 n156 1 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:36
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n154,0 n156,1 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 67 0 72 1 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n145 0 n148 1 n156 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:37
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n145,0 n148,1 n156,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 131 0 91 1 72 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n148 1 n150 0 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:38
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n144,1 n148,1 n150,0 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 130 1 91 1 103 0 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n152 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:39
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n148,1 n150,0 n152,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 91 1 103 0 104 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n145 0 n148 1 n150 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:40
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n145,0 n148,1 n150,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 131 0 91 1 103 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:41
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n148,1 n150,0 n154,0 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 91 1 103 0 67 0 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n145 0 n150 0 n156 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:42
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n145,0 n150,0 n156,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 131 0 103 0 72 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n148 1 n152 1 n154 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:43
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n148,1 n152,1 n154,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 91 1 104 1 67 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n144 1 n145 0 n154 0 DFF_12_N3 1 } -verbose -store
#attempt:44
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n144,1 n145,0 n154,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 130 1 131 0 67 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n148 1 n152 1 n156 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:45
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n148,1 n152,1 n156,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 91 1 104 1 72 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:46
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n148,1 n152,1 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 91 1 104 1 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n145 0 n152 1 n156 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:47
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n145,0 n152,1 n156,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 131 0 104 1 72 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n150 0 n152 1 n154 0 DFF_12_N3 1 } -verbose -store
#attempt:48
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n150,0 n152,1 n154,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 103 0 104 1 67 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n148 1 n154 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:49
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n144,1 n148,1 n154,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 130 1 91 1 67 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n145 0 n150 0 n154 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:50
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n145,0 n150,0 n154,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 131 0 103 0 67 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n145 0 n148 1 n152 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:51
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n145,0 n148,1 n152,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 131 0 91 1 104 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n148 1 n152 1 n156 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:52
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n148,1 n152,1 n156,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 91 1 104 1 72 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n156 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:53
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n148,1 n150,0 n156,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 91 1 103 0 72 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n145 0 n152 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:54
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n144,1 n145,0 n152,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 130 1 131 0 104 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n148 1 n152 1 n154 0 DFF_12_N3 1 } -verbose -store
#attempt:55
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n144,1 n148,1 n152,1 n154,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 130 1 91 1 104 1 67 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n145 0 n148 1 n156 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:56
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n145,0 n148,1 n156,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 131 0 91 1 72 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n145 0 n150 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:57
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n144,1 n145,0 n150,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 130 1 131 0 103 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n144 1 n145 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:58
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n144,1 n145,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 130 1 131 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n144 1 n145 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:59
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n144,1 n145,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 130 1 131 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n145 0 n152 1 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:60
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n145,0 n152,1 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 131 0 104 1 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n152 1 n156 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:61
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n152,1 n156,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 104 1 72 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n152 1 n154 0 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:62
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n152,1 n154,0 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 104 1 67 0 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n148 1 n154 0 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:63
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n144,1 n148,1 n154,0 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 130 1 91 1 67 0 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n150 0 n154 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:64
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n144,1 n150,0 n154,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 130 1 103 0 67 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n145 0 n148 1 n150 0 n154 0 DFF_12_N3 1 } -verbose -store
#attempt:65
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n145,0 n148,1 n150,0 n154,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 131 0 91 1 103 0 67 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n152 1 n156 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:66
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n144,1 n152,1 n156,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 130 1 104 1 72 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n148 1 n154 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:67
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n148,1 n154,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 91 1 67 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n144 1 n154 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:68
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n144,1 n154,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 130 1 67 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n144 1 n152 1 n154 0 DFF_12_N3 1 } -verbose -store
#attempt:69
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n144,1 n152,1 n154,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 130 1 104 1 67 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n145 0 n148 1 n152 1 DFF_12_N3 1 } -verbose -store
#attempt:70
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n144,1 n145,0 n148,1 n152,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 130 1 131 0 91 1 104 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n148 1 n156 1 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:71
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n148,1 n156,1 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 91 1 72 1 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n145 0 n152 1 n154 0 DFF_12_N3 1 } -verbose -store
#attempt:72
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n144,1 n145,0 n152,1 n154,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 130 1 131 0 104 1 67 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n148 1 n152 1 n154 0 DFF_12_N3 1 } -verbose -store
#attempt:73
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n144,1 n148,1 n152,1 n154,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 130 1 91 1 104 1 67 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n148 1 n150 0 n156 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:74
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n148,1 n150,0 n156,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 91 1 103 0 72 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n150 0 n154 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:75
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n144,1 n150,0 n154,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 130 1 103 0 67 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n154 0 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:76
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n150,0 n152,1 n154,0 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 103 0 104 1 67 0 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n145 0 n150 0 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:77
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n145,0 n150,0 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 131 0 103 0 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n145 0 n150 0 n154 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:78
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n145,0 n150,0 n154,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 131 0 103 0 67 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n145 0 n148 1 n152 1 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:79
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n145,0 n148,1 n152,1 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 131 0 91 1 104 1 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n152 1 n156 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:80
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n144,1 n152,1 n156,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 130 1 104 1 72 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n148 1 n150 0 n154 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:81
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n148,1 n150,0 n154,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 91 1 103 0 67 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n148 1 n150 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:82
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n148,1 n150,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 91 1 103 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n145 0 n148 1 n156 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:83
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n145,0 n148,1 n156,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 131 0 91 1 72 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n152 1 n154 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:84
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n152,1 n154,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 104 1 67 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n148 1 n152 1 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:85
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n148,1 n152,1 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 91 1 104 1 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n150 0 n152 1 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:86
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n150,0 n152,1 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 103 0 104 1 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n154 0 n156 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:87
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n148,1 n154,0 n156,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 91 1 67 0 72 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n145 0 n152 1 n156 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:88
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n145,0 n152,1 n156,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 131 0 104 1 72 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n156 1 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:89
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n152,1 n156,1 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 104 1 72 1 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n145 0 n152 1 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:90
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n144,1 n145,0 n152,1 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 130 1 131 0 104 1 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n156 1 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:91
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n148,1 n156,1 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 91 1 72 1 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n144 1 n148 1 DFF_12_N3 1 } -verbose -store
#attempt:92
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n144,1 n148,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 130 1 91 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n145 0 n148 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:93
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n145,0 n148,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 131 0 91 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:94
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n148,1 n150,0 n152,1 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 91 1 103 0 104 1 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n156 1 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:95
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n152,1 n156,1 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 104 1 72 1 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n145 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:96
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n144,1 n145,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 130 1 131 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n148 1 n154 0 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:97
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n148,1 n154,0 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 91 1 67 0 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n150 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:98
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n144,1 n150,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 130 1 103 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n152 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:99
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n144,1 n152,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 130 1 104 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n152 1 n154 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:100
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n152,1 n154,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 104 1 67 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n145 0 n150 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:101
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n145,0 n150,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 131 0 103 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n156 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:102
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n156,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 72 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n150 0 n156 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:103
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n150,0 n156,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 103 0 72 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n152 1 n154 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:104
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n152,1 n154,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 104 1 67 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n150 0 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:105
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n150,0 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 103 0 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n148 1 n150 0 n152 1 DFF_12_N3 1 } -verbose -store
#attempt:106
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n148,1 n150,0 n152,1 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 91 1 103 0 104 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:107
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n150,0 n152,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 103 0 104 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n150 0 n156 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:108
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n150,0 n156,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 103 0 72 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n145 0 n156 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:109
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n145,0 n156,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 131 0 72 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n148 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:110
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n148,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 91 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:111
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n148,1 n150,0 n154,0 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 91 1 103 0 67 0 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n145 0 n148 1 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:112
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n145,0 n148,1 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 131 0 91 1 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n156 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:113
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n144,1 n156,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 130 1 72 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n145 0 n156 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:114
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n145,0 n156,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 131 0 72 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n145 0 n152 1 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:115
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n145,0 n152,1 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 131 0 104 1 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n150 0 n152 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:116
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n150,0 n152,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 103 0 104 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:117
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n148,1 n150,0 n152,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 91 1 103 0 104 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n152 1 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:118
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n152,1 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 104 1 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n148 1 n150 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:119
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n148,1 n150,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 91 1 103 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n154 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:120
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n152,1 n154,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 104 1 67 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n150 0 n152 1 DFF_12_N3 1 } -verbose -store
#attempt:121
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n144,1 n150,0 n152,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 130 1 103 0 104 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n145 0 n150 0 n154 0 DFF_12_N3 1 } -verbose -store
#attempt:122
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n145,0 n150,0 n154,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 131 0 103 0 67 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n154 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:123
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n150,0 n152,1 n154,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 103 0 104 1 67 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n145 0 n154 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:124
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n145,0 n154,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 131 0 67 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n152 1 n154 0 DFF_12_N3 1 } -verbose -store
#attempt:125
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n144,1 n152,1 n154,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 130 1 104 1 67 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n156 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:126
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n144,1 n156,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 130 1 72 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n156 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:127
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n148,1 n152,1 n156,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 91 1 104 1 72 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n156 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:128
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n150,0 n154,0 n156,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 103 0 67 0 72 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n145 0 n148 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:129
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n145,0 n148,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 131 0 91 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n145 0 n154 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:130
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n145,0 n154,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 131 0 67 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n150 0 n154 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:131
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n150,0 n154,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 103 0 67 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n148 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:132
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n144,1 n148,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 130 1 91 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n144 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:133
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n144,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 130 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n148 1 n150 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:134
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n148,1 n150,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 91 1 103 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:135
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n148,1 n152,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 91 1 104 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n148 1 n150 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:136
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n148,1 n150,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 91 1 103 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n150 0 n154 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:137
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n150,0 n154,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 103 0 67 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n150 0 n154 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:138
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n150,0 n154,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 103 0 67 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n148 1 n154 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:139
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n148,1 n154,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 91 1 67 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n145 0 n154 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:140
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n145,0 n154,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 131 0 67 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n150 0 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:141
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n144,1 n150,0 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 130 1 103 0 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n154 0 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:142
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n150,0 n152,1 n154,0 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 103 0 104 1 67 0 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n145 0 n156 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:143
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n145,0 n156,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 131 0 72 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n156 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:144
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n144,1 n156,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 130 1 72 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n145 0 n154 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:145
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n145,0 n154,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 131 0 67 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n145 0 n148 1 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:146
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n145,0 n148,1 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 131 0 91 1 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n148 1 n150 0 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:147
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n148,1 n150,0 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 91 1 103 0 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n148 1 n152 1 n154 0 DFF_12_N3 1 } -verbose -store
#attempt:148
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n148,1 n152,1 n154,0 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 91 1 104 1 67 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n145 0 n148 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:149
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n145,0 n148,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 131 0 91 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n148 1 n156 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:150
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n148,1 n156,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 91 1 72 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n148 1 n150 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:151
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n148,1 n150,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 91 1 103 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n145 0 n148 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:152
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n145,0 n148,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 131 0 91 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n150 0 n154 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:153
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n150,0 n154,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 103 0 67 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n148 1 n150 0 n154 0 DFF_12_N3 1 } -verbose -store
#attempt:154
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n148,1 n150,0 n154,0 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 91 1 103 0 67 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n150 0 n154 0 DFF_12_N3 1 } -verbose -store
#attempt:155
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n150,0 n154,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 103 0 67 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n150 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:156
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n150,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 103 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n145 0 n148 1 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:157
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n145,0 n148,1 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 131 0 91 1 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n150 0 n156 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:158
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n150,0 n156,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 103 0 72 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:159
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n148,1 n150,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 91 1 103 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n148 1 n150 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:160
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n148,1 n150,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 91 1 103 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n154 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:161
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n148,1 n154,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 91 1 67 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n145 0 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:162
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n145,0 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 131 0 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n145 0 n154 0 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:163
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n145,0 n154,0 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 131 0 67 0 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n150 0 n154 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:164
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n150,0 n154,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 103 0 67 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n150 0 n152 1 n154 0 DFF_12_N3 1 } -verbose -store
#attempt:165
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n150,0 n152,1 n154,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 103 0 104 1 67 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n148 1 n152 1 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:166
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n148,1 n152,1 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 91 1 104 1 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n148 1 n156 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:167
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n148,1 n156,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 91 1 72 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n154 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:168
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n154,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 67 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n156 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:169
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n150,0 n152,1 n156,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 103 0 104 1 72 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n150 0 n156 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:170
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n150,0 n156,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 103 0 72 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:171
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n148,1 n152,1 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 91 1 104 1 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n154 0 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:172
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n144,1 n154,0 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 130 1 67 0 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n145 0 n148 1 DFF_12_N3 1 } -verbose -store
#attempt:173
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n145,0 n148,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 131 0 91 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n150 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:174
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n150,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 103 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n156 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:175
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n152,1 n156,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 104 1 72 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n154 0 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:176
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n154,0 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 67 0 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:177
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n148,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 91 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n145 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:178
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n145,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 131 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n148 1 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:179
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n148,1 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 91 1 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:180
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n150,0 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 103 0 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n152 1 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:181
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n152,1 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 104 1 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:182
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n148,1 n154,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 91 1 67 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n150 0 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:183
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n150,0 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 103 0 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n156 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:184
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n148,1 n156,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 91 1 72 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:185
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n144,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 130 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n145 0 DFF_12_N3 1 } -verbose -store
#attempt:186
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n144,1 n145,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 130 1 131 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n145 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:187
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n145,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 131 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:188
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n145 0 n154 0 DFF_12_N3 1 } -verbose -store
#attempt:189
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n145,0 n154,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 131 0 67 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n145 0 n152 1 DFF_12_N3 1 } -verbose -store
#attempt:190
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n145,0 n152,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 131 0 104 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n150 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:191
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n150,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 103 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 DFF_12_N3 1 } -verbose -store
#attempt:192
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n148,1 n150,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 91 1 103 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n148 1 n152 1 DFF_12_N3 1 } -verbose -store
#attempt:193
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n148,1 n152,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 91 1 104 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:194
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 DFF_12_N3 1 } -verbose -store
#attempt:195
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n148,1 n150,0 n152,1 DFF_12_N3,1 
run_justification -full_sequential -set { 91 1 103 0 104 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n152 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:196
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n152,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 104 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n150 0 DFF_12_N3 1 } -verbose -store
#attempt:197
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n150,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 103 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:198
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n148,1 n154,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 91 1 67 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:199
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n148,1 n154,0 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 91 1 67 0 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n150 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:200
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n150,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 103 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n154 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:201
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n154,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 67 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n150 0 DFF_12_N3 1 } -verbose -store
#attempt:202
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n144,1 n150,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 130 1 103 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n148 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:203
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n148,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 91 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n154 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:204
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n154,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 67 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:205
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n144,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 130 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n154 0 DFF_12_N3 1 } -verbose -store
#attempt:206
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n148,1 n154,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 91 1 67 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n150 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:207
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n150,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 103 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n145 0 n152 1 DFF_12_N3 1 } -verbose -store
#attempt:208
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n145,0 n152,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 131 0 104 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 DFF_12_N3 1 } -verbose -store
#attempt:209
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n148,1 n150,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 91 1 103 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n154 0 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:210
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n154,0 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 67 0 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n156 1 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:211
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n156,1 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 72 1 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n148 1 n150 0 DFF_12_N3 1 } -verbose -store
#attempt:212
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n148,1 n150,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 91 1 103 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n154 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:213
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n154,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 67 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n154 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:214
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n154,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 67 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:215
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n156 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:216
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n156,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 72 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n152 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:217
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n152,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 104 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n145 0 n150 0 DFF_12_N3 1 } -verbose -store
#attempt:218
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n145,0 n150,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 131 0 103 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:219
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n148,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 91 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:220
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n150,0 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 103 0 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n156 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:221
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n148,1 n156,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 91 1 72 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n154 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:222
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n154,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 67 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:223
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n150,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 103 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n145 0 n154 0 DFF_12_N3 1 } -verbose -store
#attempt:224
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n145,0 n154,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 131 0 67 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n154 0 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:225
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n154,0 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 67 0 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:226
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:227
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n148,1 n154,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 91 1 67 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n148 1 DFF_12_N3 1 } -verbose -store
#attempt:228
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n144,1 n148,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 130 1 91 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n150 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:229
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n150,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 103 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:230
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n148,1 n154,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 91 1 67 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n156 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:231
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n148,1 n156,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 91 1 72 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:232
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n150,0 n152,1 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 103 0 104 1 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n156 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:233
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n156,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 72 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 DFF_12_N3 1 } -verbose -store
#attempt:234
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n148,1 n152,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 91 1 104 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:235
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n152,1 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 104 1 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:236
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n145 0 n148 1 DFF_12_N3 1 } -verbose -store
#attempt:237
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n145,0 n148,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 131 0 91 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n145 0 n152 1 DFF_12_N3 1 } -verbose -store
#attempt:238
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n145,0 n152,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 131 0 104 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n156 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:239
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n156,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 72 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n145 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:240
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n145,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 131 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n156 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:241
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n148,1 n156,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 91 1 72 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:242
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:243
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n150 0 n152 1 DFF_12_N3 1 } -verbose -store
#attempt:244
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n150,0 n152,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 103 0 104 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:245
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n150,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 103 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n145 0 n154 0 DFF_12_N3 1 } -verbose -store
#attempt:246
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n145,0 n154,0 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 131 0 67 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n152 1 DFF_12_N3 1 } -verbose -store
#attempt:247
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n152,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 104 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:248
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:249
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:250
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n148,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 91 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n156 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:251
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n156,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 72 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 DFF_12_N3 1 } -verbose -store
#attempt:252
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n152,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 104 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n154 0 DFF_12_N3 1 } -verbose -store
#attempt:253
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n152,1 n154,0 DFF_12_N3,1 
run_justification -full_sequential -set { 104 1 67 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n152 1 DFF_12_N3 1 } -verbose -store
#attempt:254
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n152,1 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 104 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:255
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n150,0 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 103 0 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n145 0 DFF_12_N3 1 } -verbose -store
#attempt:256
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n145,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 131 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:257
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n152,1 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 104 1 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 DFF_12_N3 1 } -verbose -store
#attempt:258
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n148,1 n152,1 DFF_12_N3,1 
run_justification -full_sequential -set { 91 1 104 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 DFF_12_N3 1 } -verbose -store
#attempt:259
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n150,0 n152,1 DFF_12_N3,1 
run_justification -full_sequential -set { 103 0 104 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:260
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:261
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:262
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n148,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 91 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 DFF_12_N3 1 } -verbose -store
#attempt:263
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n144,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 130 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n150 0 DFF_12_N3 1 } -verbose -store
#attempt:264
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n150,0 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 103 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:265
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:266
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 DFF_12_N3 1 } -verbose -store
#attempt:267
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n143,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 121 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n154 0 DFF_12_N3 1 } -verbose -store
#attempt:268
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n154,0 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 67 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:269
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n148 1 DFF_12_N3 1 } -verbose -store
#attempt:270
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n148,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 91 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:271
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:272
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:273
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:274
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n148,1 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 91 1 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n154 0 n158 0 DFF_12_N3 1 } -verbose -store
#attempt:275
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n154,0 n158,0 DFF_12_N3,1 
run_justification -full_sequential -set { 67 0 76 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 DFF_12_N3 1 } -verbose -store
#attempt:276
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n144,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 130 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n145 0 DFF_12_N3 1 } -verbose -store
#attempt:277
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n145,0 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 131 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 DFF_12_N3 1 } -verbose -store
#attempt:278
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n148,1 n150,0 DFF_12_N3,1 
run_justification -full_sequential -set { 91 1 103 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n154 0 DFF_12_N3 1 } -verbose -store
#attempt:279
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n154,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 67 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:280
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n143,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 121 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n152 1 DFF_12_N3 1 } -verbose -store
#attempt:281
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n152,1 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 104 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 DFF_12_N3 1 } -verbose -store
#attempt:282
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n150,0 n152,1 DFF_12_N3,1 
run_justification -full_sequential -set { 103 0 104 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:283
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:284
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n150,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 103 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:285
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n150,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 103 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n154 0 DFF_12_N3 1 } -verbose -store
#attempt:286
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n154,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 67 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:287
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n158 0 n160 1 DFF_12_N3 1 } -verbose -store
#attempt:288
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n158,0 n160,1 DFF_12_N3,1 
run_justification -full_sequential -set { 76 0 81 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:289
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n154 0 DFF_12_N3 1 } -verbose -store
#attempt:290
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n145,0 n154,0 DFF_12_N3,1 
run_justification -full_sequential -set { 131 0 67 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 n150 0 DFF_12_N3 1 } -verbose -store
#attempt:291
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n144,1 n150,0 DFF_12_N3,1 
run_justification -full_sequential -set { 130 1 103 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n145 0 DFF_12_N3 1 } -verbose -store
#attempt:292
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n141,1 n145,0 DFF_12_N3,1 
run_justification -full_sequential -set { 114 1 131 0 132 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n156 1 DFF_12_N3 1 } -verbose -store
#attempt:293
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 n150,0 n156,1 DFF_12_N3,1 
run_justification -full_sequential -set { 103 0 72 1 132 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n156 1 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:294
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n152,1 n156,1 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 104 1 72 1 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n153 0 n154 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:295
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n153,0 n154,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 116 0 67 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n153 0 n156 1 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:296
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 n153,0 n156,1 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 116 0 72 1 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n153 0 n154 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:297
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n152,1 n153,0 n154,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 104 1 116 0 67 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n153 0 n154 0 n156 1 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:298
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n153,0 n154,0 n156,1 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 116 0 67 0 72 1 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n153 0 n154 0 n156 1 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:299
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n153,0 n154,0 n156,1 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 116 0 67 0 72 1 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n156 1 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:300
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n152,1 n156,1 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 104 1 72 1 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n153 0 n154 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:301
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n152,1 n153,0 n154,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 104 1 116 0 67 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n153 0 n154 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:302
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n152,1 n153,0 n154,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 104 1 116 0 67 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n156 1 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:303
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n154,0 n156,1 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 67 0 72 1 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:304
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n154,0 n156,1 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 67 0 72 1 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n154 0 n156 1 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:305
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n152,1 n154,0 n156,1 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 104 1 67 0 72 1 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n153 0 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:306
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n152,1 n153,0 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 104 1 116 0 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n153 0 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:307
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n152,1 n153,0 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 104 1 116 0 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n153 0 n156 1 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:308
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n153,0 n156,1 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 116 0 72 1 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n153 0 n156 1 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:309
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n152,1 n153,0 n156,1 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 104 1 116 0 72 1 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n154 0 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:310
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n152,1 n154,0 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 104 1 67 0 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n153 0 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:311
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n152,1 n153,0 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 104 1 116 0 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:312
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n152,1 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 104 1 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n154 0 n156 1 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:313
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n152,1 n154,0 n156,1 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 104 1 67 0 72 1 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n154 0 n156 1 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:314
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n152,1 n154,0 n156,1 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 104 1 67 0 72 1 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n153 0 n156 1 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:315
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n153,0 n156,1 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 116 0 72 1 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n153 0 n154 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:316
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n152,1 n153,0 n154,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 104 1 116 0 67 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n153 0 n156 1 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:317
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n152,1 n153,0 n156,1 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 104 1 116 0 72 1 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n154 0 n156 1 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:318
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 n154,0 n156,1 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 67 0 72 1 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n153 0 n156 1 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:319
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n153,0 n156,1 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 116 0 72 1 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n153 0 n154 0 n156 1 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:320
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 n153,0 n154,0 n156,1 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 116 0 67 0 72 1 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n154 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:321
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n152,1 n154,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 104 1 67 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n156 1 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:322
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n152,1 n156,1 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 104 1 72 1 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n153 0 n154 0 n156 1 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:323
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 n153,0 n154,0 n156,1 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 116 0 67 0 72 1 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n156 1 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:324
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n154,0 n156,1 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 67 0 72 1 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n154 0 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:325
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n152,1 n154,0 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 104 1 67 0 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n153 0 n154 0 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:326
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n153,0 n154,0 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 116 0 67 0 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n156 1 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:327
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n152,1 n156,1 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 104 1 72 1 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n153 0 n156 1 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:328
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 n153,0 n156,1 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 116 0 72 1 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n153 0 n154 0 n156 1 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:329
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n153,0 n154,0 n156,1 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 116 0 67 0 72 1 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n156 1 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:330
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n154,0 n156,1 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 67 0 72 1 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n153 0 n156 1 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:331
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n152,1 n153,0 n156,1 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 104 1 116 0 72 1 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n153 0 n154 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:332
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n153,0 n154,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 116 0 67 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n153 0 n154 0 DFF_8_N3 1 } -verbose -store
#attempt:333
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n152,1 n153,0 n154,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 104 1 116 0 67 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n154 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:334
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n152,1 n154,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 104 1 67 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n153 0 n154 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:335
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n152,1 n153,0 n154,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 104 1 116 0 67 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n153 0 n154 0 n156 1 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:336
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n153,0 n154,0 n156,1 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 116 0 67 0 72 1 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n154 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:337
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n152,1 n154,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 104 1 67 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n153 0 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:338
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 n153,0 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 116 0 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n154 0 DFF_8_N3 1 } -verbose -store
#attempt:339
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n152,1 n154,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 104 1 67 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n153 0 n154 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:340
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n153,0 n154,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 116 0 67 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n156 1 DFF_8_N3 1 } -verbose -store
#attempt:341
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n152,1 n156,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 104 1 72 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n153 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:342
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n152,1 n153,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 104 1 116 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:343
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n154 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:344
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n152,1 n154,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 104 1 67 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:345
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:346
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n152,1 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 104 1 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:347
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n154,0 n156,1 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 67 0 72 1 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n156 1 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:348
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 n156,1 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 72 1 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n156 1 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:349
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n154,0 n156,1 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 67 0 72 1 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n156 1 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:350
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n156,1 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 72 1 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:351
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n154,0 n156,1 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 67 0 72 1 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:352
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n154,0 n156,1 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 67 0 72 1 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n154 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:353
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n152,1 n154,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 104 1 67 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:354
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n154,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 67 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n153 0 n154 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:355
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n153,0 n154,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 116 0 67 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n153 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:356
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n152,1 n153,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 104 1 116 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n153 0 n154 0 n156 1 DFF_8_N3 1 } -verbose -store
#attempt:357
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 n153,0 n154,0 n156,1 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 116 0 67 0 72 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n153 0 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:358
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n153,0 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 116 0 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n153 0 n154 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:359
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n153,0 n154,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 116 0 67 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:360
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n152,1 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 104 1 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n153 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:361
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n153,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 116 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:362
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n154,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 67 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n153 0 n154 0 n156 1 DFF_8_N3 1 } -verbose -store
#attempt:363
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n153,0 n154,0 n156,1 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 116 0 67 0 72 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n153 0 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:364
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n153,0 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 116 0 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n154 0 DFF_8_N3 1 } -verbose -store
#attempt:365
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n152,1 n154,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 104 1 67 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n153 0 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:366
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 n153,0 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 116 0 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n154 0 n156 1 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:367
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n154,0 n156,1 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 67 0 72 1 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n154 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:368
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n152,1 n154,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 104 1 67 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n153 0 n156 1 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:369
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 n153,0 n156,1 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 116 0 72 1 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n154 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:370
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n152,1 n154,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 104 1 67 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n153 0 n154 0 DFF_8_N3 1 } -verbose -store
#attempt:371
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n153,0 n154,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 116 0 67 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n153 0 n154 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:372
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n153,0 n154,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 116 0 67 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n153 0 n154 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:373
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n153,0 n154,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 116 0 67 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n153 0 n154 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:374
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n153,0 n154,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 116 0 67 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n153 0 DFF_8_N3 1 } -verbose -store
#attempt:375
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n152,1 n153,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 104 1 116 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n156 1 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:376
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n152,1 n156,1 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 104 1 72 1 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n156 1 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:377
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n152,1 n156,1 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 104 1 72 1 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n156 1 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:378
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n156,1 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 72 1 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n154 0 n156 1 DFF_8_N3 1 } -verbose -store
#attempt:379
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n152,1 n154,0 n156,1 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 104 1 67 0 72 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:380
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n154,0 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 67 0 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n153 0 n154 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:381
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n153,0 n154,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 116 0 67 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n156 1 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:382
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n156,1 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 72 1 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:383
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n152,1 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 104 1 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n154 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:384
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n152,1 n154,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 104 1 67 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n153 0 n154 0 DFF_8_N3 1 } -verbose -store
#attempt:385
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n152,1 n153,0 n154,0 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 104 1 116 0 67 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n153 0 n154 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:386
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n153,0 n154,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 116 0 67 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n153 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:387
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n152,1 n153,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 104 1 116 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n156 1 DFF_8_N3 1 } -verbose -store
#attempt:388
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n152,1 n156,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 104 1 72 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n153 0 DFF_8_N3 1 } -verbose -store
#attempt:389
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n152,1 n153,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 104 1 116 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n153 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:390
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n153,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 116 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:391
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 DFF_8_N3 1 } -verbose -store
#attempt:392
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n152,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 104 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n153 0 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:393
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n153,0 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 116 0 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n156 1 DFF_8_N3 1 } -verbose -store
#attempt:394
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n152,1 n156,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 104 1 72 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n153 0 n156 1 DFF_8_N3 1 } -verbose -store
#attempt:395
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n153,0 n156,1 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 116 0 72 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n153 0 n156 1 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:396
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n153,0 n156,1 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 116 0 72 1 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n154 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:397
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 n154,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 67 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:398
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n156 1 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:399
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 n156,1 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 72 1 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n154 0 n156 1 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:400
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n154,0 n156,1 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 67 0 72 1 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n156 1 DFF_8_N3 1 } -verbose -store
#attempt:401
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n154,0 n156,1 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 67 0 72 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n154 0 DFF_8_N3 1 } -verbose -store
#attempt:402
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n152,1 n154,0 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 104 1 67 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n154 0 DFF_8_N3 1 } -verbose -store
#attempt:403
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n152,1 n154,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 104 1 67 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n153 0 DFF_8_N3 1 } -verbose -store
#attempt:404
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n153,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 116 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:405
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n154,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 67 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n154 0 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:406
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n154,0 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 67 0 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n154 0 DFF_8_N3 1 } -verbose -store
#attempt:407
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n152,1 n154,0 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 104 1 67 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n153 0 n156 1 DFF_8_N3 1 } -verbose -store
#attempt:408
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n153,0 n156,1 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 116 0 72 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 DFF_8_N3 1 } -verbose -store
#attempt:409
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n154,0 n156,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 67 0 72 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:410
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n153 0 DFF_8_N3 1 } -verbose -store
#attempt:411
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n152,1 n153,0 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 104 1 116 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:412
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n152,1 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 104 1 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:413
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n152,1 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 104 1 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n153 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:414
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n153,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 116 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n154 0 n156 1 DFF_8_N3 1 } -verbose -store
#attempt:415
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 n154,0 n156,1 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 67 0 72 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:416
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n156 1 DFF_8_N3 1 } -verbose -store
#attempt:417
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n154,0 n156,1 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 67 0 72 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:418
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n154,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 67 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n153 0 DFF_8_N3 1 } -verbose -store
#attempt:419
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n153,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 116 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n154 0 DFF_8_N3 1 } -verbose -store
#attempt:420
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n152,1 n154,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 104 1 67 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n154 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:421
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 n154,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 67 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:422
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n154,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 67 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n154 0 DFF_8_N3 1 } -verbose -store
#attempt:423
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n152,1 n154,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 104 1 67 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:424
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n153 0 n158 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:425
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n153,0 n158,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 116 0 76 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n153 0 DFF_8_N3 1 } -verbose -store
#attempt:426
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n152,1 n153,0 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 104 1 116 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n153 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:427
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n153,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 116 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n154 0 n156 1 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:428
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n154,0 n156,1 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 67 0 72 1 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n153 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:429
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n153,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 116 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n153 0 n154 0 DFF_8_N3 1 } -verbose -store
#attempt:430
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n153,0 n154,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 116 0 67 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n153 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:431
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n153,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 116 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n156 1 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:432
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 n156,1 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 72 1 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n154 0 DFF_8_N3 1 } -verbose -store
#attempt:433
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n152,1 n154,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 104 1 67 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n156 1 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:434
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n156,1 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 72 1 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:435
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n154,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 67 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:436
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n150,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 103 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n154 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:437
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 n154,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 67 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n153 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:438
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n153,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 116 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n154 0 n156 1 DFF_8_N3 1 } -verbose -store
#attempt:439
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n154,0 n156,1 DFF_8_N3,1 
run_justification -full_sequential -set { 67 0 72 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n154 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:440
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n154,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 67 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n156 1 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:441
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n156,1 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 72 1 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n154 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:442
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n154,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 67 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:443
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 DFF_8_N3 1 } -verbose -store
#attempt:444
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n152,1 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 104 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n156 1 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:445
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n156,1 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 72 1 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 DFF_8_N3 1 } -verbose -store
#attempt:446
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n154,0 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 67 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n153 0 n156 1 DFF_8_N3 1 } -verbose -store
#attempt:447
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n153,0 n156,1 DFF_8_N3,1 
run_justification -full_sequential -set { 116 0 72 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n156 1 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:448
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n156,1 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 72 1 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n153 0 DFF_8_N3 1 } -verbose -store
#attempt:449
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 n153,0 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 116 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n153 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:450
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n153,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 116 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:451
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n153 0 DFF_8_N3 1 } -verbose -store
#attempt:452
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 n153,0 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 116 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n154 0 n156 1 DFF_8_N3 1 } -verbose -store
#attempt:453
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n154,0 n156,1 DFF_8_N3,1 
run_justification -full_sequential -set { 67 0 72 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n153 0 n156 1 DFF_8_N3 1 } -verbose -store
#attempt:454
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n153,0 n156,1 DFF_8_N3,1 
run_justification -full_sequential -set { 116 0 72 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n156 1 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:455
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n156,1 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 72 1 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:456
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n154 0 n158 0 DFF_8_N3 1 } -verbose -store
#attempt:457
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n154,0 n158,0 DFF_8_N3,1 
run_justification -full_sequential -set { 67 0 76 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 DFF_8_N3 1 } -verbose -store
#attempt:458
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n152,1 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 104 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 DFF_8_N3 1 } -verbose -store
#attempt:459
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n152,1 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 104 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n156 1 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:460
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n156,1 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 72 1 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 DFF_8_N3 1 } -verbose -store
#attempt:461
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n148,1 n154,0 DFF_8_N3,1 
run_justification -full_sequential -set { 91 1 67 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n154 0 DFF_8_N3 1 } -verbose -store
#attempt:462
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 n154,0 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 67 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n153 0 n160 1 DFF_8_N3 1 } -verbose -store
#attempt:463
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n153,0 n160,1 DFF_8_N3,1 
run_justification -full_sequential -set { 116 0 81 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 DFF_8_N3 1 } -verbose -store
#attempt:464
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n150,0 n154,0 DFF_8_N3,1 
run_justification -full_sequential -set { 103 0 67 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n161 0 n160 1 n158 0 n156 1 n154 0 DFF_4_N3 1 } -verbose -store
#attempt:465
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n161,0 n160,1 n158,0 n156,1 n154,0 DFF_4_N3,1 
run_justification -full_sequential -set { 93 0 81 1 76 0 72 1 67 0 94 1 } -verbose -store
#run_justification -full_sequential -set { n160 1 n158 0 n156 1 n154 0 DFF_4_N3 1 } -verbose -store
#attempt:466
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n160,1 n158,0 n156,1 n154,0 DFF_4_N3,1 
run_justification -full_sequential -set { 81 1 76 0 72 1 67 0 94 1 } -verbose -store
#run_justification -full_sequential -set { n161 0 n158 0 n156 1 n154 0 DFF_4_N3 1 } -verbose -store
#attempt:467
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n161,0 n158,0 n156,1 n154,0 DFF_4_N3,1 
run_justification -full_sequential -set { 93 0 76 0 72 1 67 0 94 1 } -verbose -store
#run_justification -full_sequential -set { n161 0 n160 1 n156 1 n154 0 DFF_4_N3 1 } -verbose -store
#attempt:468
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n161,0 n160,1 n156,1 n154,0 DFF_4_N3,1 
run_justification -full_sequential -set { 93 0 81 1 72 1 67 0 94 1 } -verbose -store
#run_justification -full_sequential -set { n161 0 n160 1 n158 0 n154 0 DFF_4_N3 1 } -verbose -store
#attempt:469
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n161,0 n160,1 n158,0 n154,0 DFF_4_N3,1 
run_justification -full_sequential -set { 93 0 81 1 76 0 67 0 94 1 } -verbose -store
#run_justification -full_sequential -set { n161 0 n160 1 n158 0 n156 1 DFF_4_N3 1 } -verbose -store
#attempt:470
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n161,0 n160,1 n158,0 n156,1 DFF_4_N3,1 
run_justification -full_sequential -set { 93 0 81 1 76 0 72 1 94 1 } -verbose -store
#run_justification -full_sequential -set { n158 0 n156 1 n154 0 DFF_4_N3 1 } -verbose -store
#attempt:471
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n158,0 n156,1 n154,0 DFF_4_N3,1 
run_justification -full_sequential -set { 76 0 72 1 67 0 94 1 } -verbose -store
#run_justification -full_sequential -set { n160 1 n156 1 n154 0 DFF_4_N3 1 } -verbose -store
#attempt:472
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n160,1 n156,1 n154,0 DFF_4_N3,1 
run_justification -full_sequential -set { 81 1 72 1 67 0 94 1 } -verbose -store
#run_justification -full_sequential -set { n160 1 n158 0 n154 0 DFF_4_N3 1 } -verbose -store
#attempt:473
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n160,1 n158,0 n154,0 DFF_4_N3,1 
run_justification -full_sequential -set { 81 1 76 0 67 0 94 1 } -verbose -store
#run_justification -full_sequential -set { n160 1 n158 0 n156 1 DFF_4_N3 1 } -verbose -store
#attempt:474
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n160,1 n158,0 n156,1 DFF_4_N3,1 
run_justification -full_sequential -set { 81 1 76 0 72 1 94 1 } -verbose -store
#run_justification -full_sequential -set { n161 0 n156 1 n154 0 DFF_4_N3 1 } -verbose -store
#attempt:475
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n161,0 n156,1 n154,0 DFF_4_N3,1 
run_justification -full_sequential -set { 93 0 72 1 67 0 94 1 } -verbose -store
#run_justification -full_sequential -set { n161 0 n158 0 n154 0 DFF_4_N3 1 } -verbose -store
#attempt:476
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n161,0 n158,0 n154,0 DFF_4_N3,1 
run_justification -full_sequential -set { 93 0 76 0 67 0 94 1 } -verbose -store
#run_justification -full_sequential -set { n161 0 n158 0 n156 1 DFF_4_N3 1 } -verbose -store
#attempt:477
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n161,0 n158,0 n156,1 DFF_4_N3,1 
run_justification -full_sequential -set { 93 0 76 0 72 1 94 1 } -verbose -store
#run_justification -full_sequential -set { n161 0 n160 1 n154 0 DFF_4_N3 1 } -verbose -store
#attempt:478
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n161,0 n160,1 n154,0 DFF_4_N3,1 
run_justification -full_sequential -set { 93 0 81 1 67 0 94 1 } -verbose -store
#run_justification -full_sequential -set { n161 0 n160 1 n156 1 DFF_4_N3 1 } -verbose -store
#attempt:479
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n161,0 n160,1 n156,1 DFF_4_N3,1 
run_justification -full_sequential -set { 93 0 81 1 72 1 94 1 } -verbose -store
#run_justification -full_sequential -set { n161 0 n160 1 n158 0 DFF_4_N3 1 } -verbose -store
#attempt:480
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n161,0 n160,1 n158,0 DFF_4_N3,1 
run_justification -full_sequential -set { 93 0 81 1 76 0 94 1 } -verbose -store
#run_justification -full_sequential -set { n156 1 n154 0 DFF_4_N3 1 } -verbose -store
#attempt:481
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n156,1 n154,0 DFF_4_N3,1 
run_justification -full_sequential -set { 72 1 67 0 94 1 } -verbose -store
#run_justification -full_sequential -set { n158 0 n154 0 DFF_4_N3 1 } -verbose -store
#attempt:482
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n158,0 n154,0 DFF_4_N3,1 
run_justification -full_sequential -set { 76 0 67 0 94 1 } -verbose -store
#run_justification -full_sequential -set { n158 0 n156 1 DFF_4_N3 1 } -verbose -store
#attempt:483
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n158,0 n156,1 DFF_4_N3,1 
run_justification -full_sequential -set { 76 0 72 1 94 1 } -verbose -store
#run_justification -full_sequential -set { n160 1 n154 0 DFF_4_N3 1 } -verbose -store
#attempt:484
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n160,1 n154,0 DFF_4_N3,1 
run_justification -full_sequential -set { 81 1 67 0 94 1 } -verbose -store
#run_justification -full_sequential -set { n160 1 n156 1 DFF_4_N3 1 } -verbose -store
#attempt:485
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n160,1 n156,1 DFF_4_N3,1 
run_justification -full_sequential -set { 81 1 72 1 94 1 } -verbose -store
#run_justification -full_sequential -set { n160 1 n158 0 DFF_4_N3 1 } -verbose -store
#attempt:486
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n160,1 n158,0 DFF_4_N3,1 
run_justification -full_sequential -set { 81 1 76 0 94 1 } -verbose -store
#run_justification -full_sequential -set { n161 0 n154 0 DFF_4_N3 1 } -verbose -store
#attempt:487
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n161,0 n154,0 DFF_4_N3,1 
run_justification -full_sequential -set { 93 0 67 0 94 1 } -verbose -store
#run_justification -full_sequential -set { n161 0 n156 1 DFF_4_N3 1 } -verbose -store
#attempt:488
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n161,0 n156,1 DFF_4_N3,1 
run_justification -full_sequential -set { 93 0 72 1 94 1 } -verbose -store
#run_justification -full_sequential -set { n161 0 n158 0 DFF_4_N3 1 } -verbose -store
#attempt:489
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n161,0 n158,0 DFF_4_N3,1 
run_justification -full_sequential -set { 93 0 76 0 94 1 } -verbose -store
#run_justification -full_sequential -set { n161 0 n160 1 DFF_4_N3 1 } -verbose -store
#attempt:490
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n161,0 n160,1 DFF_4_N3,1 
run_justification -full_sequential -set { 93 0 81 1 94 1 } -verbose -store
#run_justification -full_sequential -set { n154 0 DFF_4_N3 1 } -verbose -store
#attempt:491
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n154,0 DFF_4_N3,1 
run_justification -full_sequential -set { 67 0 94 1 } -verbose -store
#run_justification -full_sequential -set { n156 1 DFF_4_N3 1 } -verbose -store
#attempt:492
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n156,1 DFF_4_N3,1 
run_justification -full_sequential -set { 72 1 94 1 } -verbose -store
#run_justification -full_sequential -set { n158 0 DFF_4_N3 1 } -verbose -store
#attempt:493
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n158,0 DFF_4_N3,1 
run_justification -full_sequential -set { 76 0 94 1 } -verbose -store
#run_justification -full_sequential -set { n160 1 DFF_4_N3 1 } -verbose -store
#attempt:494
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n160,1 DFF_4_N3,1 
run_justification -full_sequential -set { 81 1 94 1 } -verbose -store
#run_justification -full_sequential -set { n161 0 DFF_4_N3 1 } -verbose -store
#attempt:495
#current_net:DFF_4_N3
#current_comb_set:DFF_4_N3 n161,0 DFF_4_N3,1 
run_justification -full_sequential -set { 93 0 94 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n148 1 n150 0 n154 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:496
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n148,1 n150,0 n154,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 91 1 103 0 67 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n154 0 n156 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:497
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n154,0 n156,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 67 0 72 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n154 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:498
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n148,1 n150,0 n154,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 91 1 103 0 67 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n152 1 n154 0 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:499
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n152,1 n154,0 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 104 1 67 0 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:500
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n148,1 n150,0 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 91 1 103 0 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n141 1 n148 1 n154 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:501
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n141,1 n148,1 n154,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 114 1 91 1 67 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n150 0 n152 1 n156 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:502
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n150,0 n152,1 n156,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 103 0 104 1 72 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n156 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:503
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n152,1 n156,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 104 1 72 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n148 1 n150 0 n156 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:504
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n148,1 n150,0 n156,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 91 1 103 0 72 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n141 1 n152 1 n156 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:505
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n141,1 n152,1 n156,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 114 1 104 1 72 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n154 0 n156 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:506
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n150,0 n154,0 n156,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 103 0 67 0 72 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n156 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:507
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n148,1 n150,0 n156,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 91 1 103 0 72 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n141 1 n152 1 n154 0 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:508
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n141,1 n152,1 n154,0 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 114 1 104 1 67 0 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n156 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:509
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n154,0 n156,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 67 0 72 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n141 1 n150 0 n156 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:510
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n141,1 n150,0 n156,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 114 1 103 0 72 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n156 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:511
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n154,0 n156,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 67 0 72 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n154 0 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:512
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n150,0 n152,1 n154,0 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 103 0 104 1 67 0 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n156 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:513
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n150,0 n152,1 n156,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 103 0 104 1 72 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n148 1 n150 0 n154 0 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:514
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n148,1 n150,0 n154,0 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 91 1 103 0 67 0 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n152 1 n156 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:515
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n152,1 n156,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 104 1 72 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n150 0 n152 1 n154 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:516
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n150,0 n152,1 n154,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 103 0 104 1 67 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n154 0 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:517
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n148,1 n152,1 n154,0 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 91 1 104 1 67 0 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n154 0 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:518
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n152,1 n154,0 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 104 1 67 0 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n150 0 n152 1 n154 0 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:519
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n150,0 n152,1 n154,0 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 103 0 104 1 67 0 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n150 0 n152 1 n154 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:520
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n150,0 n152,1 n154,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 103 0 104 1 67 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n154 0 n156 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:521
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n152,1 n154,0 n156,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 104 1 67 0 72 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n154 0 n156 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:522
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n152,1 n154,0 n156,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 104 1 67 0 72 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n141 1 n150 0 n156 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:523
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n141,1 n150,0 n156,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 114 1 103 0 72 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n154 0 n156 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:524
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n154,0 n156,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 67 0 72 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n156 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:525
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n150,0 n156,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 103 0 72 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n148 1 n150 0 n152 1 n154 0 DFF_14_N3 1 } -verbose -store
#attempt:526
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n148,1 n150,0 n152,1 n154,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 91 1 103 0 104 1 67 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n141 1 n148 1 n152 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:527
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n141,1 n148,1 n152,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 114 1 91 1 104 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n141 1 n148 1 n150 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:528
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n141,1 n148,1 n150,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 114 1 91 1 103 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n154 0 n156 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:529
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n150,0 n154,0 n156,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 103 0 67 0 72 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n150 0 n152 1 n154 0 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:530
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n150,0 n152,1 n154,0 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 103 0 104 1 67 0 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n150 0 n152 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:531
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n150,0 n152,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 103 0 104 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n152 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:532
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n148,1 n150,0 n152,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 91 1 103 0 104 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n156 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:533
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n148,1 n156,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 91 1 72 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n156 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:534
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n148,1 n150,0 n156,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 91 1 103 0 72 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n150 0 n152 1 n154 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:535
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n150,0 n152,1 n154,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 103 0 104 1 67 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n156 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:536
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n152,1 n156,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 104 1 72 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n148 1 n150 0 n154 0 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:537
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n148,1 n150,0 n154,0 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 91 1 103 0 67 0 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n150 0 n152 1 n154 0 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:538
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n150,0 n152,1 n154,0 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 103 0 104 1 67 0 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n154 0 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:539
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n148,1 n150,0 n154,0 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 91 1 103 0 67 0 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n156 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:540
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n152,1 n156,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 104 1 72 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n141 1 n148 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:541
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n141,1 n148,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 114 1 91 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n156 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:542
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n154,0 n156,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 67 0 72 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n154 0 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:543
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n152,1 n154,0 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 104 1 67 0 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n156 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:544
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n150,0 n156,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 103 0 72 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n148 1 n150 0 n154 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:545
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n148,1 n150,0 n154,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 91 1 103 0 67 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n148 1 n154 0 n156 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:546
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n148,1 n154,0 n156,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 91 1 67 0 72 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n141 1 n150 0 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:547
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n141,1 n150,0 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 114 1 103 0 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n141 1 n148 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:548
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n141,1 n148,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 114 1 91 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n152 1 n154 0 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:549
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n152,1 n154,0 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 104 1 67 0 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:550
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n148,1 n152,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 91 1 104 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n141 1 n148 1 n150 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:551
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n141,1 n148,1 n150,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 114 1 91 1 103 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n148 1 n150 0 n156 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:552
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n148,1 n150,0 n156,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 91 1 103 0 72 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n141 1 n148 1 n152 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:553
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n141,1 n148,1 n152,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 114 1 91 1 104 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n154 0 n156 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:554
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n150,0 n154,0 n156,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 103 0 67 0 72 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n154 0 n156 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:555
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n150,0 n154,0 n156,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 103 0 67 0 72 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n154 0 n156 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:556
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n150,0 n154,0 n156,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 103 0 67 0 72 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:557
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n148,1 n152,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 91 1 104 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n148 1 n150 0 n152 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:558
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n148,1 n150,0 n152,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 91 1 103 0 104 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n148 1 n150 0 n152 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:559
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n148,1 n150,0 n152,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 91 1 103 0 104 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n152 1 n154 0 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:560
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n152,1 n154,0 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 104 1 67 0 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n141 1 n148 1 n154 0 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:561
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n141,1 n148,1 n154,0 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 114 1 91 1 67 0 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n156 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:562
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n152,1 n156,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 104 1 72 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n156 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:563
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n152,1 n156,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 104 1 72 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n154 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:564
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n152,1 n154,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 104 1 67 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:565
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n150,0 n152,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 103 0 104 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n154 0 DFF_14_N3 1 } -verbose -store
#attempt:566
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n148,1 n152,1 n154,0 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 91 1 104 1 67 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:567
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n150,0 n152,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 103 0 104 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n156 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:568
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n156,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 72 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:569
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n148,1 n152,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 91 1 104 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n148 1 n150 0 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:570
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n148,1 n150,0 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 91 1 103 0 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n154 0 n156 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:571
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n154,0 n156,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 67 0 72 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n154 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:572
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n150,0 n154,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 103 0 67 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n156 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:573
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n148,1 n156,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 91 1 72 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n141 1 n150 0 n154 0 DFF_14_N3 1 } -verbose -store
#attempt:574
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n141,1 n150,0 n154,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 114 1 103 0 67 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n150 0 n154 0 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:575
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n150,0 n154,0 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 103 0 67 0 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n152 1 n154 0 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:576
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n152,1 n154,0 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 104 1 67 0 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n154 0 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:577
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n152,1 n154,0 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 104 1 67 0 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n156 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:578
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n152,1 n156,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 104 1 72 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n150 0 n152 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:579
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n150,0 n152,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 103 0 104 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n141 1 n150 0 n152 1 DFF_14_N3 1 } -verbose -store
#attempt:580
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n141,1 n150,0 n152,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 114 1 103 0 104 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n148 1 n152 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:581
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n148,1 n152,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 91 1 104 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n156 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:582
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n150,0 n156,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 103 0 72 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n154 0 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:583
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n152,1 n154,0 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 104 1 67 0 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n156 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:584
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n156,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 72 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:585
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n150,0 n152,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 103 0 104 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n141 1 n150 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:586
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n141,1 n150,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 114 1 103 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n156 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:587
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n156,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 72 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n150 0 n152 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:588
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n150,0 n152,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 103 0 104 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n156 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:589
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n156,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 72 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n141 1 n154 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:590
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n141,1 n154,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 114 1 67 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n154 0 n156 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:591
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n154,0 n156,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 67 0 72 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:592
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n148,1 n150,0 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 91 1 103 0 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:593
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n154,0 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 67 0 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n150 0 n156 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:594
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n150,0 n156,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 103 0 72 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n154 0 DFF_14_N3 1 } -verbose -store
#attempt:595
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n150,0 n152,1 n154,0 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 103 0 104 1 67 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n156 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:596
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n150,0 n156,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 103 0 72 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:597
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n150,0 n154,0 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 103 0 67 0 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n156 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:598
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n148,1 n156,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 91 1 72 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n141 1 n156 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:599
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n141,1 n156,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 114 1 72 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n156 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:600
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n150,0 n156,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 103 0 72 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n156 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:601
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n150,0 n156,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 103 0 72 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n156 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:602
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n148,1 n156,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 91 1 72 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n154 0 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:603
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n152,1 n154,0 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 104 1 67 0 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n156 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:604
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n152,1 n156,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 104 1 72 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n154 0 DFF_14_N3 1 } -verbose -store
#attempt:605
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n148,1 n150,0 n154,0 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 91 1 103 0 67 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n152 1 n154 0 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:606
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n152,1 n154,0 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 104 1 67 0 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n148 1 n154 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:607
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n148,1 n154,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 91 1 67 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:608
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n154,0 n156,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 67 0 72 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:609
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n152,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 104 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n148 1 n150 0 n152 1 DFF_14_N3 1 } -verbose -store
#attempt:610
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n148,1 n150,0 n152,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 91 1 103 0 104 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n156 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:611
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n152,1 n156,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 104 1 72 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n150 0 n154 0 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:612
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n150,0 n154,0 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 103 0 67 0 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n141 1 n154 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:613
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n141,1 n154,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 114 1 67 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n148 1 n156 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:614
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n148,1 n156,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 91 1 72 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:615
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n150,0 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 103 0 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n154 0 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:616
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n148,1 n154,0 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 91 1 67 0 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n148 1 n150 0 n152 1 DFF_14_N3 1 } -verbose -store
#attempt:617
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n148,1 n150,0 n152,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 91 1 103 0 104 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n150 0 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:618
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n150,0 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 103 0 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:619
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n154,0 n156,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 67 0 72 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n154 0 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:620
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n152,1 n154,0 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 104 1 67 0 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n148 1 n152 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:621
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n148,1 n152,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 91 1 104 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n154 0 n156 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:622
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n154,0 n156,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 67 0 72 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n154 0 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:623
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n154,0 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 67 0 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:624
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n150,0 n152,1 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 103 0 104 1 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n156 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:625
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n156,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 72 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:626
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n150,0 n152,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 103 0 104 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:627
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n148,1 n150,0 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 91 1 103 0 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n150 0 n152 1 n154 0 DFF_14_N3 1 } -verbose -store
#attempt:628
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n150,0 n152,1 n154,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 103 0 104 1 67 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n141 1 n152 1 n154 0 DFF_14_N3 1 } -verbose -store
#attempt:629
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n141,1 n152,1 n154,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 114 1 104 1 67 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:630
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n152,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 104 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n154 0 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:631
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n154,0 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 67 0 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:632
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n150,0 n152,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 103 0 104 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n141 1 n154 0 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:633
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n141,1 n154,0 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 114 1 67 0 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:634
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n154,0 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 67 0 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n141 1 n150 0 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:635
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n141,1 n150,0 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 114 1 103 0 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n154 0 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:636
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n152,1 n154,0 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 104 1 67 0 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n154 0 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:637
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n154,0 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 67 0 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 DFF_14_N3 1 } -verbose -store
#attempt:638
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n150,0 n152,1 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 103 0 104 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n150 0 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:639
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n150,0 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 103 0 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:640
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n152,1 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 104 1 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n150 0 n152 1 DFF_14_N3 1 } -verbose -store
#attempt:641
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n150,0 n152,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 103 0 104 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:642
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n154,0 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 67 0 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:643
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:644
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n150,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 103 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n154 0 DFF_14_N3 1 } -verbose -store
#attempt:645
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n152,1 n154,0 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 104 1 67 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 DFF_14_N3 1 } -verbose -store
#attempt:646
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n148,1 n150,0 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 91 1 103 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n156 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:647
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n156,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 72 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:648
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n152,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 104 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:649
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n152,1 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 104 1 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n156 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:650
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n156,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 72 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:651
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n150 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:652
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n150,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 103 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:653
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n148,1 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 91 1 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:654
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n152,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 104 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n154 0 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:655
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n154,0 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 67 0 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n141 1 n152 1 DFF_14_N3 1 } -verbose -store
#attempt:656
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n141,1 n152,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 114 1 104 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:657
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n148,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 91 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n156 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:658
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n156,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 72 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:659
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n154,0 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 67 0 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n150 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:660
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n150,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 103 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:661
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n148,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 91 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n156 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:662
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n156,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 72 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n154 0 n156 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:663
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n154,0 n156,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 67 0 72 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:664
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:665
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n154,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 67 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n154 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:666
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n154,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 67 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:667
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n154,0 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 67 0 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 DFF_14_N3 1 } -verbose -store
#attempt:668
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n150,0 n152,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 103 0 104 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:669
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n148,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 91 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:670
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n154,0 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 67 0 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:671
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n152,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 104 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n154 0 DFF_14_N3 1 } -verbose -store
#attempt:672
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n148,1 n154,0 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 91 1 67 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:673
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n150,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 103 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:674
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n150,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 103 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:675
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n152,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 104 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n156 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:676
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n156,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 72 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n150 0 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:677
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n150,0 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 103 0 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n150 0 n154 0 DFF_14_N3 1 } -verbose -store
#attempt:678
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n150,0 n154,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 103 0 67 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:679
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n154,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 67 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:680
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n148 1 n154 0 DFF_14_N3 1 } -verbose -store
#attempt:681
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n148,1 n154,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 91 1 67 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n156 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:682
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n156,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 72 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 DFF_14_N3 1 } -verbose -store
#attempt:683
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n148,1 n150,0 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 91 1 103 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n158 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:684
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n158,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 76 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:685
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n150,0 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 103 0 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n154 0 DFF_14_N3 1 } -verbose -store
#attempt:686
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n148,1 n154,0 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 91 1 67 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:687
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n152,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 104 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:688
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n150,0 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 103 0 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n150 0 n154 0 DFF_14_N3 1 } -verbose -store
#attempt:689
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n150,0 n154,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 103 0 67 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 DFF_14_N3 1 } -verbose -store
#attempt:690
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n150,0 n152,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 103 0 104 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n154 0 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:691
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n154,0 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 67 0 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n141 1 n154 0 DFF_14_N3 1 } -verbose -store
#attempt:692
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n141,1 n154,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 114 1 67 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n154 0 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:693
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n152,1 n154,0 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 104 1 67 0 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n156 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:694
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n156,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 72 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n148 1 n154 0 DFF_14_N3 1 } -verbose -store
#attempt:695
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n148,1 n154,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 91 1 67 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n154 0 DFF_14_N3 1 } -verbose -store
#attempt:696
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n152,1 n154,0 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 104 1 67 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n156 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:697
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n156,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 72 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n154 0 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:698
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n154,0 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 67 0 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n154 0 DFF_14_N3 1 } -verbose -store
#attempt:699
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n154,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 67 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n150 0 DFF_14_N3 1 } -verbose -store
#attempt:700
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n150,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 103 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:701
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 DFF_14_N3 1 } -verbose -store
#attempt:702
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n154,0 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 67 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n141 1 DFF_14_N3 1 } -verbose -store
#attempt:703
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n141,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 114 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:704
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 DFF_14_N3 1 } -verbose -store
#attempt:705
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n150,0 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 103 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n154 0 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:706
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n154,0 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 67 0 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:707
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:708
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 DFF_14_N3 1 } -verbose -store
#attempt:709
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n154,0 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 67 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:710
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n152,1 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 104 1 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n154 0 DFF_14_N3 1 } -verbose -store
#attempt:711
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n154,0 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 67 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:712
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:713
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:714
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 DFF_14_N3 1 } -verbose -store
#attempt:715
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n154,0 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 67 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:716
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:717
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n156 1 n160 1 DFF_14_N3 1 } -verbose -store
#attempt:718
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n156,1 n160,1 DFF_14_N3,1 
run_justification -full_sequential -set { 72 1 81 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 DFF_14_N3 1 } -verbose -store
#attempt:719
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n148,1 n152,1 DFF_14_N3,1 
run_justification -full_sequential -set { 91 1 104 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:720
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n148 1 DFF_14_N3 1 } -verbose -store
#attempt:721
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n148,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 91 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n152 1 DFF_14_N3 1 } -verbose -store
#attempt:722
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n152,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 104 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 DFF_14_N3 1 } -verbose -store
#attempt:723
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n150,0 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 103 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:724
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n150 0 DFF_14_N3 1 } -verbose -store
#attempt:725
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n150,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 103 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:726
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 DFF_14_N3 1 } -verbose -store
#attempt:727
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n154,0 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 67 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:728
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n152,1 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 104 1 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n158 0 DFF_14_N3 1 } -verbose -store
#attempt:729
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n158,0 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 76 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:730
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:731
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n150,0 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 103 0 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n154 0 DFF_14_N3 1 } -verbose -store
#attempt:732
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n154,0 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 67 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n156 1 DFF_14_N3 1 } -verbose -store
#attempt:733
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n140,0 n156,1 DFF_14_N3,1 
run_justification -full_sequential -set { 123 0 72 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n156 1 n154 0 } -verbose -store
#attempt:734
#current_net:n156
#current_comb_set:n156 n156,1 n154,0 
run_justification -full_sequential -set { 72 1 67 0 } -verbose -store
#run_justification -full_sequential -set { n156 1 n154 0 n158 0 } -verbose -store
#attempt:735
#current_net:n158
#current_comb_set:n158 n156,1 n154,0 n158,0 
run_justification -full_sequential -set { 72 1 67 0 76 0 } -verbose -store
#run_justification -full_sequential -set { n154 0 n158 0 } -verbose -store
#attempt:736
#current_net:n158
#current_comb_set:n158 n154,0 n158,0 
run_justification -full_sequential -set { 67 0 76 0 } -verbose -store
#run_justification -full_sequential -set { n156 1 n158 0 } -verbose -store
#attempt:737
#current_net:n158
#current_comb_set:n158 n156,1 n158,0 
run_justification -full_sequential -set { 72 1 76 0 } -verbose -store
#run_justification -full_sequential -set { n158 0 n156 1 n160 1 } -verbose -store
#attempt:738
#current_net:n160
#current_comb_set:n160 n158,0 n156,1 n160,1 
run_justification -full_sequential -set { 76 0 72 1 81 1 } -verbose -store
#run_justification -full_sequential -set { n156 1 n160 1 } -verbose -store
#attempt:739
#current_net:n160
#current_comb_set:n160 n156,1 n160,1 
run_justification -full_sequential -set { 72 1 81 1 } -verbose -store
#run_justification -full_sequential -set { n158 0 n160 1 } -verbose -store
#attempt:740
#current_net:n160
#current_comb_set:n160 n158,0 n160,1 
run_justification -full_sequential -set { 76 0 81 1 } -verbose -store
#run_justification -full_sequential -set { n160 1 n158 0 n156 1 n154 0 n148 1 } -verbose -store
#attempt:741
#current_net:n148
#current_comb_set:n148 n160,1 n158,0 n156,1 n154,0 n148,1 
run_justification -full_sequential -set { 81 1 76 0 72 1 67 0 91 1 } -verbose -store
#run_justification -full_sequential -set { n158 0 n156 1 n154 0 n148 1 } -verbose -store
#attempt:742
#current_net:n148
#current_comb_set:n148 n158,0 n156,1 n154,0 n148,1 
run_justification -full_sequential -set { 76 0 72 1 67 0 91 1 } -verbose -store
#run_justification -full_sequential -set { n160 1 n156 1 n154 0 n148 1 } -verbose -store
#attempt:743
#current_net:n148
#current_comb_set:n148 n160,1 n156,1 n154,0 n148,1 
run_justification -full_sequential -set { 81 1 72 1 67 0 91 1 } -verbose -store
#run_justification -full_sequential -set { n160 1 n158 0 n154 0 n148 1 } -verbose -store
#attempt:744
#current_net:n148
#current_comb_set:n148 n160,1 n158,0 n154,0 n148,1 
run_justification -full_sequential -set { 81 1 76 0 67 0 91 1 } -verbose -store
#run_justification -full_sequential -set { n160 1 n158 0 n156 1 n148 1 } -verbose -store
#attempt:745
#current_net:n148
#current_comb_set:n148 n160,1 n158,0 n156,1 n148,1 
run_justification -full_sequential -set { 81 1 76 0 72 1 91 1 } -verbose -store
#run_justification -full_sequential -set { n156 1 n154 0 n148 1 } -verbose -store
#attempt:746
#current_net:n148
#current_comb_set:n148 n156,1 n154,0 n148,1 
run_justification -full_sequential -set { 72 1 67 0 91 1 } -verbose -store
#run_justification -full_sequential -set { n158 0 n154 0 n148 1 } -verbose -store
#attempt:747
#current_net:n148
#current_comb_set:n148 n158,0 n154,0 n148,1 
run_justification -full_sequential -set { 76 0 67 0 91 1 } -verbose -store
#run_justification -full_sequential -set { n158 0 n156 1 n148 1 } -verbose -store
#attempt:748
#current_net:n148
#current_comb_set:n148 n158,0 n156,1 n148,1 
run_justification -full_sequential -set { 76 0 72 1 91 1 } -verbose -store
#run_justification -full_sequential -set { n160 1 n154 0 n148 1 } -verbose -store
#attempt:749
#current_net:n148
#current_comb_set:n148 n160,1 n154,0 n148,1 
run_justification -full_sequential -set { 81 1 67 0 91 1 } -verbose -store
#run_justification -full_sequential -set { n160 1 n156 1 n148 1 } -verbose -store
#attempt:750
#current_net:n148
#current_comb_set:n148 n160,1 n156,1 n148,1 
run_justification -full_sequential -set { 81 1 72 1 91 1 } -verbose -store
#run_justification -full_sequential -set { n160 1 n158 0 n148 1 } -verbose -store
#attempt:751
#current_net:n148
#current_comb_set:n148 n160,1 n158,0 n148,1 
run_justification -full_sequential -set { 81 1 76 0 91 1 } -verbose -store
#run_justification -full_sequential -set { n154 0 n148 1 } -verbose -store
#attempt:752
#current_net:n148
#current_comb_set:n148 n154,0 n148,1 
run_justification -full_sequential -set { 67 0 91 1 } -verbose -store
#run_justification -full_sequential -set { n156 1 n148 1 } -verbose -store
#attempt:753
#current_net:n148
#current_comb_set:n148 n156,1 n148,1 
run_justification -full_sequential -set { 72 1 91 1 } -verbose -store
#run_justification -full_sequential -set { n158 0 n148 1 } -verbose -store
#attempt:754
#current_net:n148
#current_comb_set:n148 n158,0 n148,1 
run_justification -full_sequential -set { 76 0 91 1 } -verbose -store
#run_justification -full_sequential -set { n160 1 n148 1 } -verbose -store
#attempt:755
#current_net:n148
#current_comb_set:n148 n160,1 n148,1 
run_justification -full_sequential -set { 81 1 91 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n160 1 n158 0 n156 1 n154 0 n150 0 } -verbose -store
#attempt:756
#current_net:n150
#current_comb_set:n150 n148,1 n160,1 n158,0 n156,1 n154,0 n150,0 
run_justification -full_sequential -set { 91 1 81 1 76 0 72 1 67 0 103 0 } -verbose -store
#run_justification -full_sequential -set { n160 1 n158 0 n156 1 n154 0 n150 0 } -verbose -store
#attempt:757
#current_net:n150
#current_comb_set:n150 n160,1 n158,0 n156,1 n154,0 n150,0 
run_justification -full_sequential -set { 81 1 76 0 72 1 67 0 103 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n158 0 n156 1 n154 0 n150 0 } -verbose -store
#attempt:758
#current_net:n150
#current_comb_set:n150 n148,1 n158,0 n156,1 n154,0 n150,0 
run_justification -full_sequential -set { 91 1 76 0 72 1 67 0 103 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n160 1 n156 1 n154 0 n150 0 } -verbose -store
#attempt:759
#current_net:n150
#current_comb_set:n150 n148,1 n160,1 n156,1 n154,0 n150,0 
run_justification -full_sequential -set { 91 1 81 1 72 1 67 0 103 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n160 1 n158 0 n154 0 n150 0 } -verbose -store
#attempt:760
#current_net:n150
#current_comb_set:n150 n148,1 n160,1 n158,0 n154,0 n150,0 
run_justification -full_sequential -set { 91 1 81 1 76 0 67 0 103 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n160 1 n158 0 n156 1 n150 0 } -verbose -store
#attempt:761
#current_net:n150
#current_comb_set:n150 n148,1 n160,1 n158,0 n156,1 n150,0 
run_justification -full_sequential -set { 91 1 81 1 76 0 72 1 103 0 } -verbose -store
#run_justification -full_sequential -set { n158 0 n156 1 n154 0 n150 0 } -verbose -store
#attempt:762
#current_net:n150
#current_comb_set:n150 n158,0 n156,1 n154,0 n150,0 
run_justification -full_sequential -set { 76 0 72 1 67 0 103 0 } -verbose -store
#run_justification -full_sequential -set { n160 1 n156 1 n154 0 n150 0 } -verbose -store
#attempt:763
#current_net:n150
#current_comb_set:n150 n160,1 n156,1 n154,0 n150,0 
run_justification -full_sequential -set { 81 1 72 1 67 0 103 0 } -verbose -store
#run_justification -full_sequential -set { n160 1 n158 0 n154 0 n150 0 } -verbose -store
#attempt:764
#current_net:n150
#current_comb_set:n150 n160,1 n158,0 n154,0 n150,0 
run_justification -full_sequential -set { 81 1 76 0 67 0 103 0 } -verbose -store
#run_justification -full_sequential -set { n160 1 n158 0 n156 1 n150 0 } -verbose -store
#attempt:765
#current_net:n150
#current_comb_set:n150 n160,1 n158,0 n156,1 n150,0 
run_justification -full_sequential -set { 81 1 76 0 72 1 103 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n156 1 n154 0 n150 0 } -verbose -store
#attempt:766
#current_net:n150
#current_comb_set:n150 n148,1 n156,1 n154,0 n150,0 
run_justification -full_sequential -set { 91 1 72 1 67 0 103 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n158 0 n154 0 n150 0 } -verbose -store
#attempt:767
#current_net:n150
#current_comb_set:n150 n148,1 n158,0 n154,0 n150,0 
run_justification -full_sequential -set { 91 1 76 0 67 0 103 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n158 0 n156 1 n150 0 } -verbose -store
#attempt:768
#current_net:n150
#current_comb_set:n150 n148,1 n158,0 n156,1 n150,0 
run_justification -full_sequential -set { 91 1 76 0 72 1 103 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n160 1 n154 0 n150 0 } -verbose -store
#attempt:769
#current_net:n150
#current_comb_set:n150 n148,1 n160,1 n154,0 n150,0 
run_justification -full_sequential -set { 91 1 81 1 67 0 103 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n160 1 n156 1 n150 0 } -verbose -store
#attempt:770
#current_net:n150
#current_comb_set:n150 n148,1 n160,1 n156,1 n150,0 
run_justification -full_sequential -set { 91 1 81 1 72 1 103 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n160 1 n158 0 n150 0 } -verbose -store
#attempt:771
#current_net:n150
#current_comb_set:n150 n148,1 n160,1 n158,0 n150,0 
run_justification -full_sequential -set { 91 1 81 1 76 0 103 0 } -verbose -store
#run_justification -full_sequential -set { n156 1 n154 0 n150 0 } -verbose -store
#attempt:772
#current_net:n150
#current_comb_set:n150 n156,1 n154,0 n150,0 
run_justification -full_sequential -set { 72 1 67 0 103 0 } -verbose -store
#run_justification -full_sequential -set { n158 0 n154 0 n150 0 } -verbose -store
#attempt:773
#current_net:n150
#current_comb_set:n150 n158,0 n154,0 n150,0 
run_justification -full_sequential -set { 76 0 67 0 103 0 } -verbose -store
#run_justification -full_sequential -set { n158 0 n156 1 n150 0 } -verbose -store
#attempt:774
#current_net:n150
#current_comb_set:n150 n158,0 n156,1 n150,0 
run_justification -full_sequential -set { 76 0 72 1 103 0 } -verbose -store
#run_justification -full_sequential -set { n160 1 n154 0 n150 0 } -verbose -store
#attempt:775
#current_net:n150
#current_comb_set:n150 n160,1 n154,0 n150,0 
run_justification -full_sequential -set { 81 1 67 0 103 0 } -verbose -store
#run_justification -full_sequential -set { n160 1 n156 1 n150 0 } -verbose -store
#attempt:776
#current_net:n150
#current_comb_set:n150 n160,1 n156,1 n150,0 
run_justification -full_sequential -set { 81 1 72 1 103 0 } -verbose -store
#run_justification -full_sequential -set { n160 1 n158 0 n150 0 } -verbose -store
#attempt:777
#current_net:n150
#current_comb_set:n150 n160,1 n158,0 n150,0 
run_justification -full_sequential -set { 81 1 76 0 103 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n150 0 } -verbose -store
#attempt:778
#current_net:n150
#current_comb_set:n150 n148,1 n154,0 n150,0 
run_justification -full_sequential -set { 91 1 67 0 103 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n156 1 n150 0 } -verbose -store
#attempt:779
#current_net:n150
#current_comb_set:n150 n148,1 n156,1 n150,0 
run_justification -full_sequential -set { 91 1 72 1 103 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n158 0 n150 0 } -verbose -store
#attempt:780
#current_net:n150
#current_comb_set:n150 n148,1 n158,0 n150,0 
run_justification -full_sequential -set { 91 1 76 0 103 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n160 1 n150 0 } -verbose -store
#attempt:781
#current_net:n150
#current_comb_set:n150 n148,1 n160,1 n150,0 
run_justification -full_sequential -set { 91 1 81 1 103 0 } -verbose -store
#run_justification -full_sequential -set { n154 0 n150 0 } -verbose -store
#attempt:782
#current_net:n150
#current_comb_set:n150 n154,0 n150,0 
run_justification -full_sequential -set { 67 0 103 0 } -verbose -store
#run_justification -full_sequential -set { n156 1 n150 0 } -verbose -store
#attempt:783
#current_net:n150
#current_comb_set:n150 n156,1 n150,0 
run_justification -full_sequential -set { 72 1 103 0 } -verbose -store
#run_justification -full_sequential -set { n158 0 n150 0 } -verbose -store
#attempt:784
#current_net:n150
#current_comb_set:n150 n158,0 n150,0 
run_justification -full_sequential -set { 76 0 103 0 } -verbose -store
#run_justification -full_sequential -set { n160 1 n150 0 } -verbose -store
#attempt:785
#current_net:n150
#current_comb_set:n150 n160,1 n150,0 
run_justification -full_sequential -set { 81 1 103 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 } -verbose -store
#attempt:786
#current_net:n150
#current_comb_set:n150 n148,1 n150,0 
run_justification -full_sequential -set { 91 1 103 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n158 0 n160 1 n152 1 } -verbose -store
#attempt:787
#current_net:n152
#current_comb_set:n152 n148,1 n150,0 n154,0 n158,0 n160,1 n152,1 
run_justification -full_sequential -set { 91 1 103 0 67 0 76 0 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n156 1 n158 0 n160 1 n152 1 } -verbose -store
#attempt:788
#current_net:n152
#current_comb_set:n152 n148,1 n150,0 n156,1 n158,0 n160,1 n152,1 
run_justification -full_sequential -set { 91 1 103 0 72 1 76 0 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 n158 0 n160 1 n152 1 } -verbose -store
#attempt:789
#current_net:n152
#current_comb_set:n152 n148,1 n154,0 n156,1 n158,0 n160,1 n152,1 
run_justification -full_sequential -set { 91 1 67 0 72 1 76 0 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n158 0 n160 1 n152 1 } -verbose -store
#attempt:790
#current_net:n152
#current_comb_set:n152 n148,1 n150,0 n154,0 n158,0 n160,1 n152,1 
run_justification -full_sequential -set { 91 1 103 0 67 0 76 0 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n158 0 n160 1 n152 1 } -verbose -store
#attempt:791
#current_net:n152
#current_comb_set:n152 n148,1 n150,0 n154,0 n158,0 n160,1 n152,1 
run_justification -full_sequential -set { 91 1 103 0 67 0 76 0 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n156 1 n158 0 n160 1 n152 1 } -verbose -store
#attempt:792
#current_net:n152
#current_comb_set:n152 n148,1 n150,0 n156,1 n158,0 n160,1 n152,1 
run_justification -full_sequential -set { 91 1 103 0 72 1 76 0 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n156 1 n152 1 } -verbose -store
#attempt:793
#current_net:n152
#current_comb_set:n152 n148,1 n150,0 n154,0 n156,1 n152,1 
run_justification -full_sequential -set { 91 1 103 0 67 0 72 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n158 0 n160 1 n152 1 } -verbose -store
#attempt:794
#current_net:n152
#current_comb_set:n152 n148,1 n150,0 n158,0 n160,1 n152,1 
run_justification -full_sequential -set { 91 1 103 0 76 0 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n156 1 n160 1 n152 1 } -verbose -store
#attempt:795
#current_net:n152
#current_comb_set:n152 n150,0 n154,0 n156,1 n160,1 n152,1 
run_justification -full_sequential -set { 103 0 67 0 72 1 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n156 1 n158 0 n152 1 } -verbose -store
#attempt:796
#current_net:n152
#current_comb_set:n152 n150,0 n154,0 n156,1 n158,0 n152,1 
run_justification -full_sequential -set { 103 0 67 0 72 1 76 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n156 1 n158 0 n152 1 } -verbose -store
#attempt:797
#current_net:n152
#current_comb_set:n152 n150,0 n154,0 n156,1 n158,0 n152,1 
run_justification -full_sequential -set { 103 0 67 0 72 1 76 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n160 1 n152 1 } -verbose -store
#attempt:798
#current_net:n152
#current_comb_set:n152 n148,1 n150,0 n154,0 n160,1 n152,1 
run_justification -full_sequential -set { 91 1 103 0 67 0 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n156 1 n158 0 n152 1 } -verbose -store
#attempt:799
#current_net:n152
#current_comb_set:n152 n148,1 n150,0 n156,1 n158,0 n152,1 
run_justification -full_sequential -set { 91 1 103 0 72 1 76 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n156 1 n158 0 n160 1 n152 1 } -verbose -store
#attempt:800
#current_net:n152
#current_comb_set:n152 n150,0 n156,1 n158,0 n160,1 n152,1 
run_justification -full_sequential -set { 103 0 72 1 76 0 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n160 1 n152 1 } -verbose -store
#attempt:801
#current_net:n152
#current_comb_set:n152 n148,1 n150,0 n154,0 n160,1 n152,1 
run_justification -full_sequential -set { 91 1 103 0 67 0 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n156 1 n158 0 n152 1 } -verbose -store
#attempt:802
#current_net:n152
#current_comb_set:n152 n148,1 n150,0 n156,1 n158,0 n152,1 
run_justification -full_sequential -set { 91 1 103 0 72 1 76 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 n160 1 n152 1 } -verbose -store
#attempt:803
#current_net:n152
#current_comb_set:n152 n148,1 n154,0 n156,1 n160,1 n152,1 
run_justification -full_sequential -set { 91 1 67 0 72 1 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n156 1 n160 1 n152 1 } -verbose -store
#attempt:804
#current_net:n152
#current_comb_set:n152 n150,0 n154,0 n156,1 n160,1 n152,1 
run_justification -full_sequential -set { 103 0 67 0 72 1 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n156 1 n160 1 n152 1 } -verbose -store
#attempt:805
#current_net:n152
#current_comb_set:n152 n150,0 n154,0 n156,1 n160,1 n152,1 
run_justification -full_sequential -set { 103 0 67 0 72 1 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n158 0 n160 1 n152 1 } -verbose -store
#attempt:806
#current_net:n152
#current_comb_set:n152 n148,1 n150,0 n158,0 n160,1 n152,1 
run_justification -full_sequential -set { 91 1 103 0 76 0 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n158 0 n160 1 n152 1 } -verbose -store
#attempt:807
#current_net:n152
#current_comb_set:n152 n148,1 n154,0 n158,0 n160,1 n152,1 
run_justification -full_sequential -set { 91 1 67 0 76 0 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n160 1 n152 1 } -verbose -store
#attempt:808
#current_net:n152
#current_comb_set:n152 n148,1 n154,0 n160,1 n152,1 
run_justification -full_sequential -set { 91 1 67 0 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 n152 1 } -verbose -store
#attempt:809
#current_net:n152
#current_comb_set:n152 n148,1 n154,0 n156,1 n152,1 
run_justification -full_sequential -set { 91 1 67 0 72 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n156 1 n160 1 n152 1 } -verbose -store
#attempt:810
#current_net:n152
#current_comb_set:n152 n148,1 n156,1 n160,1 n152,1 
run_justification -full_sequential -set { 91 1 72 1 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n156 1 n152 1 } -verbose -store
#attempt:811
#current_net:n152
#current_comb_set:n152 n150,0 n154,0 n156,1 n152,1 
run_justification -full_sequential -set { 103 0 67 0 72 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n152 1 } -verbose -store
#attempt:812
#current_net:n152
#current_comb_set:n152 n148,1 n150,0 n154,0 n152,1 
run_justification -full_sequential -set { 91 1 103 0 67 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n158 0 n152 1 } -verbose -store
#attempt:813
#current_net:n152
#current_comb_set:n152 n148,1 n154,0 n158,0 n152,1 
run_justification -full_sequential -set { 91 1 67 0 76 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n158 0 n152 1 } -verbose -store
#attempt:814
#current_net:n152
#current_comb_set:n152 n148,1 n154,0 n158,0 n152,1 
run_justification -full_sequential -set { 91 1 67 0 76 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n158 0 n152 1 } -verbose -store
#attempt:815
#current_net:n152
#current_comb_set:n152 n148,1 n150,0 n158,0 n152,1 
run_justification -full_sequential -set { 91 1 103 0 76 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n158 0 n152 1 } -verbose -store
#attempt:816
#current_net:n152
#current_comb_set:n152 n148,1 n150,0 n158,0 n152,1 
run_justification -full_sequential -set { 91 1 103 0 76 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n158 0 n160 1 n152 1 } -verbose -store
#attempt:817
#current_net:n152
#current_comb_set:n152 n150,0 n158,0 n160,1 n152,1 
run_justification -full_sequential -set { 103 0 76 0 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n156 1 n158 0 n152 1 } -verbose -store
#attempt:818
#current_net:n152
#current_comb_set:n152 n148,1 n156,1 n158,0 n152,1 
run_justification -full_sequential -set { 91 1 72 1 76 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n158 0 n160 1 n152 1 } -verbose -store
#attempt:819
#current_net:n152
#current_comb_set:n152 n150,0 n158,0 n160,1 n152,1 
run_justification -full_sequential -set { 103 0 76 0 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n158 0 n160 1 n152 1 } -verbose -store
#attempt:820
#current_net:n152
#current_comb_set:n152 n150,0 n158,0 n160,1 n152,1 
run_justification -full_sequential -set { 103 0 76 0 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n158 0 n160 1 n152 1 } -verbose -store
#attempt:821
#current_net:n152
#current_comb_set:n152 n148,1 n158,0 n160,1 n152,1 
run_justification -full_sequential -set { 91 1 76 0 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n158 0 n152 1 } -verbose -store
#attempt:822
#current_net:n152
#current_comb_set:n152 n150,0 n154,0 n158,0 n152,1 
run_justification -full_sequential -set { 103 0 67 0 76 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 n152 1 } -verbose -store
#attempt:823
#current_net:n152
#current_comb_set:n152 n148,1 n154,0 n156,1 n152,1 
run_justification -full_sequential -set { 91 1 67 0 72 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n154 0 n156 1 n158 0 n152 1 } -verbose -store
#attempt:824
#current_net:n152
#current_comb_set:n152 n154,0 n156,1 n158,0 n152,1 
run_justification -full_sequential -set { 67 0 72 1 76 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n158 0 n160 1 n152 1 } -verbose -store
#attempt:825
#current_net:n152
#current_comb_set:n152 n150,0 n158,0 n160,1 n152,1 
run_justification -full_sequential -set { 103 0 76 0 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n156 1 n158 0 n160 1 n152 1 } -verbose -store
#attempt:826
#current_net:n152
#current_comb_set:n152 n156,1 n158,0 n160,1 n152,1 
run_justification -full_sequential -set { 72 1 76 0 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n160 1 n152 1 } -verbose -store
#attempt:827
#current_net:n152
#current_comb_set:n152 n148,1 n150,0 n160,1 n152,1 
run_justification -full_sequential -set { 91 1 103 0 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n154 0 n158 0 n152 1 } -verbose -store
#attempt:828
#current_net:n152
#current_comb_set:n152 n154,0 n158,0 n152,1 
run_justification -full_sequential -set { 67 0 76 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 } -verbose -store
#attempt:829
#current_net:n152
#current_comb_set:n152 n148,1 n150,0 n152,1 
run_justification -full_sequential -set { 91 1 103 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n158 0 n160 1 n152 1 } -verbose -store
#attempt:830
#current_net:n152
#current_comb_set:n152 n158,0 n160,1 n152,1 
run_justification -full_sequential -set { 76 0 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n154 0 n156 1 n152 1 } -verbose -store
#attempt:831
#current_net:n152
#current_comb_set:n152 n154,0 n156,1 n152,1 
run_justification -full_sequential -set { 67 0 72 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n160 1 n152 1 } -verbose -store
#attempt:832
#current_net:n152
#current_comb_set:n152 n148,1 n160,1 n152,1 
run_justification -full_sequential -set { 91 1 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n160 1 n152 1 } -verbose -store
#attempt:833
#current_net:n152
#current_comb_set:n152 n150,0 n160,1 n152,1 
run_justification -full_sequential -set { 103 0 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n160 1 n152 1 } -verbose -store
#attempt:834
#current_net:n152
#current_comb_set:n152 n150,0 n160,1 n152,1 
run_justification -full_sequential -set { 103 0 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n156 1 n158 0 n152 1 } -verbose -store
#attempt:835
#current_net:n152
#current_comb_set:n152 n156,1 n158,0 n152,1 
run_justification -full_sequential -set { 72 1 76 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 } -verbose -store
#attempt:836
#current_net:n152
#current_comb_set:n152 n148,1 n150,0 n152,1 
run_justification -full_sequential -set { 91 1 103 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n160 1 n152 1 } -verbose -store
#attempt:837
#current_net:n152
#current_comb_set:n152 n148,1 n160,1 n152,1 
run_justification -full_sequential -set { 91 1 81 1 104 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n152 1 } -verbose -store
#attempt:838
#current_net:n152
#current_comb_set:n152 n148,1 n154,0 n152,1 
run_justification -full_sequential -set { 91 1 67 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n156 1 n158 0 n152 1 } -verbose -store
#attempt:839
#current_net:n152
#current_comb_set:n152 n156,1 n158,0 n152,1 
run_justification -full_sequential -set { 72 1 76 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n154 0 n158 0 n152 1 } -verbose -store
#attempt:840
#current_net:n152
#current_comb_set:n152 n154,0 n158,0 n152,1 
run_justification -full_sequential -set { 67 0 76 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n156 1 n158 0 n152 1 } -verbose -store
#attempt:841
#current_net:n152
#current_comb_set:n152 n156,1 n158,0 n152,1 
run_justification -full_sequential -set { 72 1 76 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n154 0 n158 0 n152 1 } -verbose -store
#attempt:842
#current_net:n152
#current_comb_set:n152 n154,0 n158,0 n152,1 
run_justification -full_sequential -set { 67 0 76 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n150 0 n148 1 n160 1 n141 1 } -verbose -store
#attempt:843
#current_net:n141
#current_comb_set:n141 n152,1 n150,0 n148,1 n160,1 n141,1 
run_justification -full_sequential -set { 104 1 103 0 91 1 81 1 114 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n148 1 n160 1 n141 1 } -verbose -store
#attempt:844
#current_net:n141
#current_comb_set:n141 n150,0 n148,1 n160,1 n141,1 
run_justification -full_sequential -set { 103 0 91 1 81 1 114 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n148 1 n160 1 n141 1 } -verbose -store
#attempt:845
#current_net:n141
#current_comb_set:n141 n152,1 n148,1 n160,1 n141,1 
run_justification -full_sequential -set { 104 1 91 1 81 1 114 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n150 0 n160 1 n141 1 } -verbose -store
#attempt:846
#current_net:n141
#current_comb_set:n141 n152,1 n150,0 n160,1 n141,1 
run_justification -full_sequential -set { 104 1 103 0 81 1 114 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n150 0 n148 1 n141 1 } -verbose -store
#attempt:847
#current_net:n141
#current_comb_set:n141 n152,1 n150,0 n148,1 n141,1 
run_justification -full_sequential -set { 104 1 103 0 91 1 114 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n160 1 n141 1 } -verbose -store
#attempt:848
#current_net:n141
#current_comb_set:n141 n148,1 n160,1 n141,1 
run_justification -full_sequential -set { 91 1 81 1 114 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n160 1 n141 1 } -verbose -store
#attempt:849
#current_net:n141
#current_comb_set:n141 n150,0 n160,1 n141,1 
run_justification -full_sequential -set { 103 0 81 1 114 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n148 1 n141 1 } -verbose -store
#attempt:850
#current_net:n141
#current_comb_set:n141 n150,0 n148,1 n141,1 
run_justification -full_sequential -set { 103 0 91 1 114 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n160 1 n141 1 } -verbose -store
#attempt:851
#current_net:n141
#current_comb_set:n141 n152,1 n160,1 n141,1 
run_justification -full_sequential -set { 104 1 81 1 114 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n148 1 n141 1 } -verbose -store
#attempt:852
#current_net:n141
#current_comb_set:n141 n152,1 n148,1 n141,1 
run_justification -full_sequential -set { 104 1 91 1 114 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n150 0 n141 1 } -verbose -store
#attempt:853
#current_net:n141
#current_comb_set:n141 n152,1 n150,0 n141,1 
run_justification -full_sequential -set { 104 1 103 0 114 1 } -verbose -store
#run_justification -full_sequential -set { n160 1 n141 1 } -verbose -store
#attempt:854
#current_net:n141
#current_comb_set:n141 n160,1 n141,1 
run_justification -full_sequential -set { 81 1 114 1 } -verbose -store
#run_justification -full_sequential -set { n148 1 n141 1 } -verbose -store
#attempt:855
#current_net:n141
#current_comb_set:n141 n148,1 n141,1 
run_justification -full_sequential -set { 91 1 114 1 } -verbose -store
#run_justification -full_sequential -set { n150 0 n141 1 } -verbose -store
#attempt:856
#current_net:n141
#current_comb_set:n141 n150,0 n141,1 
run_justification -full_sequential -set { 103 0 114 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n141 1 } -verbose -store
#attempt:857
#current_net:n141
#current_comb_set:n141 n152,1 n141,1 
run_justification -full_sequential -set { 104 1 114 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n156 1 n158 0 n140 0 } -verbose -store
#attempt:858
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n150,0 n156,1 n158,0 n140,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 72 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n154 0 n156 1 n158 0 n140 0 } -verbose -store
#attempt:859
#current_net:n140
#current_comb_set:n140 n141,1 n150,0 n154,0 n156,1 n158,0 n140,0 
run_justification -full_sequential -set { 114 1 103 0 67 0 72 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n154 0 n156 1 n160 1 n140 0 } -verbose -store
#attempt:860
#current_net:n140
#current_comb_set:n140 n150,0 n152,1 n154,0 n156,1 n160,1 n140,0 
run_justification -full_sequential -set { 103 0 104 1 67 0 72 1 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n156 1 n160 1 n140 0 } -verbose -store
#attempt:861
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n150,0 n156,1 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 72 1 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n154 0 n158 0 n140 0 } -verbose -store
#attempt:862
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n150,0 n154,0 n158,0 n140,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 67 0 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n154 0 n156 1 n158 0 n160 1 n140 0 } -verbose -store
#attempt:863
#current_net:n140
#current_comb_set:n140 n141,1 n154,0 n156,1 n158,0 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 67 0 72 1 76 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n154 0 n158 0 n160 1 n140 0 } -verbose -store
#attempt:864
#current_net:n140
#current_comb_set:n140 n141,1 n152,1 n154,0 n158,0 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 104 1 67 0 76 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n154 0 n156 1 n158 0 n140 0 } -verbose -store
#attempt:865
#current_net:n140
#current_comb_set:n140 n141,1 n150,0 n154,0 n156,1 n158,0 n140,0 
run_justification -full_sequential -set { 114 1 103 0 67 0 72 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n156 1 n160 1 n140 0 } -verbose -store
#attempt:866
#current_net:n140
#current_comb_set:n140 n141,1 n150,0 n152,1 n156,1 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 103 0 104 1 72 1 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n156 1 n160 1 n140 0 } -verbose -store
#attempt:867
#current_net:n140
#current_comb_set:n140 n148,1 n150,0 n154,0 n156,1 n160,1 n140,0 
run_justification -full_sequential -set { 91 1 103 0 67 0 72 1 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n156 1 n158 0 n160 1 n140 0 } -verbose -store
#attempt:868
#current_net:n140
#current_comb_set:n140 n150,0 n154,0 n156,1 n158,0 n160,1 n140,0 
run_justification -full_sequential -set { 103 0 67 0 72 1 76 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n154 0 n158 0 n140 0 } -verbose -store
#attempt:869
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n152,1 n154,0 n158,0 n140,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 67 0 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n154 0 n156 1 n158 0 n140 0 } -verbose -store
#attempt:870
#current_net:n140
#current_comb_set:n140 n148,1 n152,1 n154,0 n156,1 n158,0 n140,0 
run_justification -full_sequential -set { 91 1 104 1 67 0 72 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n156 1 n160 1 n140 0 } -verbose -store
#attempt:871
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n150,0 n156,1 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 72 1 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n156 1 n158 0 n140 0 } -verbose -store
#attempt:872
#current_net:n140
#current_comb_set:n140 n148,1 n150,0 n154,0 n156,1 n158,0 n140,0 
run_justification -full_sequential -set { 91 1 103 0 67 0 72 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n152 1 n160 1 n140 0 } -verbose -store
#attempt:873
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n150,0 n152,1 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 104 1 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n158 0 n160 1 n140 0 } -verbose -store
#attempt:874
#current_net:n140
#current_comb_set:n140 n148,1 n150,0 n152,1 n158,0 n160,1 n140,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 76 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n152 1 n160 1 n140 0 } -verbose -store
#attempt:875
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n150,0 n152,1 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 104 1 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n154 0 n158 0 n140 0 } -verbose -store
#attempt:876
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n152,1 n154,0 n158,0 n140,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 67 0 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n152 1 n160 1 n140 0 } -verbose -store
#attempt:877
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n150,0 n152,1 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 104 1 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n154 0 n158 0 n140 0 } -verbose -store
#attempt:878
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n150,0 n154,0 n158,0 n140,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 67 0 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n156 1 n160 1 n140 0 } -verbose -store
#attempt:879
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n150,0 n156,1 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 72 1 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n152 1 n160 1 n140 0 } -verbose -store
#attempt:880
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n150,0 n152,1 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 104 1 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n154 0 n158 0 n160 1 n140 0 } -verbose -store
#attempt:881
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n154,0 n158,0 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 91 1 67 0 76 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n154 0 n158 0 n140 0 } -verbose -store
#attempt:882
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n150,0 n154,0 n158,0 n140,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 67 0 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n156 1 n158 0 n140 0 } -verbose -store
#attempt:883
#current_net:n140
#current_comb_set:n140 n141,1 n150,0 n152,1 n156,1 n158,0 n140,0 
run_justification -full_sequential -set { 114 1 103 0 104 1 72 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n158 0 n160 1 n140 0 } -verbose -store
#attempt:884
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n150,0 n158,0 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 76 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n154 0 n156 1 n140 0 } -verbose -store
#attempt:885
#current_net:n140
#current_comb_set:n140 n141,1 n150,0 n152,1 n154,0 n156,1 n140,0 
run_justification -full_sequential -set { 114 1 103 0 104 1 67 0 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n156 1 n160 1 n140 0 } -verbose -store
#attempt:886
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n150,0 n156,1 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 72 1 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n154 0 n156 1 n160 1 n140 0 } -verbose -store
#attempt:887
#current_net:n140
#current_comb_set:n140 n141,1 n152,1 n154,0 n156,1 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 104 1 67 0 72 1 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n154 0 n158 0 n160 1 n140 0 } -verbose -store
#attempt:888
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n154,0 n158,0 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 91 1 67 0 76 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n152 1 n156 1 n140 0 } -verbose -store
#attempt:889
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n150,0 n152,1 n156,1 n140,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 104 1 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n154 0 n156 1 n140 0 } -verbose -store
#attempt:890
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n150,0 n154,0 n156,1 n140,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 67 0 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n154 0 n160 1 n140 0 } -verbose -store
#attempt:891
#current_net:n140
#current_comb_set:n140 n148,1 n150,0 n152,1 n154,0 n160,1 n140,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 67 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n154 0 n156 1 n160 1 n140 0 } -verbose -store
#attempt:892
#current_net:n140
#current_comb_set:n140 n141,1 n152,1 n154,0 n156,1 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 104 1 67 0 72 1 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n156 1 n158 0 n140 0 } -verbose -store
#attempt:893
#current_net:n140
#current_comb_set:n140 n148,1 n150,0 n152,1 n156,1 n158,0 n140,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 72 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n156 1 n158 0 n160 1 n140 0 } -verbose -store
#attempt:894
#current_net:n140
#current_comb_set:n140 n150,0 n152,1 n156,1 n158,0 n160,1 n140,0 
run_justification -full_sequential -set { 103 0 104 1 72 1 76 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n156 1 n158 0 n160 1 n140 0 } -verbose -store
#attempt:895
#current_net:n140
#current_comb_set:n140 n150,0 n154,0 n156,1 n158,0 n160,1 n140,0 
run_justification -full_sequential -set { 103 0 67 0 72 1 76 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n156 1 n160 1 n140 0 } -verbose -store
#attempt:896
#current_net:n140
#current_comb_set:n140 n148,1 n150,0 n154,0 n156,1 n160,1 n140,0 
run_justification -full_sequential -set { 91 1 103 0 67 0 72 1 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n154 0 n156 1 n158 0 n140 0 } -verbose -store
#attempt:897
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n154,0 n156,1 n158,0 n140,0 
run_justification -full_sequential -set { 114 1 91 1 67 0 72 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n158 0 n160 1 n140 0 } -verbose -store
#attempt:898
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n152,1 n158,0 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 76 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n156 1 n158 0 n140 0 } -verbose -store
#attempt:899
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n152,1 n156,1 n158,0 n140,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 72 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n156 1 n158 0 n140 0 } -verbose -store
#attempt:900
#current_net:n140
#current_comb_set:n140 n148,1 n150,0 n152,1 n156,1 n158,0 n140,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 72 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n158 0 n160 1 n140 0 } -verbose -store
#attempt:901
#current_net:n140
#current_comb_set:n140 n148,1 n150,0 n152,1 n158,0 n160,1 n140,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 76 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n156 1 n160 1 n140 0 } -verbose -store
#attempt:902
#current_net:n140
#current_comb_set:n140 n141,1 n150,0 n156,1 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 103 0 72 1 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n154 0 n140 0 } -verbose -store
#attempt:903
#current_net:n140
#current_comb_set:n140 n141,1 n150,0 n152,1 n154,0 n140,0 
run_justification -full_sequential -set { 114 1 103 0 104 1 67 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n154 0 n160 1 n140 0 } -verbose -store
#attempt:904
#current_net:n140
#current_comb_set:n140 n148,1 n152,1 n154,0 n160,1 n140,0 
run_justification -full_sequential -set { 91 1 104 1 67 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n158 0 n160 1 n140 0 } -verbose -store
#attempt:905
#current_net:n140
#current_comb_set:n140 n148,1 n150,0 n158,0 n160,1 n140,0 
run_justification -full_sequential -set { 91 1 103 0 76 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n156 1 n140 0 } -verbose -store
#attempt:906
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n150,0 n156,1 n140,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n154 0 n156 1 n160 1 n140 0 } -verbose -store
#attempt:907
#current_net:n140
#current_comb_set:n140 n141,1 n154,0 n156,1 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 67 0 72 1 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n154 0 n156 1 n158 0 n160 1 n140 0 } -verbose -store
#attempt:908
#current_net:n140
#current_comb_set:n140 n154,0 n156,1 n158,0 n160,1 n140,0 
run_justification -full_sequential -set { 67 0 72 1 76 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n156 1 n140 0 } -verbose -store
#attempt:909
#current_net:n140
#current_comb_set:n140 n148,1 n150,0 n154,0 n156,1 n140,0 
run_justification -full_sequential -set { 91 1 103 0 67 0 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n156 1 n158 0 n140 0 } -verbose -store
#attempt:910
#current_net:n140
#current_comb_set:n140 n148,1 n152,1 n156,1 n158,0 n140,0 
run_justification -full_sequential -set { 91 1 104 1 72 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n154 0 n156 1 n140 0 } -verbose -store
#attempt:911
#current_net:n140
#current_comb_set:n140 n141,1 n152,1 n154,0 n156,1 n140,0 
run_justification -full_sequential -set { 114 1 104 1 67 0 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n156 1 n140 0 } -verbose -store
#attempt:912
#current_net:n140
#current_comb_set:n140 n148,1 n150,0 n152,1 n156,1 n140,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n158 0 n160 1 n140 0 } -verbose -store
#attempt:913
#current_net:n140
#current_comb_set:n140 n150,0 n154,0 n158,0 n160,1 n140,0 
run_justification -full_sequential -set { 103 0 67 0 76 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n160 1 n140 0 } -verbose -store
#attempt:914
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n150,0 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n158 0 n160 1 n140 0 } -verbose -store
#attempt:915
#current_net:n140
#current_comb_set:n140 n148,1 n152,1 n158,0 n160,1 n140,0 
run_justification -full_sequential -set { 91 1 104 1 76 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n154 0 n140 0 } -verbose -store
#attempt:916
#current_net:n140
#current_comb_set:n140 n141,1 n150,0 n152,1 n154,0 n140,0 
run_justification -full_sequential -set { 114 1 103 0 104 1 67 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n154 0 n160 1 n140 0 } -verbose -store
#attempt:917
#current_net:n140
#current_comb_set:n140 n141,1 n150,0 n154,0 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 103 0 67 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n154 0 n140 0 } -verbose -store
#attempt:918
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n152,1 n154,0 n140,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 67 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n160 1 n140 0 } -verbose -store
#attempt:919
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n150,0 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n156 1 n140 0 } -verbose -store
#attempt:920
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n152,1 n156,1 n140,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 n158 0 n140 0 } -verbose -store
#attempt:921
#current_net:n140
#current_comb_set:n140 n148,1 n154,0 n156,1 n158,0 n140,0 
run_justification -full_sequential -set { 91 1 67 0 72 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n154 0 n160 1 n140 0 } -verbose -store
#attempt:922
#current_net:n140
#current_comb_set:n140 n148,1 n152,1 n154,0 n160,1 n140,0 
run_justification -full_sequential -set { 91 1 104 1 67 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n158 0 n140 0 } -verbose -store
#attempt:923
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n150,0 n158,0 n140,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n154 0 n140 0 } -verbose -store
#attempt:924
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n152,1 n154,0 n140,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 67 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n156 1 n158 0 n140 0 } -verbose -store
#attempt:925
#current_net:n140
#current_comb_set:n140 n150,0 n154,0 n156,1 n158,0 n140,0 
run_justification -full_sequential -set { 103 0 67 0 72 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n154 0 n156 1 n158 0 n140 0 } -verbose -store
#attempt:926
#current_net:n140
#current_comb_set:n140 n152,1 n154,0 n156,1 n158,0 n140,0 
run_justification -full_sequential -set { 104 1 67 0 72 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n154 0 n156 1 n158 0 n140 0 } -verbose -store
#attempt:927
#current_net:n140
#current_comb_set:n140 n152,1 n154,0 n156,1 n158,0 n140,0 
run_justification -full_sequential -set { 104 1 67 0 72 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n156 1 n140 0 } -verbose -store
#attempt:928
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n150,0 n156,1 n140,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n154 0 n158 0 n140 0 } -verbose -store
#attempt:929
#current_net:n140
#current_comb_set:n140 n141,1 n150,0 n154,0 n158,0 n140,0 
run_justification -full_sequential -set { 114 1 103 0 67 0 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n158 0 n140 0 } -verbose -store
#attempt:930
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n150,0 n158,0 n140,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n156 1 n158 0 n140 0 } -verbose -store
#attempt:931
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n156,1 n158,0 n140,0 
run_justification -full_sequential -set { 114 1 91 1 72 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n160 1 n140 0 } -verbose -store
#attempt:932
#current_net:n140
#current_comb_set:n140 n148,1 n150,0 n154,0 n160,1 n140,0 
run_justification -full_sequential -set { 91 1 103 0 67 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n156 1 n158 0 n140 0 } -verbose -store
#attempt:933
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n156,1 n158,0 n140,0 
run_justification -full_sequential -set { 114 1 91 1 72 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n156 1 n140 0 } -verbose -store
#attempt:934
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n152,1 n156,1 n140,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n152 1 n140 0 } -verbose -store
#attempt:935
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n150,0 n152,1 n140,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 104 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n156 1 n158 0 n140 0 } -verbose -store
#attempt:936
#current_net:n140
#current_comb_set:n140 n150,0 n154,0 n156,1 n158,0 n140,0 
run_justification -full_sequential -set { 103 0 67 0 72 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n158 0 n140 0 } -verbose -store
#attempt:937
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n150,0 n158,0 n140,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n156 1 n158 0 n140 0 } -verbose -store
#attempt:938
#current_net:n140
#current_comb_set:n140 n148,1 n152,1 n156,1 n158,0 n140,0 
run_justification -full_sequential -set { 91 1 104 1 72 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n158 0 n140 0 } -verbose -store
#attempt:939
#current_net:n140
#current_comb_set:n140 n141,1 n150,0 n152,1 n158,0 n140,0 
run_justification -full_sequential -set { 114 1 103 0 104 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n154 0 n156 1 n140 0 } -verbose -store
#attempt:940
#current_net:n140
#current_comb_set:n140 n141,1 n150,0 n154,0 n156,1 n140,0 
run_justification -full_sequential -set { 114 1 103 0 67 0 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n154 0 n160 1 n140 0 } -verbose -store
#attempt:941
#current_net:n140
#current_comb_set:n140 n141,1 n152,1 n154,0 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 104 1 67 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n154 0 n160 1 n140 0 } -verbose -store
#attempt:942
#current_net:n140
#current_comb_set:n140 n141,1 n152,1 n154,0 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 104 1 67 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n160 1 n140 0 } -verbose -store
#attempt:943
#current_net:n140
#current_comb_set:n140 n148,1 n150,0 n154,0 n160,1 n140,0 
run_justification -full_sequential -set { 91 1 103 0 67 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n160 1 n140 0 } -verbose -store
#attempt:944
#current_net:n140
#current_comb_set:n140 n141,1 n150,0 n152,1 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 103 0 104 1 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n160 1 n140 0 } -verbose -store
#attempt:945
#current_net:n140
#current_comb_set:n140 n148,1 n150,0 n152,1 n160,1 n140,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n158 0 n160 1 n140 0 } -verbose -store
#attempt:946
#current_net:n140
#current_comb_set:n140 n148,1 n150,0 n158,0 n160,1 n140,0 
run_justification -full_sequential -set { 91 1 103 0 76 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n156 1 n158 0 n160 1 n140 0 } -verbose -store
#attempt:947
#current_net:n140
#current_comb_set:n140 n148,1 n156,1 n158,0 n160,1 n140,0 
run_justification -full_sequential -set { 91 1 72 1 76 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n156 1 n140 0 } -verbose -store
#attempt:948
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n150,0 n156,1 n140,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n158 0 n140 0 } -verbose -store
#attempt:949
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n152,1 n158,0 n140,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n154 0 n140 0 } -verbose -store
#attempt:950
#current_net:n140
#current_comb_set:n140 n148,1 n150,0 n152,1 n154,0 n140,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 67 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n158 0 n160 1 n140 0 } -verbose -store
#attempt:951
#current_net:n140
#current_comb_set:n140 n141,1 n152,1 n158,0 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 104 1 76 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n158 0 n160 1 n140 0 } -verbose -store
#attempt:952
#current_net:n140
#current_comb_set:n140 n148,1 n154,0 n158,0 n160,1 n140,0 
run_justification -full_sequential -set { 91 1 67 0 76 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n140 0 } -verbose -store
#attempt:953
#current_net:n140
#current_comb_set:n140 n141,1 n150,0 n152,1 n140,0 
run_justification -full_sequential -set { 114 1 103 0 104 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n154 0 n156 1 n158 0 n140 0 } -verbose -store
#attempt:954
#current_net:n140
#current_comb_set:n140 n154,0 n156,1 n158,0 n140,0 
run_justification -full_sequential -set { 67 0 72 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n154 0 n140 0 } -verbose -store
#attempt:955
#current_net:n140
#current_comb_set:n140 n141,1 n150,0 n154,0 n140,0 
run_justification -full_sequential -set { 114 1 103 0 67 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n154 0 n140 0 } -verbose -store
#attempt:956
#current_net:n140
#current_comb_set:n140 n141,1 n152,1 n154,0 n140,0 
run_justification -full_sequential -set { 114 1 104 1 67 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n158 0 n160 1 n140 0 } -verbose -store
#attempt:957
#current_net:n140
#current_comb_set:n140 n148,1 n158,0 n160,1 n140,0 
run_justification -full_sequential -set { 91 1 76 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n140 0 } -verbose -store
#attempt:958
#current_net:n140
#current_comb_set:n140 n148,1 n150,0 n152,1 n140,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n158 0 n140 0 } -verbose -store
#attempt:959
#current_net:n140
#current_comb_set:n140 n141,1 n152,1 n158,0 n140,0 
run_justification -full_sequential -set { 114 1 104 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n156 1 n158 0 n140 0 } -verbose -store
#attempt:960
#current_net:n140
#current_comb_set:n140 n148,1 n156,1 n158,0 n140,0 
run_justification -full_sequential -set { 91 1 72 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 n140 0 } -verbose -store
#attempt:961
#current_net:n140
#current_comb_set:n140 n148,1 n154,0 n156,1 n140,0 
run_justification -full_sequential -set { 91 1 67 0 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n154 0 n156 1 n140 0 } -verbose -store
#attempt:962
#current_net:n140
#current_comb_set:n140 n141,1 n154,0 n156,1 n140,0 
run_justification -full_sequential -set { 114 1 67 0 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n158 0 n160 1 n140 0 } -verbose -store
#attempt:963
#current_net:n140
#current_comb_set:n140 n148,1 n158,0 n160,1 n140,0 
run_justification -full_sequential -set { 91 1 76 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n140 0 } -verbose -store
#attempt:964
#current_net:n140
#current_comb_set:n140 n148,1 n150,0 n152,1 n140,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n158 0 n160 1 n140 0 } -verbose -store
#attempt:965
#current_net:n140
#current_comb_set:n140 n141,1 n158,0 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 76 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n156 1 n140 0 } -verbose -store
#attempt:966
#current_net:n140
#current_comb_set:n140 n141,1 n152,1 n156,1 n140,0 
run_justification -full_sequential -set { 114 1 104 1 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n156 1 n160 1 n140 0 } -verbose -store
#attempt:967
#current_net:n140
#current_comb_set:n140 n148,1 n156,1 n160,1 n140,0 
run_justification -full_sequential -set { 91 1 72 1 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n160 1 n140 0 } -verbose -store
#attempt:968
#current_net:n140
#current_comb_set:n140 n150,0 n152,1 n160,1 n140,0 
run_justification -full_sequential -set { 103 0 104 1 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n156 1 n140 0 } -verbose -store
#attempt:969
#current_net:n140
#current_comb_set:n140 n148,1 n152,1 n156,1 n140,0 
run_justification -full_sequential -set { 91 1 104 1 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n156 1 n160 1 n140 0 } -verbose -store
#attempt:970
#current_net:n140
#current_comb_set:n140 n152,1 n156,1 n160,1 n140,0 
run_justification -full_sequential -set { 104 1 72 1 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n154 0 n140 0 } -verbose -store
#attempt:971
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n154,0 n140,0 
run_justification -full_sequential -set { 114 1 91 1 67 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n154 0 n140 0 } -verbose -store
#attempt:972
#current_net:n140
#current_comb_set:n140 n141,1 n150,0 n154,0 n140,0 
run_justification -full_sequential -set { 114 1 103 0 67 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 n140 0 } -verbose -store
#attempt:973
#current_net:n140
#current_comb_set:n140 n148,1 n154,0 n156,1 n140,0 
run_justification -full_sequential -set { 91 1 67 0 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n154 0 n156 1 n160 1 n140 0 } -verbose -store
#attempt:974
#current_net:n140
#current_comb_set:n140 n154,0 n156,1 n160,1 n140,0 
run_justification -full_sequential -set { 67 0 72 1 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n156 1 n158 0 n140 0 } -verbose -store
#attempt:975
#current_net:n140
#current_comb_set:n140 n141,1 n156,1 n158,0 n140,0 
run_justification -full_sequential -set { 114 1 72 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n158 0 n140 0 } -verbose -store
#attempt:976
#current_net:n140
#current_comb_set:n140 n148,1 n150,0 n158,0 n140,0 
run_justification -full_sequential -set { 91 1 103 0 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 n140 0 } -verbose -store
#attempt:977
#current_net:n140
#current_comb_set:n140 n148,1 n154,0 n156,1 n140,0 
run_justification -full_sequential -set { 91 1 67 0 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n140 0 } -verbose -store
#attempt:978
#current_net:n140
#current_comb_set:n140 n141,1 n148,1 n150,0 n140,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n158 0 n140 0 } -verbose -store
#attempt:979
#current_net:n140
#current_comb_set:n140 n150,0 n152,1 n158,0 n140,0 
run_justification -full_sequential -set { 103 0 104 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n158 0 n160 1 n140 0 } -verbose -store
#attempt:980
#current_net:n140
#current_comb_set:n140 n152,1 n158,0 n160,1 n140,0 
run_justification -full_sequential -set { 104 1 76 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n158 0 n140 0 } -verbose -store
#attempt:981
#current_net:n140
#current_comb_set:n140 n148,1 n154,0 n158,0 n140,0 
run_justification -full_sequential -set { 91 1 67 0 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n154 0 n160 1 n140 0 } -verbose -store
#attempt:982
#current_net:n140
#current_comb_set:n140 n141,1 n154,0 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 67 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n154 0 n140 0 } -verbose -store
#attempt:983
#current_net:n140
#current_comb_set:n140 n141,1 n152,1 n154,0 n140,0 
run_justification -full_sequential -set { 114 1 104 1 67 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 n140 0 } -verbose -store
#attempt:984
#current_net:n140
#current_comb_set:n140 n148,1 n154,0 n156,1 n140,0 
run_justification -full_sequential -set { 91 1 67 0 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n154 0 n160 1 n140 0 } -verbose -store
#attempt:985
#current_net:n140
#current_comb_set:n140 n141,1 n154,0 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 67 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n156 1 n140 0 } -verbose -store
#attempt:986
#current_net:n140
#current_comb_set:n140 n141,1 n150,0 n156,1 n140,0 
run_justification -full_sequential -set { 114 1 103 0 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n154 0 n156 1 n160 1 n140 0 } -verbose -store
#attempt:987
#current_net:n140
#current_comb_set:n140 n154,0 n156,1 n160,1 n140,0 
run_justification -full_sequential -set { 67 0 72 1 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n156 1 n158 0 n160 1 n140 0 } -verbose -store
#attempt:988
#current_net:n140
#current_comb_set:n140 n156,1 n158,0 n160,1 n140,0 
run_justification -full_sequential -set { 72 1 76 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n160 1 n140 0 } -verbose -store
#attempt:989
#current_net:n140
#current_comb_set:n140 n150,0 n152,1 n160,1 n140,0 
run_justification -full_sequential -set { 103 0 104 1 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n158 0 n140 0 } -verbose -store
#attempt:990
#current_net:n140
#current_comb_set:n140 n148,1 n152,1 n158,0 n140,0 
run_justification -full_sequential -set { 91 1 104 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n160 1 n140 0 } -verbose -store
#attempt:991
#current_net:n140
#current_comb_set:n140 n141,1 n152,1 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 104 1 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n154 0 n160 1 n140 0 } -verbose -store
#attempt:992
#current_net:n140
#current_comb_set:n140 n152,1 n154,0 n160,1 n140,0 
run_justification -full_sequential -set { 104 1 67 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n154 0 n160 1 n140 0 } -verbose -store
#attempt:993
#current_net:n140
#current_comb_set:n140 n152,1 n154,0 n160,1 n140,0 
run_justification -full_sequential -set { 104 1 67 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n160 1 n140 0 } -verbose -store
#attempt:994
#current_net:n140
#current_comb_set:n140 n141,1 n150,0 n160,1 n140,0 
run_justification -full_sequential -set { 114 1 103 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n156 1 n160 1 n140 0 } -verbose -store
#attempt:995
#current_net:n140
#current_comb_set:n140 n152,1 n156,1 n160,1 n140,0 
run_justification -full_sequential -set { 104 1 72 1 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n158 0 n140 0 } -verbose -store
#attempt:996
#current_net:n140
#current_comb_set:n140 n148,1 n152,1 n158,0 n140,0 
run_justification -full_sequential -set { 91 1 104 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n156 1 n160 1 n140 0 } -verbose -store
#attempt:997
#current_net:n140
#current_comb_set:n140 n150,0 n156,1 n160,1 n140,0 
run_justification -full_sequential -set { 103 0 72 1 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n156 1 n158 0 n140 0 } -verbose -store
#attempt:998
#current_net:n140
#current_comb_set:n140 n141,1 n156,1 n158,0 n140,0 
run_justification -full_sequential -set { 114 1 72 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n154 0 n140 0 } -verbose -store
#attempt:999
#current_net:n140
#current_comb_set:n140 n141,1 n154,0 n140,0 
run_justification -full_sequential -set { 114 1 67 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n140 0 } -verbose -store
#attempt:1000
#current_net:n140
#current_comb_set:n140 n141,1 n150,0 n140,0 
run_justification -full_sequential -set { 114 1 103 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n140 0 } -verbose -store
#attempt:1001
#current_net:n140
#current_comb_set:n140 n148,1 n154,0 n140,0 
run_justification -full_sequential -set { 91 1 67 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n158 0 n140 0 } -verbose -store
#attempt:1002
#current_net:n140
#current_comb_set:n140 n152,1 n158,0 n140,0 
run_justification -full_sequential -set { 104 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n156 1 n140 0 } -verbose -store
#attempt:1003
#current_net:n140
#current_comb_set:n140 n141,1 n156,1 n140,0 
run_justification -full_sequential -set { 114 1 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n158 0 n160 1 n140 0 } -verbose -store
#attempt:1004
#current_net:n140
#current_comb_set:n140 n158,0 n160,1 n140,0 
run_justification -full_sequential -set { 76 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n140 0 } -verbose -store
#attempt:1005
#current_net:n140
#current_comb_set:n140 n150,0 n154,0 n140,0 
run_justification -full_sequential -set { 103 0 67 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n156 1 n140 0 } -verbose -store
#attempt:1006
#current_net:n140
#current_comb_set:n140 n152,1 n156,1 n140,0 
run_justification -full_sequential -set { 104 1 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n160 1 n140 0 } -verbose -store
#attempt:1007
#current_net:n140
#current_comb_set:n140 n150,0 n160,1 n140,0 
run_justification -full_sequential -set { 103 0 81 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n140 0 } -verbose -store
#attempt:1008
#current_net:n140
#current_comb_set:n140 n148,1 n152,1 n140,0 
run_justification -full_sequential -set { 91 1 104 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n140 0 } -verbose -store
#attempt:1009
#current_net:n140
#current_comb_set:n140 n141,1 n150,0 n140,0 
run_justification -full_sequential -set { 114 1 103 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n158 0 n140 0 } -verbose -store
#attempt:1010
#current_net:n140
#current_comb_set:n140 n141,1 n158,0 n140,0 
run_justification -full_sequential -set { 114 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n158 0 n140 0 } -verbose -store
#attempt:1011
#current_net:n140
#current_comb_set:n140 n148,1 n158,0 n140,0 
run_justification -full_sequential -set { 91 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n156 1 n140 0 } -verbose -store
#attempt:1012
#current_net:n140
#current_comb_set:n140 n141,1 n156,1 n140,0 
run_justification -full_sequential -set { 114 1 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n140 0 } -verbose -store
#attempt:1013
#current_net:n140
#current_comb_set:n140 n141,1 n152,1 n140,0 
run_justification -full_sequential -set { 114 1 104 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n156 1 n140 0 } -verbose -store
#attempt:1014
#current_net:n140
#current_comb_set:n140 n141,1 n156,1 n140,0 
run_justification -full_sequential -set { 114 1 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n154 0 n140 0 } -verbose -store
#attempt:1015
#current_net:n140
#current_comb_set:n140 n152,1 n154,0 n140,0 
run_justification -full_sequential -set { 104 1 67 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n156 1 n140 0 } -verbose -store
#attempt:1016
#current_net:n140
#current_comb_set:n140 n152,1 n156,1 n140,0 
run_justification -full_sequential -set { 104 1 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n158 0 n140 0 } -verbose -store
#attempt:1017
#current_net:n140
#current_comb_set:n140 n148,1 n158,0 n140,0 
run_justification -full_sequential -set { 91 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n154 0 n156 1 n140 0 } -verbose -store
#attempt:1018
#current_net:n140
#current_comb_set:n140 n154,0 n156,1 n140,0 
run_justification -full_sequential -set { 67 0 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n154 0 n156 1 n140 0 } -verbose -store
#attempt:1019
#current_net:n140
#current_comb_set:n140 n154,0 n156,1 n140,0 
run_justification -full_sequential -set { 67 0 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n156 1 n140 0 } -verbose -store
#attempt:1020
#current_net:n140
#current_comb_set:n140 n148,1 n156,1 n140,0 
run_justification -full_sequential -set { 91 1 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n158 0 n140 0 } -verbose -store
#attempt:1021
#current_net:n140
#current_comb_set:n140 n141,1 n158,0 n140,0 
run_justification -full_sequential -set { 114 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n154 0 n140 0 } -verbose -store
#attempt:1022
#current_net:n140
#current_comb_set:n140 n152,1 n154,0 n140,0 
run_justification -full_sequential -set { 104 1 67 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n158 0 n140 0 } -verbose -store
#attempt:1023
#current_net:n140
#current_comb_set:n140 n141,1 n158,0 n140,0 
run_justification -full_sequential -set { 114 1 76 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n140 0 } -verbose -store
#attempt:1024
#current_net:n140
#current_comb_set:n140 n148,1 n154,0 n140,0 
run_justification -full_sequential -set { 91 1 67 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n156 1 n140 0 } -verbose -store
#attempt:1025
#current_net:n140
#current_comb_set:n140 n148,1 n156,1 n140,0 
run_justification -full_sequential -set { 91 1 72 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n154 0 n156 1 n160 1 n143 0 } -verbose -store
#attempt:1026
#current_net:n143
#current_comb_set:n143 n141,1 n152,1 n154,0 n156,1 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 104 1 67 0 72 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n154 0 n160 1 n143 0 } -verbose -store
#attempt:1027
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n150,0 n154,0 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 67 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n154 0 n158 0 n160 1 n143 0 } -verbose -store
#attempt:1028
#current_net:n143
#current_comb_set:n143 n141,1 n150,0 n154,0 n158,0 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 103 0 67 0 76 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n154 0 n156 1 n143 0 } -verbose -store
#attempt:1029
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n152,1 n154,0 n156,1 n143,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 67 0 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n156 1 n158 0 n143 0 } -verbose -store
#attempt:1030
#current_net:n143
#current_comb_set:n143 n148,1 n150,0 n152,1 n156,1 n158,0 n143,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 72 1 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n156 1 n160 1 n143 0 } -verbose -store
#attempt:1031
#current_net:n143
#current_comb_set:n143 n141,1 n150,0 n152,1 n156,1 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 103 0 104 1 72 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n154 0 n156 1 n160 1 n143 0 } -verbose -store
#attempt:1032
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n154,0 n156,1 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 91 1 67 0 72 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n154 0 n158 0 n143 0 } -verbose -store
#attempt:1033
#current_net:n143
#current_comb_set:n143 n141,1 n150,0 n152,1 n154,0 n158,0 n143,0 
run_justification -full_sequential -set { 114 1 103 0 104 1 67 0 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n154 0 n156 1 n158 0 n143 0 } -verbose -store
#attempt:1034
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n154,0 n156,1 n158,0 n143,0 
run_justification -full_sequential -set { 114 1 91 1 67 0 72 1 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n154 0 n158 0 n143 0 } -verbose -store
#attempt:1035
#current_net:n143
#current_comb_set:n143 n148,1 n150,0 n152,1 n154,0 n158,0 n143,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 67 0 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n152 1 n156 1 n143 0 } -verbose -store
#attempt:1036
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n150,0 n152,1 n156,1 n143,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 104 1 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n152 1 n158 0 n143 0 } -verbose -store
#attempt:1037
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n150,0 n152,1 n158,0 n143,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 104 1 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n156 1 n158 0 n143 0 } -verbose -store
#attempt:1038
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n152,1 n156,1 n158,0 n143,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 72 1 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n154 0 n158 0 n143 0 } -verbose -store
#attempt:1039
#current_net:n143
#current_comb_set:n143 n141,1 n150,0 n152,1 n154,0 n158,0 n143,0 
run_justification -full_sequential -set { 114 1 103 0 104 1 67 0 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n154 0 n156 1 n160 1 n143 0 } -verbose -store
#attempt:1040
#current_net:n143
#current_comb_set:n143 n141,1 n152,1 n154,0 n156,1 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 104 1 67 0 72 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n154 0 n156 1 n160 1 n143 0 } -verbose -store
#attempt:1041
#current_net:n143
#current_comb_set:n143 n148,1 n152,1 n154,0 n156,1 n160,1 n143,0 
run_justification -full_sequential -set { 91 1 104 1 67 0 72 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n154 0 n158 0 n143 0 } -verbose -store
#attempt:1042
#current_net:n143
#current_comb_set:n143 n148,1 n150,0 n152,1 n154,0 n158,0 n143,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 67 0 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n154 0 n156 1 n143 0 } -verbose -store
#attempt:1043
#current_net:n143
#current_comb_set:n143 n148,1 n150,0 n152,1 n154,0 n156,1 n143,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 67 0 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n154 0 n156 1 n143 0 } -verbose -store
#attempt:1044
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n152,1 n154,0 n156,1 n143,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 67 0 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n154 0 n158 0 n143 0 } -verbose -store
#attempt:1045
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n152,1 n154,0 n158,0 n143,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 67 0 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n154 0 n158 0 n160 1 n143 0 } -verbose -store
#attempt:1046
#current_net:n143
#current_comb_set:n143 n141,1 n150,0 n154,0 n158,0 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 103 0 67 0 76 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 n158 0 n160 1 n143 0 } -verbose -store
#attempt:1047
#current_net:n143
#current_comb_set:n143 n148,1 n154,0 n156,1 n158,0 n160,1 n143,0 
run_justification -full_sequential -set { 91 1 67 0 72 1 76 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n154 0 n156 1 n158 0 n143 0 } -verbose -store
#attempt:1048
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n154,0 n156,1 n158,0 n143,0 
run_justification -full_sequential -set { 114 1 91 1 67 0 72 1 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n156 1 n160 1 n143 0 } -verbose -store
#attempt:1049
#current_net:n143
#current_comb_set:n143 n148,1 n150,0 n154,0 n156,1 n160,1 n143,0 
run_justification -full_sequential -set { 91 1 103 0 67 0 72 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n154 0 n156 1 n143 0 } -verbose -store
#attempt:1050
#current_net:n143
#current_comb_set:n143 n148,1 n150,0 n152,1 n154,0 n156,1 n143,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 67 0 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n152 1 n158 0 n143 0 } -verbose -store
#attempt:1051
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n150,0 n152,1 n158,0 n143,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 104 1 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n154 0 n160 1 n143 0 } -verbose -store
#attempt:1052
#current_net:n143
#current_comb_set:n143 n148,1 n150,0 n152,1 n154,0 n160,1 n143,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 67 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n156 1 n158 0 n143 0 } -verbose -store
#attempt:1053
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n152,1 n156,1 n158,0 n143,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 72 1 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n156 1 n158 0 n160 1 n143 0 } -verbose -store
#attempt:1054
#current_net:n143
#current_comb_set:n143 n141,1 n152,1 n156,1 n158,0 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 104 1 72 1 76 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n156 1 n158 0 n143 0 } -verbose -store
#attempt:1055
#current_net:n143
#current_comb_set:n143 n148,1 n150,0 n154,0 n156,1 n158,0 n143,0 
run_justification -full_sequential -set { 91 1 103 0 67 0 72 1 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n154 0 n156 1 n160 1 n143 0 } -verbose -store
#attempt:1056
#current_net:n143
#current_comb_set:n143 n150,0 n152,1 n154,0 n156,1 n160,1 n143,0 
run_justification -full_sequential -set { 103 0 104 1 67 0 72 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n154 0 n156 1 n160 1 n143 0 } -verbose -store
#attempt:1057
#current_net:n143
#current_comb_set:n143 n141,1 n150,0 n154,0 n156,1 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 103 0 67 0 72 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n154 0 n156 1 n143 0 } -verbose -store
#attempt:1058
#current_net:n143
#current_comb_set:n143 n148,1 n150,0 n152,1 n154,0 n156,1 n143,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 67 0 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n156 1 n160 1 n143 0 } -verbose -store
#attempt:1059
#current_net:n143
#current_comb_set:n143 n148,1 n150,0 n152,1 n156,1 n160,1 n143,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 72 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n154 0 n158 0 n143 0 } -verbose -store
#attempt:1060
#current_net:n143
#current_comb_set:n143 n148,1 n150,0 n152,1 n154,0 n158,0 n143,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 67 0 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n156 1 n160 1 n143 0 } -verbose -store
#attempt:1061
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n150,0 n156,1 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 72 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n154 0 n158 0 n143 0 } -verbose -store
#attempt:1062
#current_net:n143
#current_comb_set:n143 n141,1 n150,0 n152,1 n154,0 n158,0 n143,0 
run_justification -full_sequential -set { 114 1 103 0 104 1 67 0 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n154 0 n160 1 n143 0 } -verbose -store
#attempt:1063
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n150,0 n154,0 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 67 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n154 0 n158 0 n143 0 } -verbose -store
#attempt:1064
#current_net:n143
#current_comb_set:n143 n148,1 n150,0 n152,1 n154,0 n158,0 n143,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 67 0 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n158 0 n160 1 n143 0 } -verbose -store
#attempt:1065
#current_net:n143
#current_comb_set:n143 n148,1 n150,0 n154,0 n158,0 n160,1 n143,0 
run_justification -full_sequential -set { 91 1 103 0 67 0 76 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n158 0 n160 1 n143 0 } -verbose -store
#attempt:1066
#current_net:n143
#current_comb_set:n143 n148,1 n150,0 n154,0 n158,0 n160,1 n143,0 
run_justification -full_sequential -set { 91 1 103 0 67 0 76 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n156 1 n158 0 n160 1 n143 0 } -verbose -store
#attempt:1067
#current_net:n143
#current_comb_set:n143 n148,1 n150,0 n156,1 n158,0 n160,1 n143,0 
run_justification -full_sequential -set { 91 1 103 0 72 1 76 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n154 0 n158 0 n160 1 n143 0 } -verbose -store
#attempt:1068
#current_net:n143
#current_comb_set:n143 n141,1 n152,1 n154,0 n158,0 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 104 1 67 0 76 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n158 0 n160 1 n143 0 } -verbose -store
#attempt:1069
#current_net:n143
#current_comb_set:n143 n148,1 n150,0 n154,0 n158,0 n160,1 n143,0 
run_justification -full_sequential -set { 91 1 103 0 67 0 76 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n156 1 n160 1 n143 0 } -verbose -store
#attempt:1070
#current_net:n143
#current_comb_set:n143 n141,1 n150,0 n152,1 n156,1 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 103 0 104 1 72 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n158 0 n160 1 n143 0 } -verbose -store
#attempt:1071
#current_net:n143
#current_comb_set:n143 n148,1 n150,0 n152,1 n158,0 n160,1 n143,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 76 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n154 0 n156 1 n160 1 n143 0 } -verbose -store
#attempt:1072
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n154,0 n156,1 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 91 1 67 0 72 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n156 1 n143 0 } -verbose -store
#attempt:1073
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n152,1 n156,1 n143,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n154 0 n143 0 } -verbose -store
#attempt:1074
#current_net:n143
#current_comb_set:n143 n141,1 n150,0 n152,1 n154,0 n143,0 
run_justification -full_sequential -set { 114 1 103 0 104 1 67 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n154 0 n143 0 } -verbose -store
#attempt:1075
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n152,1 n154,0 n143,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 67 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n154 0 n160 1 n143 0 } -verbose -store
#attempt:1076
#current_net:n143
#current_comb_set:n143 n141,1 n152,1 n154,0 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 104 1 67 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n158 0 n160 1 n143 0 } -verbose -store
#attempt:1077
#current_net:n143
#current_comb_set:n143 n141,1 n150,0 n158,0 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 103 0 76 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n156 1 n143 0 } -verbose -store
#attempt:1078
#current_net:n143
#current_comb_set:n143 n148,1 n150,0 n154,0 n156,1 n143,0 
run_justification -full_sequential -set { 91 1 103 0 67 0 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n156 1 n143 0 } -verbose -store
#attempt:1079
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n152,1 n156,1 n143,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n154 0 n156 1 n158 0 n160 1 n143 0 } -verbose -store
#attempt:1080
#current_net:n143
#current_comb_set:n143 n154,0 n156,1 n158,0 n160,1 n143,0 
run_justification -full_sequential -set { 67 0 72 1 76 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n158 0 n143 0 } -verbose -store
#attempt:1081
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n150,0 n158,0 n143,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n156 1 n158 0 n160 1 n143 0 } -verbose -store
#attempt:1082
#current_net:n143
#current_comb_set:n143 n150,0 n156,1 n158,0 n160,1 n143,0 
run_justification -full_sequential -set { 103 0 72 1 76 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n156 1 n143 0 } -verbose -store
#attempt:1083
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n152,1 n156,1 n143,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n154 0 n156 1 n143 0 } -verbose -store
#attempt:1084
#current_net:n143
#current_comb_set:n143 n148,1 n152,1 n154,0 n156,1 n143,0 
run_justification -full_sequential -set { 91 1 104 1 67 0 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n156 1 n143 0 } -verbose -store
#attempt:1085
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n152,1 n156,1 n143,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n154 0 n158 0 n160 1 n143 0 } -verbose -store
#attempt:1086
#current_net:n143
#current_comb_set:n143 n141,1 n154,0 n158,0 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 67 0 76 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n158 0 n160 1 n143 0 } -verbose -store
#attempt:1087
#current_net:n143
#current_comb_set:n143 n141,1 n152,1 n158,0 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 104 1 76 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n156 1 n158 0 n160 1 n143 0 } -verbose -store
#attempt:1088
#current_net:n143
#current_comb_set:n143 n150,0 n156,1 n158,0 n160,1 n143,0 
run_justification -full_sequential -set { 103 0 72 1 76 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n158 0 n160 1 n143 0 } -verbose -store
#attempt:1089
#current_net:n143
#current_comb_set:n143 n148,1 n152,1 n158,0 n160,1 n143,0 
run_justification -full_sequential -set { 91 1 104 1 76 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n158 0 n160 1 n143 0 } -verbose -store
#attempt:1090
#current_net:n143
#current_comb_set:n143 n148,1 n150,0 n158,0 n160,1 n143,0 
run_justification -full_sequential -set { 91 1 103 0 76 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n156 1 n143 0 } -verbose -store
#attempt:1091
#current_net:n143
#current_comb_set:n143 n141,1 n150,0 n152,1 n156,1 n143,0 
run_justification -full_sequential -set { 114 1 103 0 104 1 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n154 0 n160 1 n143 0 } -verbose -store
#attempt:1092
#current_net:n143
#current_comb_set:n143 n148,1 n152,1 n154,0 n160,1 n143,0 
run_justification -full_sequential -set { 91 1 104 1 67 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n154 0 n156 1 n158 0 n143 0 } -verbose -store
#attempt:1093
#current_net:n143
#current_comb_set:n143 n152,1 n154,0 n156,1 n158,0 n143,0 
run_justification -full_sequential -set { 104 1 67 0 72 1 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n156 1 n143 0 } -verbose -store
#attempt:1094
#current_net:n143
#current_comb_set:n143 n141,1 n150,0 n152,1 n156,1 n143,0 
run_justification -full_sequential -set { 114 1 103 0 104 1 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n156 1 n160 1 n143 0 } -verbose -store
#attempt:1095
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n156,1 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 91 1 72 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n156 1 n158 0 n160 1 n143 0 } -verbose -store
#attempt:1096
#current_net:n143
#current_comb_set:n143 n150,0 n156,1 n158,0 n160,1 n143,0 
run_justification -full_sequential -set { 103 0 72 1 76 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n154 0 n158 0 n143 0 } -verbose -store
#attempt:1097
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n154,0 n158,0 n143,0 
run_justification -full_sequential -set { 114 1 91 1 67 0 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n160 1 n143 0 } -verbose -store
#attempt:1098
#current_net:n143
#current_comb_set:n143 n141,1 n150,0 n152,1 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 103 0 104 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n154 0 n160 1 n143 0 } -verbose -store
#attempt:1099
#current_net:n143
#current_comb_set:n143 n148,1 n152,1 n154,0 n160,1 n143,0 
run_justification -full_sequential -set { 91 1 104 1 67 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n156 1 n143 0 } -verbose -store
#attempt:1100
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n152,1 n156,1 n143,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n154 0 n160 1 n143 0 } -verbose -store
#attempt:1101
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n154,0 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 91 1 67 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n156 1 n143 0 } -verbose -store
#attempt:1102
#current_net:n143
#current_comb_set:n143 n141,1 n150,0 n152,1 n156,1 n143,0 
run_justification -full_sequential -set { 114 1 103 0 104 1 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n154 0 n158 0 n143 0 } -verbose -store
#attempt:1103
#current_net:n143
#current_comb_set:n143 n150,0 n152,1 n154,0 n158,0 n143,0 
run_justification -full_sequential -set { 103 0 104 1 67 0 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n158 0 n143 0 } -verbose -store
#attempt:1104
#current_net:n143
#current_comb_set:n143 n141,1 n150,0 n152,1 n158,0 n143,0 
run_justification -full_sequential -set { 114 1 103 0 104 1 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n156 1 n143 0 } -verbose -store
#attempt:1105
#current_net:n143
#current_comb_set:n143 n148,1 n150,0 n152,1 n156,1 n143,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n160 1 n143 0 } -verbose -store
#attempt:1106
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n150,0 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n154 0 n143 0 } -verbose -store
#attempt:1107
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n150,0 n154,0 n143,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 67 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n160 1 n143 0 } -verbose -store
#attempt:1108
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n152,1 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n158 0 n143 0 } -verbose -store
#attempt:1109
#current_net:n143
#current_comb_set:n143 n148,1 n150,0 n152,1 n158,0 n143,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n156 1 n143 0 } -verbose -store
#attempt:1110
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n152,1 n156,1 n143,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n156 1 n160 1 n143 0 } -verbose -store
#attempt:1111
#current_net:n143
#current_comb_set:n143 n150,0 n152,1 n156,1 n160,1 n143,0 
run_justification -full_sequential -set { 103 0 104 1 72 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n154 0 n158 0 n143 0 } -verbose -store
#attempt:1112
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n154,0 n158,0 n143,0 
run_justification -full_sequential -set { 114 1 91 1 67 0 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n154 0 n156 1 n158 0 n143 0 } -verbose -store
#attempt:1113
#current_net:n143
#current_comb_set:n143 n152,1 n154,0 n156,1 n158,0 n143,0 
run_justification -full_sequential -set { 104 1 67 0 72 1 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n154 0 n156 1 n160 1 n143 0 } -verbose -store
#attempt:1114
#current_net:n143
#current_comb_set:n143 n141,1 n154,0 n156,1 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 67 0 72 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n156 1 n160 1 n143 0 } -verbose -store
#attempt:1115
#current_net:n143
#current_comb_set:n143 n148,1 n150,0 n156,1 n160,1 n143,0 
run_justification -full_sequential -set { 91 1 103 0 72 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n158 0 n143 0 } -verbose -store
#attempt:1116
#current_net:n143
#current_comb_set:n143 n148,1 n150,0 n152,1 n158,0 n143,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n156 1 n160 1 n143 0 } -verbose -store
#attempt:1117
#current_net:n143
#current_comb_set:n143 n150,0 n154,0 n156,1 n160,1 n143,0 
run_justification -full_sequential -set { 103 0 67 0 72 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n156 1 n158 0 n143 0 } -verbose -store
#attempt:1118
#current_net:n143
#current_comb_set:n143 n150,0 n152,1 n156,1 n158,0 n143,0 
run_justification -full_sequential -set { 103 0 104 1 72 1 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n154 0 n156 1 n143 0 } -verbose -store
#attempt:1119
#current_net:n143
#current_comb_set:n143 n148,1 n152,1 n154,0 n156,1 n143,0 
run_justification -full_sequential -set { 91 1 104 1 67 0 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n158 0 n160 1 n143 0 } -verbose -store
#attempt:1120
#current_net:n143
#current_comb_set:n143 n148,1 n154,0 n158,0 n160,1 n143,0 
run_justification -full_sequential -set { 91 1 67 0 76 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n158 0 n160 1 n143 0 } -verbose -store
#attempt:1121
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n158,0 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 91 1 76 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n158 0 n160 1 n143 0 } -verbose -store
#attempt:1122
#current_net:n143
#current_comb_set:n143 n141,1 n150,0 n158,0 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 103 0 76 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n156 1 n158 0 n143 0 } -verbose -store
#attempt:1123
#current_net:n143
#current_comb_set:n143 n150,0 n152,1 n156,1 n158,0 n143,0 
run_justification -full_sequential -set { 103 0 104 1 72 1 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n156 1 n143 0 } -verbose -store
#attempt:1124
#current_net:n143
#current_comb_set:n143 n148,1 n150,0 n154,0 n156,1 n143,0 
run_justification -full_sequential -set { 91 1 103 0 67 0 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n154 0 n156 1 n143 0 } -verbose -store
#attempt:1125
#current_net:n143
#current_comb_set:n143 n148,1 n152,1 n154,0 n156,1 n143,0 
run_justification -full_sequential -set { 91 1 104 1 67 0 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n154 0 n143 0 } -verbose -store
#attempt:1126
#current_net:n143
#current_comb_set:n143 n150,0 n152,1 n154,0 n143,0 
run_justification -full_sequential -set { 103 0 104 1 67 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n158 0 n143 0 } -verbose -store
#attempt:1127
#current_net:n143
#current_comb_set:n143 n148,1 n154,0 n158,0 n143,0 
run_justification -full_sequential -set { 91 1 67 0 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n158 0 n143 0 } -verbose -store
#attempt:1128
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n158,0 n143,0 
run_justification -full_sequential -set { 114 1 91 1 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n156 1 n143 0 } -verbose -store
#attempt:1129
#current_net:n143
#current_comb_set:n143 n141,1 n150,0 n156,1 n143,0 
run_justification -full_sequential -set { 114 1 103 0 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n156 1 n160 1 n143 0 } -verbose -store
#attempt:1130
#current_net:n143
#current_comb_set:n143 n141,1 n156,1 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 72 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n154 0 n143 0 } -verbose -store
#attempt:1131
#current_net:n143
#current_comb_set:n143 n141,1 n152,1 n154,0 n143,0 
run_justification -full_sequential -set { 114 1 104 1 67 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n154 0 n156 1 n143 0 } -verbose -store
#attempt:1132
#current_net:n143
#current_comb_set:n143 n141,1 n154,0 n156,1 n143,0 
run_justification -full_sequential -set { 114 1 67 0 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n154 0 n156 1 n143 0 } -verbose -store
#attempt:1133
#current_net:n143
#current_comb_set:n143 n152,1 n154,0 n156,1 n143,0 
run_justification -full_sequential -set { 104 1 67 0 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n154 0 n160 1 n143 0 } -verbose -store
#attempt:1134
#current_net:n143
#current_comb_set:n143 n141,1 n154,0 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 67 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n156 1 n143 0 } -verbose -store
#attempt:1135
#current_net:n143
#current_comb_set:n143 n141,1 n150,0 n156,1 n143,0 
run_justification -full_sequential -set { 114 1 103 0 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 n143 0 } -verbose -store
#attempt:1136
#current_net:n143
#current_comb_set:n143 n148,1 n154,0 n156,1 n143,0 
run_justification -full_sequential -set { 91 1 67 0 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n156 1 n143 0 } -verbose -store
#attempt:1137
#current_net:n143
#current_comb_set:n143 n150,0 n152,1 n156,1 n143,0 
run_justification -full_sequential -set { 103 0 104 1 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n160 1 n143 0 } -verbose -store
#attempt:1138
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 91 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n156 1 n143 0 } -verbose -store
#attempt:1139
#current_net:n143
#current_comb_set:n143 n141,1 n150,0 n156,1 n143,0 
run_justification -full_sequential -set { 114 1 103 0 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n156 1 n158 0 n160 1 n143 0 } -verbose -store
#attempt:1140
#current_net:n143
#current_comb_set:n143 n156,1 n158,0 n160,1 n143,0 
run_justification -full_sequential -set { 72 1 76 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n143 0 } -verbose -store
#attempt:1141
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n150,0 n143,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n156 1 n160 1 n143 0 } -verbose -store
#attempt:1142
#current_net:n143
#current_comb_set:n143 n152,1 n156,1 n160,1 n143,0 
run_justification -full_sequential -set { 104 1 72 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 n143 0 } -verbose -store
#attempt:1143
#current_net:n143
#current_comb_set:n143 n148,1 n154,0 n156,1 n143,0 
run_justification -full_sequential -set { 91 1 67 0 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n160 1 n143 0 } -verbose -store
#attempt:1144
#current_net:n143
#current_comb_set:n143 n150,0 n154,0 n160,1 n143,0 
run_justification -full_sequential -set { 103 0 67 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n156 1 n143 0 } -verbose -store
#attempt:1145
#current_net:n143
#current_comb_set:n143 n148,1 n150,0 n156,1 n143,0 
run_justification -full_sequential -set { 91 1 103 0 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n160 1 n143 0 } -verbose -store
#attempt:1146
#current_net:n143
#current_comb_set:n143 n141,1 n150,0 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 103 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n158 0 n143 0 } -verbose -store
#attempt:1147
#current_net:n143
#current_comb_set:n143 n148,1 n150,0 n158,0 n143,0 
run_justification -full_sequential -set { 91 1 103 0 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n154 0 n143 0 } -verbose -store
#attempt:1148
#current_net:n143
#current_comb_set:n143 n148,1 n152,1 n154,0 n143,0 
run_justification -full_sequential -set { 91 1 104 1 67 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n143 0 } -verbose -store
#attempt:1149
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n152,1 n143,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n158 0 n143 0 } -verbose -store
#attempt:1150
#current_net:n143
#current_comb_set:n143 n148,1 n154,0 n158,0 n143,0 
run_justification -full_sequential -set { 91 1 67 0 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n154 0 n156 1 n160 1 n143 0 } -verbose -store
#attempt:1151
#current_net:n143
#current_comb_set:n143 n154,0 n156,1 n160,1 n143,0 
run_justification -full_sequential -set { 67 0 72 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n154 0 n158 0 n143 0 } -verbose -store
#attempt:1152
#current_net:n143
#current_comb_set:n143 n152,1 n154,0 n158,0 n143,0 
run_justification -full_sequential -set { 104 1 67 0 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n158 0 n143 0 } -verbose -store
#attempt:1153
#current_net:n143
#current_comb_set:n143 n150,0 n152,1 n158,0 n143,0 
run_justification -full_sequential -set { 103 0 104 1 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n160 1 n143 0 } -verbose -store
#attempt:1154
#current_net:n143
#current_comb_set:n143 n148,1 n152,1 n160,1 n143,0 
run_justification -full_sequential -set { 91 1 104 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n156 1 n143 0 } -verbose -store
#attempt:1155
#current_net:n143
#current_comb_set:n143 n148,1 n152,1 n156,1 n143,0 
run_justification -full_sequential -set { 91 1 104 1 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n156 1 n143 0 } -verbose -store
#attempt:1156
#current_net:n143
#current_comb_set:n143 n150,0 n152,1 n156,1 n143,0 
run_justification -full_sequential -set { 103 0 104 1 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n156 1 n143 0 } -verbose -store
#attempt:1157
#current_net:n143
#current_comb_set:n143 n141,1 n152,1 n156,1 n143,0 
run_justification -full_sequential -set { 114 1 104 1 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n156 1 n158 0 n143 0 } -verbose -store
#attempt:1158
#current_net:n143
#current_comb_set:n143 n148,1 n156,1 n158,0 n143,0 
run_justification -full_sequential -set { 91 1 72 1 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n156 1 n158 0 n143 0 } -verbose -store
#attempt:1159
#current_net:n143
#current_comb_set:n143 n148,1 n156,1 n158,0 n143,0 
run_justification -full_sequential -set { 91 1 72 1 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n158 0 n143 0 } -verbose -store
#attempt:1160
#current_net:n143
#current_comb_set:n143 n141,1 n150,0 n158,0 n143,0 
run_justification -full_sequential -set { 114 1 103 0 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n156 1 n143 0 } -verbose -store
#attempt:1161
#current_net:n143
#current_comb_set:n143 n150,0 n152,1 n156,1 n143,0 
run_justification -full_sequential -set { 103 0 104 1 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n156 1 n160 1 n143 0 } -verbose -store
#attempt:1162
#current_net:n143
#current_comb_set:n143 n152,1 n156,1 n160,1 n143,0 
run_justification -full_sequential -set { 104 1 72 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n158 0 n143 0 } -verbose -store
#attempt:1163
#current_net:n143
#current_comb_set:n143 n148,1 n150,0 n158,0 n143,0 
run_justification -full_sequential -set { 91 1 103 0 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n160 1 n143 0 } -verbose -store
#attempt:1164
#current_net:n143
#current_comb_set:n143 n141,1 n152,1 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 104 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n156 1 n143 0 } -verbose -store
#attempt:1165
#current_net:n143
#current_comb_set:n143 n150,0 n152,1 n156,1 n143,0 
run_justification -full_sequential -set { 103 0 104 1 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n156 1 n160 1 n143 0 } -verbose -store
#attempt:1166
#current_net:n143
#current_comb_set:n143 n141,1 n156,1 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 72 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n154 0 n156 1 n143 0 } -verbose -store
#attempt:1167
#current_net:n143
#current_comb_set:n143 n141,1 n154,0 n156,1 n143,0 
run_justification -full_sequential -set { 114 1 67 0 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 n143 0 } -verbose -store
#attempt:1168
#current_net:n143
#current_comb_set:n143 n148,1 n154,0 n156,1 n143,0 
run_justification -full_sequential -set { 91 1 67 0 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n156 1 n160 1 n143 0 } -verbose -store
#attempt:1169
#current_net:n143
#current_comb_set:n143 n141,1 n156,1 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 72 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n158 0 n143 0 } -verbose -store
#attempt:1170
#current_net:n143
#current_comb_set:n143 n148,1 n152,1 n158,0 n143,0 
run_justification -full_sequential -set { 91 1 104 1 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n154 0 n143 0 } -verbose -store
#attempt:1171
#current_net:n143
#current_comb_set:n143 n141,1 n152,1 n154,0 n143,0 
run_justification -full_sequential -set { 114 1 104 1 67 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n156 1 n143 0 } -verbose -store
#attempt:1172
#current_net:n143
#current_comb_set:n143 n150,0 n152,1 n156,1 n143,0 
run_justification -full_sequential -set { 103 0 104 1 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n158 0 n160 1 n143 0 } -verbose -store
#attempt:1173
#current_net:n143
#current_comb_set:n143 n141,1 n158,0 n160,1 n143,0 
run_justification -full_sequential -set { 114 1 76 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n158 0 n143 0 } -verbose -store
#attempt:1174
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n158,0 n143,0 
run_justification -full_sequential -set { 114 1 91 1 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n156 1 n160 1 n143 0 } -verbose -store
#attempt:1175
#current_net:n143
#current_comb_set:n143 n156,1 n160,1 n143,0 
run_justification -full_sequential -set { 72 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n156 1 n143 0 } -verbose -store
#attempt:1176
#current_net:n143
#current_comb_set:n143 n152,1 n156,1 n143,0 
run_justification -full_sequential -set { 104 1 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n160 1 n143 0 } -verbose -store
#attempt:1177
#current_net:n143
#current_comb_set:n143 n152,1 n160,1 n143,0 
run_justification -full_sequential -set { 104 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n156 1 n143 0 } -verbose -store
#attempt:1178
#current_net:n143
#current_comb_set:n143 n141,1 n156,1 n143,0 
run_justification -full_sequential -set { 114 1 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n156 1 n143 0 } -verbose -store
#attempt:1179
#current_net:n143
#current_comb_set:n143 n152,1 n156,1 n143,0 
run_justification -full_sequential -set { 104 1 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n158 0 n143 0 } -verbose -store
#attempt:1180
#current_net:n143
#current_comb_set:n143 n141,1 n158,0 n143,0 
run_justification -full_sequential -set { 114 1 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n143 0 } -verbose -store
#attempt:1181
#current_net:n143
#current_comb_set:n143 n150,0 n154,0 n143,0 
run_justification -full_sequential -set { 103 0 67 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n143 0 } -verbose -store
#attempt:1182
#current_net:n143
#current_comb_set:n143 n150,0 n154,0 n143,0 
run_justification -full_sequential -set { 103 0 67 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n154 0 n143 0 } -verbose -store
#attempt:1183
#current_net:n143
#current_comb_set:n143 n141,1 n154,0 n143,0 
run_justification -full_sequential -set { 114 1 67 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n158 0 n143 0 } -verbose -store
#attempt:1184
#current_net:n143
#current_comb_set:n143 n152,1 n158,0 n143,0 
run_justification -full_sequential -set { 104 1 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n143 0 } -verbose -store
#attempt:1185
#current_net:n143
#current_comb_set:n143 n148,1 n154,0 n143,0 
run_justification -full_sequential -set { 91 1 67 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n158 0 n143 0 } -verbose -store
#attempt:1186
#current_net:n143
#current_comb_set:n143 n141,1 n158,0 n143,0 
run_justification -full_sequential -set { 114 1 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n143 0 } -verbose -store
#attempt:1187
#current_net:n143
#current_comb_set:n143 n150,0 n154,0 n143,0 
run_justification -full_sequential -set { 103 0 67 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n156 1 n160 1 n143 0 } -verbose -store
#attempt:1188
#current_net:n143
#current_comb_set:n143 n156,1 n160,1 n143,0 
run_justification -full_sequential -set { 72 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n156 1 n158 0 n143 0 } -verbose -store
#attempt:1189
#current_net:n143
#current_comb_set:n143 n156,1 n158,0 n143,0 
run_justification -full_sequential -set { 72 1 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n160 1 n143 0 } -verbose -store
#attempt:1190
#current_net:n143
#current_comb_set:n143 n148,1 n160,1 n143,0 
run_justification -full_sequential -set { 91 1 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n143 0 } -verbose -store
#attempt:1191
#current_net:n143
#current_comb_set:n143 n148,1 n152,1 n143,0 
run_justification -full_sequential -set { 91 1 104 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n154 0 n160 1 n143 0 } -verbose -store
#attempt:1192
#current_net:n143
#current_comb_set:n143 n154,0 n160,1 n143,0 
run_justification -full_sequential -set { 67 0 81 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n156 1 n143 0 } -verbose -store
#attempt:1193
#current_net:n143
#current_comb_set:n143 n141,1 n156,1 n143,0 
run_justification -full_sequential -set { 114 1 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n158 0 n143 0 } -verbose -store
#attempt:1194
#current_net:n143
#current_comb_set:n143 n152,1 n158,0 n143,0 
run_justification -full_sequential -set { 104 1 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n154 0 n156 1 n143 0 } -verbose -store
#attempt:1195
#current_net:n143
#current_comb_set:n143 n154,0 n156,1 n143,0 
run_justification -full_sequential -set { 67 0 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n143 0 } -verbose -store
#attempt:1196
#current_net:n143
#current_comb_set:n143 n148,1 n154,0 n143,0 
run_justification -full_sequential -set { 91 1 67 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n143 0 } -verbose -store
#attempt:1197
#current_net:n143
#current_comb_set:n143 n150,0 n152,1 n143,0 
run_justification -full_sequential -set { 103 0 104 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n158 0 n143 0 } -verbose -store
#attempt:1198
#current_net:n143
#current_comb_set:n143 n141,1 n158,0 n143,0 
run_justification -full_sequential -set { 114 1 76 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n156 1 n143 0 } -verbose -store
#attempt:1199
#current_net:n143
#current_comb_set:n143 n141,1 n156,1 n143,0 
run_justification -full_sequential -set { 114 1 72 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n143 0 } -verbose -store
#attempt:1200
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n143,0 
run_justification -full_sequential -set { 114 1 91 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n143 0 } -verbose -store
#attempt:1201
#current_net:n143
#current_comb_set:n143 n148,1 n154,0 n143,0 
run_justification -full_sequential -set { 91 1 67 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n143 0 } -verbose -store
#attempt:1202
#current_net:n143
#current_comb_set:n143 n141,1 n148,1 n143,0 
run_justification -full_sequential -set { 114 1 91 1 121 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n141 1 n152 1 n144 1 } -verbose -store
#attempt:1203
#current_net:n144
#current_comb_set:n144 n143,0 n141,1 n152,1 n144,1 
run_justification -full_sequential -set { 121 0 114 1 104 1 130 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n144 1 } -verbose -store
#attempt:1204
#current_net:n144
#current_comb_set:n144 n141,1 n152,1 n144,1 
run_justification -full_sequential -set { 114 1 104 1 130 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n152 1 n144 1 } -verbose -store
#attempt:1205
#current_net:n144
#current_comb_set:n144 n143,0 n152,1 n144,1 
run_justification -full_sequential -set { 121 0 104 1 130 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n141 1 n144 1 } -verbose -store
#attempt:1206
#current_net:n144
#current_comb_set:n144 n143,0 n141,1 n144,1 
run_justification -full_sequential -set { 121 0 114 1 130 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n144 1 } -verbose -store
#attempt:1207
#current_net:n144
#current_comb_set:n144 n152,1 n144,1 
run_justification -full_sequential -set { 104 1 130 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 } -verbose -store
#attempt:1208
#current_net:n144
#current_comb_set:n144 n141,1 n144,1 
run_justification -full_sequential -set { 114 1 130 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 } -verbose -store
#attempt:1209
#current_net:n144
#current_comb_set:n144 n143,0 n144,1 
run_justification -full_sequential -set { 121 0 130 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n150 0 n152 1 n156 1 n145 0 } -verbose -store
#attempt:1210
#current_net:n145
#current_comb_set:n145 n143,0 n144,1 n150,0 n152,1 n156,1 n145,0 
run_justification -full_sequential -set { 121 0 130 1 103 0 104 1 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n148 1 n150 0 n154 0 n160 1 n145 0 } -verbose -store
#attempt:1211
#current_net:n145
#current_comb_set:n145 n143,0 n148,1 n150,0 n154,0 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 91 1 103 0 67 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n150 0 n152 1 n154 0 n160 1 n145 0 } -verbose -store
#attempt:1212
#current_net:n145
#current_comb_set:n145 n144,1 n150,0 n152,1 n154,0 n160,1 n145,0 
run_justification -full_sequential -set { 130 1 103 0 104 1 67 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n150 0 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1213
#current_net:n145
#current_comb_set:n145 n141,1 n143,0 n150,0 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 121 0 103 0 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n154 0 n156 1 n158 0 n145 0 } -verbose -store
#attempt:1214
#current_net:n145
#current_comb_set:n145 n143,0 n144,1 n154,0 n156,1 n158,0 n145,0 
run_justification -full_sequential -set { 121 0 130 1 67 0 72 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n154 0 n158 0 n145 0 } -verbose -store
#attempt:1215
#current_net:n145
#current_comb_set:n145 n148,1 n150,0 n152,1 n154,0 n158,0 n145,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 67 0 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n156 1 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1216
#current_net:n145
#current_comb_set:n145 n143,0 n144,1 n156,1 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 130 1 72 1 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n156 1 n158 0 n145 0 } -verbose -store
#attempt:1217
#current_net:n145
#current_comb_set:n145 n148,1 n150,0 n154,0 n156,1 n158,0 n145,0 
run_justification -full_sequential -set { 91 1 103 0 67 0 72 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n148 1 n152 1 n160 1 n145 0 } -verbose -store
#attempt:1218
#current_net:n145
#current_comb_set:n145 n141,1 n144,1 n148,1 n152,1 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 130 1 91 1 104 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n154 0 n156 1 n158 0 n145 0 } -verbose -store
#attempt:1219
#current_net:n145
#current_comb_set:n145 n141,1 n150,0 n154,0 n156,1 n158,0 n145,0 
run_justification -full_sequential -set { 114 1 103 0 67 0 72 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n148 1 n154 0 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1220
#current_net:n145
#current_comb_set:n145 n144,1 n148,1 n154,0 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 130 1 91 1 67 0 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n154 0 n156 1 n160 1 n145 0 } -verbose -store
#attempt:1221
#current_net:n145
#current_comb_set:n145 n141,1 n143,0 n154,0 n156,1 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 121 0 67 0 72 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n154 0 n158 0 n145 0 } -verbose -store
#attempt:1222
#current_net:n145
#current_comb_set:n145 n141,1 n150,0 n152,1 n154,0 n158,0 n145,0 
run_justification -full_sequential -set { 114 1 103 0 104 1 67 0 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n150 0 n154 0 n156 1 n145 0 } -verbose -store
#attempt:1223
#current_net:n145
#current_comb_set:n145 n141,1 n144,1 n150,0 n154,0 n156,1 n145,0 
run_justification -full_sequential -set { 114 1 130 1 103 0 67 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n154 0 n156 1 n158 0 n145 0 } -verbose -store
#attempt:1224
#current_net:n145
#current_comb_set:n145 n150,0 n152,1 n154,0 n156,1 n158,0 n145,0 
run_justification -full_sequential -set { 103 0 104 1 67 0 72 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n150 0 n154 0 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1225
#current_net:n145
#current_comb_set:n145 n143,0 n150,0 n154,0 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 103 0 67 0 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n154 0 n156 1 n158 0 n145 0 } -verbose -store
#attempt:1226
#current_net:n145
#current_comb_set:n145 n150,0 n152,1 n154,0 n156,1 n158,0 n145,0 
run_justification -full_sequential -set { 103 0 104 1 67 0 72 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n152 1 n154 0 n156 1 n158 0 n145 0 } -verbose -store
#attempt:1227
#current_net:n145
#current_comb_set:n145 n143,0 n152,1 n154,0 n156,1 n158,0 n145,0 
run_justification -full_sequential -set { 121 0 104 1 67 0 72 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n150 0 n156 1 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1228
#current_net:n145
#current_comb_set:n145 n143,0 n150,0 n156,1 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 103 0 72 1 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n154 0 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1229
#current_net:n145
#current_comb_set:n145 n141,1 n143,0 n154,0 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 121 0 67 0 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n150 0 n154 0 n156 1 n158 0 n145 0 } -verbose -store
#attempt:1230
#current_net:n145
#current_comb_set:n145 n143,0 n150,0 n154,0 n156,1 n158,0 n145,0 
run_justification -full_sequential -set { 121 0 103 0 67 0 72 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n150 0 n154 0 n160 1 n145 0 } -verbose -store
#attempt:1231
#current_net:n145
#current_comb_set:n145 n141,1 n143,0 n150,0 n154,0 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 121 0 103 0 67 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n144 1 n152 1 n160 1 n145 0 } -verbose -store
#attempt:1232
#current_net:n145
#current_comb_set:n145 n141,1 n143,0 n144,1 n152,1 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 121 0 130 1 104 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n150 0 n152 1 n154 0 n160 1 n145 0 } -verbose -store
#attempt:1233
#current_net:n145
#current_comb_set:n145 n143,0 n150,0 n152,1 n154,0 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 103 0 104 1 67 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n148 1 n150 0 n154 0 n145 0 } -verbose -store
#attempt:1234
#current_net:n145
#current_comb_set:n145 n143,0 n144,1 n148,1 n150,0 n154,0 n145,0 
run_justification -full_sequential -set { 121 0 130 1 91 1 103 0 67 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n148 1 n152 1 n154 0 n145 0 } -verbose -store
#attempt:1235
#current_net:n145
#current_comb_set:n145 n143,0 n144,1 n148,1 n152,1 n154,0 n145,0 
run_justification -full_sequential -set { 121 0 130 1 91 1 104 1 67 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n150 0 n152 1 n156 1 n145 0 } -verbose -store
#attempt:1236
#current_net:n145
#current_comb_set:n145 n141,1 n143,0 n150,0 n152,1 n156,1 n145,0 
run_justification -full_sequential -set { 114 1 121 0 103 0 104 1 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n150 0 n154 0 n156 1 n160 1 n145 0 } -verbose -store
#attempt:1237
#current_net:n145
#current_comb_set:n145 n144,1 n150,0 n154,0 n156,1 n160,1 n145,0 
run_justification -full_sequential -set { 130 1 103 0 67 0 72 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n148 1 n154 0 n158 0 n145 0 } -verbose -store
#attempt:1238
#current_net:n145
#current_comb_set:n145 n141,1 n144,1 n148,1 n154,0 n158,0 n145,0 
run_justification -full_sequential -set { 114 1 130 1 91 1 67 0 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n156 1 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1239
#current_net:n145
#current_comb_set:n145 n150,0 n154,0 n156,1 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 103 0 67 0 72 1 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n148 1 n152 1 n156 1 n160 1 n145 0 } -verbose -store
#attempt:1240
#current_net:n145
#current_comb_set:n145 n144,1 n148,1 n152,1 n156,1 n160,1 n145,0 
run_justification -full_sequential -set { 130 1 91 1 104 1 72 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n152 1 n154 0 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1241
#current_net:n145
#current_comb_set:n145 n144,1 n152,1 n154,0 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 130 1 104 1 67 0 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n150 0 n154 0 n160 1 n145 0 } -verbose -store
#attempt:1242
#current_net:n145
#current_comb_set:n145 n141,1 n143,0 n150,0 n154,0 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 121 0 103 0 67 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n150 0 n152 1 n156 1 n145 0 } -verbose -store
#attempt:1243
#current_net:n145
#current_comb_set:n145 n141,1 n144,1 n150,0 n152,1 n156,1 n145,0 
run_justification -full_sequential -set { 114 1 130 1 103 0 104 1 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n154 0 n156 1 n160 1 n145 0 } -verbose -store
#attempt:1244
#current_net:n145
#current_comb_set:n145 n141,1 n150,0 n154,0 n156,1 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 103 0 67 0 72 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n148 1 n150 0 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1245
#current_net:n145
#current_comb_set:n145 n144,1 n148,1 n150,0 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 130 1 91 1 103 0 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n150 0 n154 0 n158 0 n145 0 } -verbose -store
#attempt:1246
#current_net:n145
#current_comb_set:n145 n143,0 n144,1 n150,0 n154,0 n158,0 n145,0 
run_justification -full_sequential -set { 121 0 130 1 103 0 67 0 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n144 1 n150 0 n160 1 n145 0 } -verbose -store
#attempt:1247
#current_net:n145
#current_comb_set:n145 n141,1 n143,0 n144,1 n150,0 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 121 0 130 1 103 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n150 0 n156 1 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1248
#current_net:n145
#current_comb_set:n145 n144,1 n150,0 n156,1 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 130 1 103 0 72 1 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n154 0 n156 1 n160 1 n145 0 } -verbose -store
#attempt:1249
#current_net:n145
#current_comb_set:n145 n141,1 n150,0 n154,0 n156,1 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 103 0 67 0 72 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1250
#current_net:n145
#current_comb_set:n145 n148,1 n154,0 n156,1 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 91 1 67 0 72 1 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n148 1 n154 0 n160 1 n145 0 } -verbose -store
#attempt:1251
#current_net:n145
#current_comb_set:n145 n143,0 n144,1 n148,1 n154,0 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 130 1 91 1 67 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n150 0 n152 1 n158 0 n145 0 } -verbose -store
#attempt:1252
#current_net:n145
#current_comb_set:n145 n143,0 n144,1 n150,0 n152,1 n158,0 n145,0 
run_justification -full_sequential -set { 121 0 130 1 103 0 104 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n148 1 n150 0 n152 1 n160 1 n145 0 } -verbose -store
#attempt:1253
#current_net:n145
#current_comb_set:n145 n144,1 n148,1 n150,0 n152,1 n160,1 n145,0 
run_justification -full_sequential -set { 130 1 91 1 103 0 104 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n150 0 n156 1 n158 0 n145 0 } -verbose -store
#attempt:1254
#current_net:n145
#current_comb_set:n145 n143,0 n144,1 n150,0 n156,1 n158,0 n145,0 
run_justification -full_sequential -set { 121 0 130 1 103 0 72 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n154 0 n156 1 n158 0 n145 0 } -verbose -store
#attempt:1255
#current_net:n145
#current_comb_set:n145 n141,1 n144,1 n154,0 n156,1 n158,0 n145,0 
run_justification -full_sequential -set { 114 1 130 1 67 0 72 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n148 1 n154 0 n156 1 n158 0 n145 0 } -verbose -store
#attempt:1256
#current_net:n145
#current_comb_set:n145 n143,0 n148,1 n154,0 n156,1 n158,0 n145,0 
run_justification -full_sequential -set { 121 0 91 1 67 0 72 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n148 1 n156 1 n158 0 n145 0 } -verbose -store
#attempt:1257
#current_net:n145
#current_comb_set:n145 n143,0 n144,1 n148,1 n156,1 n158,0 n145,0 
run_justification -full_sequential -set { 121 0 130 1 91 1 72 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n154 0 n156 1 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1258
#current_net:n145
#current_comb_set:n145 n144,1 n154,0 n156,1 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 130 1 67 0 72 1 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n154 0 n156 1 n158 0 n145 0 } -verbose -store
#attempt:1259
#current_net:n145
#current_comb_set:n145 n141,1 n148,1 n154,0 n156,1 n158,0 n145,0 
run_justification -full_sequential -set { 114 1 91 1 67 0 72 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n152 1 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1260
#current_net:n145
#current_comb_set:n145 n143,0 n144,1 n152,1 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 130 1 104 1 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n148 1 n150 0 n160 1 n145 0 } -verbose -store
#attempt:1261
#current_net:n145
#current_comb_set:n145 n143,0 n144,1 n148,1 n150,0 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 130 1 91 1 103 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n150 0 n154 0 n156 1 n158 0 n145 0 } -verbose -store
#attempt:1262
#current_net:n145
#current_comb_set:n145 n144,1 n150,0 n154,0 n156,1 n158,0 n145,0 
run_justification -full_sequential -set { 130 1 103 0 67 0 72 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n148 1 n150 0 n156 1 n158 0 n145 0 } -verbose -store
#attempt:1263
#current_net:n145
#current_comb_set:n145 n143,0 n148,1 n150,0 n156,1 n158,0 n145,0 
run_justification -full_sequential -set { 121 0 91 1 103 0 72 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n152 1 n156 1 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1264
#current_net:n145
#current_comb_set:n145 n143,0 n152,1 n156,1 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 104 1 72 1 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n148 1 n150 0 n154 0 n156 1 n145 0 } -verbose -store
#attempt:1265
#current_net:n145
#current_comb_set:n145 n143,0 n148,1 n150,0 n154,0 n156,1 n145,0 
run_justification -full_sequential -set { 121 0 91 1 103 0 67 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n148 1 n150 0 n154 0 n158 0 n145 0 } -verbose -store
#attempt:1266
#current_net:n145
#current_comb_set:n145 n144,1 n148,1 n150,0 n154,0 n158,0 n145,0 
run_justification -full_sequential -set { 130 1 91 1 103 0 67 0 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n148 1 n150 0 n156 1 n145 0 } -verbose -store
#attempt:1267
#current_net:n145
#current_comb_set:n145 n143,0 n144,1 n148,1 n150,0 n156,1 n145,0 
run_justification -full_sequential -set { 121 0 130 1 91 1 103 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n152 1 n154 0 n156 1 n160 1 n145 0 } -verbose -store
#attempt:1268
#current_net:n145
#current_comb_set:n145 n143,0 n152,1 n154,0 n156,1 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 104 1 67 0 72 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n148 1 n150 0 n154 0 n145 0 } -verbose -store
#attempt:1269
#current_net:n145
#current_comb_set:n145 n143,0 n144,1 n148,1 n150,0 n154,0 n145,0 
run_justification -full_sequential -set { 121 0 130 1 91 1 103 0 67 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n156 1 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1270
#current_net:n145
#current_comb_set:n145 n141,1 n152,1 n156,1 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 104 1 72 1 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n148 1 n154 0 n156 1 n160 1 n145 0 } -verbose -store
#attempt:1271
#current_net:n145
#current_comb_set:n145 n143,0 n148,1 n154,0 n156,1 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 91 1 67 0 72 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n148 1 n154 0 n160 1 n145 0 } -verbose -store
#attempt:1272
#current_net:n145
#current_comb_set:n145 n141,1 n143,0 n148,1 n154,0 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 121 0 91 1 67 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n148 1 n150 0 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1273
#current_net:n145
#current_comb_set:n145 n143,0 n148,1 n150,0 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 91 1 103 0 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n156 1 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1274
#current_net:n145
#current_comb_set:n145 n150,0 n154,0 n156,1 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 103 0 67 0 72 1 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n150 0 n152 1 n158 0 n145 0 } -verbose -store
#attempt:1275
#current_net:n145
#current_comb_set:n145 n141,1 n144,1 n150,0 n152,1 n158,0 n145,0 
run_justification -full_sequential -set { 114 1 130 1 103 0 104 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n150 0 n152 1 n154 0 n158 0 n145 0 } -verbose -store
#attempt:1276
#current_net:n145
#current_comb_set:n145 n144,1 n150,0 n152,1 n154,0 n158,0 n145,0 
run_justification -full_sequential -set { 130 1 103 0 104 1 67 0 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n152 1 n156 1 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1277
#current_net:n145
#current_comb_set:n145 n144,1 n152,1 n156,1 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 130 1 104 1 72 1 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n150 0 n152 1 n154 0 n156 1 n145 0 } -verbose -store
#attempt:1278
#current_net:n145
#current_comb_set:n145 n143,0 n150,0 n152,1 n154,0 n156,1 n145,0 
run_justification -full_sequential -set { 121 0 103 0 104 1 67 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n154 0 n156 1 n145 0 } -verbose -store
#attempt:1279
#current_net:n145
#current_comb_set:n145 n141,1 n148,1 n152,1 n154,0 n156,1 n145,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 67 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n150 0 n154 0 n156 1 n145 0 } -verbose -store
#attempt:1280
#current_net:n145
#current_comb_set:n145 n141,1 n143,0 n150,0 n154,0 n156,1 n145,0 
run_justification -full_sequential -set { 114 1 121 0 103 0 67 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n156 1 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1281
#current_net:n145
#current_comb_set:n145 n148,1 n150,0 n156,1 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 91 1 103 0 72 1 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n148 1 n150 0 n160 1 n145 0 } -verbose -store
#attempt:1282
#current_net:n145
#current_comb_set:n145 n143,0 n144,1 n148,1 n150,0 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 130 1 91 1 103 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1283
#current_net:n145
#current_comb_set:n145 n141,1 n148,1 n152,1 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n148 1 n150 0 n156 1 n160 1 n145 0 } -verbose -store
#attempt:1284
#current_net:n145
#current_comb_set:n145 n144,1 n148,1 n150,0 n156,1 n160,1 n145,0 
run_justification -full_sequential -set { 130 1 91 1 103 0 72 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n148 1 n154 0 n160 1 n145 0 } -verbose -store
#attempt:1285
#current_net:n145
#current_comb_set:n145 n141,1 n143,0 n148,1 n154,0 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 121 0 91 1 67 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n148 1 n154 0 n156 1 n145 0 } -verbose -store
#attempt:1286
#current_net:n145
#current_comb_set:n145 n141,1 n144,1 n148,1 n154,0 n156,1 n145,0 
run_justification -full_sequential -set { 114 1 130 1 91 1 67 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n154 0 n156 1 n145 0 } -verbose -store
#attempt:1287
#current_net:n145
#current_comb_set:n145 n141,1 n150,0 n152,1 n154,0 n156,1 n145,0 
run_justification -full_sequential -set { 114 1 103 0 104 1 67 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n148 1 n150 0 n152 1 n145 0 } -verbose -store
#attempt:1288
#current_net:n145
#current_comb_set:n145 n141,1 n143,0 n148,1 n150,0 n152,1 n145,0 
run_justification -full_sequential -set { 114 1 121 0 91 1 103 0 104 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n150 0 n154 0 n158 0 n145 0 } -verbose -store
#attempt:1289
#current_net:n145
#current_comb_set:n145 n141,1 n143,0 n150,0 n154,0 n158,0 n145,0 
run_justification -full_sequential -set { 114 1 121 0 103 0 67 0 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n148 1 n150 0 n152 1 n158 0 n145 0 } -verbose -store
#attempt:1290
#current_net:n145
#current_comb_set:n145 n143,0 n148,1 n150,0 n152,1 n158,0 n145,0 
run_justification -full_sequential -set { 121 0 91 1 103 0 104 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n148 1 n152 1 n156 1 n160 1 n145 0 } -verbose -store
#attempt:1291
#current_net:n145
#current_comb_set:n145 n144,1 n148,1 n152,1 n156,1 n160,1 n145,0 
run_justification -full_sequential -set { 130 1 91 1 104 1 72 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n152 1 n156 1 n160 1 n145 0 } -verbose -store
#attempt:1292
#current_net:n145
#current_comb_set:n145 n143,0 n144,1 n152,1 n156,1 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 130 1 104 1 72 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n148 1 n150 0 n152 1 n160 1 n145 0 } -verbose -store
#attempt:1293
#current_net:n145
#current_comb_set:n145 n143,0 n148,1 n150,0 n152,1 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 91 1 103 0 104 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n150 0 n152 1 n160 1 n145 0 } -verbose -store
#attempt:1294
#current_net:n145
#current_comb_set:n145 n141,1 n144,1 n150,0 n152,1 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 130 1 103 0 104 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n148 1 n158 0 n145 0 } -verbose -store
#attempt:1295
#current_net:n145
#current_comb_set:n145 n141,1 n144,1 n148,1 n158,0 n145,0 
run_justification -full_sequential -set { 114 1 130 1 91 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n156 1 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1296
#current_net:n145
#current_comb_set:n145 n150,0 n156,1 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 103 0 72 1 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n144 1 n150 0 n145 0 } -verbose -store
#attempt:1297
#current_net:n145
#current_comb_set:n145 n141,1 n143,0 n144,1 n150,0 n145,0 
run_justification -full_sequential -set { 114 1 121 0 130 1 103 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n156 1 n160 1 n145 0 } -verbose -store
#attempt:1298
#current_net:n145
#current_comb_set:n145 n148,1 n150,0 n156,1 n160,1 n145,0 
run_justification -full_sequential -set { 91 1 103 0 72 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n154 0 n158 0 n145 0 } -verbose -store
#attempt:1299
#current_net:n145
#current_comb_set:n145 n141,1 n144,1 n154,0 n158,0 n145,0 
run_justification -full_sequential -set { 114 1 130 1 67 0 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n148 1 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1300
#current_net:n145
#current_comb_set:n145 n144,1 n148,1 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 130 1 91 1 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n154 0 n156 1 n158 0 n145 0 } -verbose -store
#attempt:1301
#current_net:n145
#current_comb_set:n145 n150,0 n154,0 n156,1 n158,0 n145,0 
run_justification -full_sequential -set { 103 0 67 0 72 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n156 1 n158 0 n145 0 } -verbose -store
#attempt:1302
#current_net:n145
#current_comb_set:n145 n141,1 n150,0 n156,1 n158,0 n145,0 
run_justification -full_sequential -set { 114 1 103 0 72 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n148 1 n152 1 n145 0 } -verbose -store
#attempt:1303
#current_net:n145
#current_comb_set:n145 n141,1 n143,0 n148,1 n152,1 n145,0 
run_justification -full_sequential -set { 114 1 121 0 91 1 104 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n148 1 n152 1 n160 1 n145 0 } -verbose -store
#attempt:1304
#current_net:n145
#current_comb_set:n145 n143,0 n148,1 n152,1 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 91 1 104 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n154 0 n156 1 n145 0 } -verbose -store
#attempt:1305
#current_net:n145
#current_comb_set:n145 n141,1 n148,1 n154,0 n156,1 n145,0 
run_justification -full_sequential -set { 114 1 91 1 67 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n144 1 n160 1 n145 0 } -verbose -store
#attempt:1306
#current_net:n145
#current_comb_set:n145 n141,1 n143,0 n144,1 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 121 0 130 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n150 0 n156 1 n160 1 n145 0 } -verbose -store
#attempt:1307
#current_net:n145
#current_comb_set:n145 n144,1 n150,0 n156,1 n160,1 n145,0 
run_justification -full_sequential -set { 130 1 103 0 72 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n150 0 n152 1 n158 0 n145 0 } -verbose -store
#attempt:1308
#current_net:n145
#current_comb_set:n145 n144,1 n150,0 n152,1 n158,0 n145,0 
run_justification -full_sequential -set { 130 1 103 0 104 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n148 1 n150 0 n156 1 n145 0 } -verbose -store
#attempt:1309
#current_net:n145
#current_comb_set:n145 n143,0 n148,1 n150,0 n156,1 n145,0 
run_justification -full_sequential -set { 121 0 91 1 103 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n148 1 n158 0 n145 0 } -verbose -store
#attempt:1310
#current_net:n145
#current_comb_set:n145 n143,0 n144,1 n148,1 n158,0 n145,0 
run_justification -full_sequential -set { 121 0 130 1 91 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n156 1 n160 1 n145 0 } -verbose -store
#attempt:1311
#current_net:n145
#current_comb_set:n145 n141,1 n152,1 n156,1 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 104 1 72 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n156 1 n160 1 n145 0 } -verbose -store
#attempt:1312
#current_net:n145
#current_comb_set:n145 n150,0 n152,1 n156,1 n160,1 n145,0 
run_justification -full_sequential -set { 103 0 104 1 72 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n150 0 n154 0 n160 1 n145 0 } -verbose -store
#attempt:1313
#current_net:n145
#current_comb_set:n145 n144,1 n150,0 n154,0 n160,1 n145,0 
run_justification -full_sequential -set { 130 1 103 0 67 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n144 1 n150 0 n145 0 } -verbose -store
#attempt:1314
#current_net:n145
#current_comb_set:n145 n141,1 n143,0 n144,1 n150,0 n145,0 
run_justification -full_sequential -set { 114 1 121 0 130 1 103 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n148 1 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1315
#current_net:n145
#current_comb_set:n145 n144,1 n148,1 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 130 1 91 1 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n156 1 n160 1 n145 0 } -verbose -store
#attempt:1316
#current_net:n145
#current_comb_set:n145 n148,1 n150,0 n156,1 n160,1 n145,0 
run_justification -full_sequential -set { 91 1 103 0 72 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n152 1 n158 0 n145 0 } -verbose -store
#attempt:1317
#current_net:n145
#current_comb_set:n145 n143,0 n144,1 n152,1 n158,0 n145,0 
run_justification -full_sequential -set { 121 0 130 1 104 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n156 1 n160 1 n145 0 } -verbose -store
#attempt:1318
#current_net:n145
#current_comb_set:n145 n141,1 n148,1 n156,1 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 91 1 72 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n148 1 n154 0 n156 1 n145 0 } -verbose -store
#attempt:1319
#current_net:n145
#current_comb_set:n145 n144,1 n148,1 n154,0 n156,1 n145,0 
run_justification -full_sequential -set { 130 1 91 1 67 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n156 1 n160 1 n145 0 } -verbose -store
#attempt:1320
#current_net:n145
#current_comb_set:n145 n148,1 n152,1 n156,1 n160,1 n145,0 
run_justification -full_sequential -set { 91 1 104 1 72 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n148 1 n158 0 n145 0 } -verbose -store
#attempt:1321
#current_net:n145
#current_comb_set:n145 n143,0 n144,1 n148,1 n158,0 n145,0 
run_justification -full_sequential -set { 121 0 130 1 91 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n150 0 n152 1 n154 0 n145 0 } -verbose -store
#attempt:1322
#current_net:n145
#current_comb_set:n145 n144,1 n150,0 n152,1 n154,0 n145,0 
run_justification -full_sequential -set { 130 1 103 0 104 1 67 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n158 0 n145 0 } -verbose -store
#attempt:1323
#current_net:n145
#current_comb_set:n145 n141,1 n148,1 n150,0 n158,0 n145,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n148 1 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1324
#current_net:n145
#current_comb_set:n145 n143,0 n148,1 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 91 1 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n154 0 n156 1 n145 0 } -verbose -store
#attempt:1325
#current_net:n145
#current_comb_set:n145 n141,1 n148,1 n154,0 n156,1 n145,0 
run_justification -full_sequential -set { 114 1 91 1 67 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n150 0 n154 0 n156 1 n145 0 } -verbose -store
#attempt:1326
#current_net:n145
#current_comb_set:n145 n143,0 n150,0 n154,0 n156,1 n145,0 
run_justification -full_sequential -set { 121 0 103 0 67 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n154 0 n158 0 n145 0 } -verbose -store
#attempt:1327
#current_net:n145
#current_comb_set:n145 n148,1 n152,1 n154,0 n158,0 n145,0 
run_justification -full_sequential -set { 91 1 104 1 67 0 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n148 1 n150 0 n160 1 n145 0 } -verbose -store
#attempt:1328
#current_net:n145
#current_comb_set:n145 n143,0 n148,1 n150,0 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 91 1 103 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n148 1 n156 1 n160 1 n145 0 } -verbose -store
#attempt:1329
#current_net:n145
#current_comb_set:n145 n144,1 n148,1 n156,1 n160,1 n145,0 
run_justification -full_sequential -set { 130 1 91 1 72 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n152 1 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1330
#current_net:n145
#current_comb_set:n145 n143,0 n152,1 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 104 1 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n154 0 n156 1 n145 0 } -verbose -store
#attempt:1331
#current_net:n145
#current_comb_set:n145 n141,1 n148,1 n154,0 n156,1 n145,0 
run_justification -full_sequential -set { 114 1 91 1 67 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n148 1 n154 0 n158 0 n145 0 } -verbose -store
#attempt:1332
#current_net:n145
#current_comb_set:n145 n144,1 n148,1 n154,0 n158,0 n145,0 
run_justification -full_sequential -set { 130 1 91 1 67 0 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n152 1 n154 0 n160 1 n145 0 } -verbose -store
#attempt:1333
#current_net:n145
#current_comb_set:n145 n143,0 n152,1 n154,0 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 104 1 67 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n148 1 n152 1 n145 0 } -verbose -store
#attempt:1334
#current_net:n145
#current_comb_set:n145 n141,1 n144,1 n148,1 n152,1 n145,0 
run_justification -full_sequential -set { 114 1 130 1 91 1 104 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n148 1 n156 1 n158 0 n145 0 } -verbose -store
#attempt:1335
#current_net:n145
#current_comb_set:n145 n144,1 n148,1 n156,1 n158,0 n145,0 
run_justification -full_sequential -set { 130 1 91 1 72 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n150 0 n160 1 n145 0 } -verbose -store
#attempt:1336
#current_net:n145
#current_comb_set:n145 n143,0 n144,1 n150,0 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 130 1 103 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n154 0 n145 0 } -verbose -store
#attempt:1337
#current_net:n145
#current_comb_set:n145 n141,1 n150,0 n152,1 n154,0 n145,0 
run_justification -full_sequential -set { 114 1 103 0 104 1 67 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n154 0 n158 0 n145 0 } -verbose -store
#attempt:1338
#current_net:n145
#current_comb_set:n145 n143,0 n144,1 n154,0 n158,0 n145,0 
run_justification -full_sequential -set { 121 0 130 1 67 0 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n156 1 n145 0 } -verbose -store
#attempt:1339
#current_net:n145
#current_comb_set:n145 n141,1 n148,1 n150,0 n156,1 n145,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n154 0 n160 1 n145 0 } -verbose -store
#attempt:1340
#current_net:n145
#current_comb_set:n145 n141,1 n150,0 n154,0 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 103 0 67 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n152 1 n158 0 n145 0 } -verbose -store
#attempt:1341
#current_net:n145
#current_comb_set:n145 n141,1 n144,1 n152,1 n158,0 n145,0 
run_justification -full_sequential -set { 114 1 130 1 104 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n154 0 n156 1 n160 1 n145 0 } -verbose -store
#attempt:1342
#current_net:n145
#current_comb_set:n145 n144,1 n154,0 n156,1 n160,1 n145,0 
run_justification -full_sequential -set { 130 1 67 0 72 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n150 0 n152 1 n160 1 n145 0 } -verbose -store
#attempt:1343
#current_net:n145
#current_comb_set:n145 n143,0 n150,0 n152,1 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 103 0 104 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n160 1 n145 0 } -verbose -store
#attempt:1344
#current_net:n145
#current_comb_set:n145 n148,1 n150,0 n152,1 n160,1 n145,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n148 1 n154 0 n158 0 n145 0 } -verbose -store
#attempt:1345
#current_net:n145
#current_comb_set:n145 n143,0 n148,1 n154,0 n158,0 n145,0 
run_justification -full_sequential -set { 121 0 91 1 67 0 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n156 1 n145 0 } -verbose -store
#attempt:1346
#current_net:n145
#current_comb_set:n145 n148,1 n150,0 n152,1 n156,1 n145,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n152 1 n158 0 n145 0 } -verbose -store
#attempt:1347
#current_net:n145
#current_comb_set:n145 n141,1 n143,0 n152,1 n158,0 n145,0 
run_justification -full_sequential -set { 114 1 121 0 104 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n156 1 n160 1 n145 0 } -verbose -store
#attempt:1348
#current_net:n145
#current_comb_set:n145 n141,1 n143,0 n156,1 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 121 0 72 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n158 0 n145 0 } -verbose -store
#attempt:1349
#current_net:n145
#current_comb_set:n145 n141,1 n148,1 n152,1 n158,0 n145,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n144 1 n148 1 n145 0 } -verbose -store
#attempt:1350
#current_net:n145
#current_comb_set:n145 n141,1 n143,0 n144,1 n148,1 n145,0 
run_justification -full_sequential -set { 114 1 121 0 130 1 91 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 n160 1 n145 0 } -verbose -store
#attempt:1351
#current_net:n145
#current_comb_set:n145 n148,1 n154,0 n156,1 n160,1 n145,0 
run_justification -full_sequential -set { 91 1 67 0 72 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n144 1 n150 0 n145 0 } -verbose -store
#attempt:1352
#current_net:n145
#current_comb_set:n145 n141,1 n143,0 n144,1 n150,0 n145,0 
run_justification -full_sequential -set { 114 1 121 0 130 1 103 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n152 1 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1353
#current_net:n145
#current_comb_set:n145 n143,0 n152,1 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 104 1 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n156 1 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1354
#current_net:n145
#current_comb_set:n145 n141,1 n156,1 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 72 1 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n150 0 n152 1 n156 1 n145 0 } -verbose -store
#attempt:1355
#current_net:n145
#current_comb_set:n145 n144,1 n150,0 n152,1 n156,1 n145,0 
run_justification -full_sequential -set { 130 1 103 0 104 1 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n152 1 n154 0 n145 0 } -verbose -store
#attempt:1356
#current_net:n145
#current_comb_set:n145 n148,1 n150,0 n152,1 n154,0 n145,0 
run_justification -full_sequential -set { 91 1 103 0 104 1 67 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n156 1 n158 0 n145 0 } -verbose -store
#attempt:1357
#current_net:n145
#current_comb_set:n145 n148,1 n152,1 n156,1 n158,0 n145,0 
run_justification -full_sequential -set { 91 1 104 1 72 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n150 0 n154 0 n158 0 n145 0 } -verbose -store
#attempt:1358
#current_net:n145
#current_comb_set:n145 n143,0 n150,0 n154,0 n158,0 n145,0 
run_justification -full_sequential -set { 121 0 103 0 67 0 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1359
#current_net:n145
#current_comb_set:n145 n148,1 n154,0 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 91 1 67 0 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n150 0 n154 0 n160 1 n145 0 } -verbose -store
#attempt:1360
#current_net:n145
#current_comb_set:n145 n143,0 n150,0 n154,0 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 103 0 67 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n154 0 n160 1 n145 0 } -verbose -store
#attempt:1361
#current_net:n145
#current_comb_set:n145 n141,1 n152,1 n154,0 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 104 1 67 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n156 1 n160 1 n145 0 } -verbose -store
#attempt:1362
#current_net:n145
#current_comb_set:n145 n141,1 n152,1 n156,1 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 104 1 72 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 n160 1 n145 0 } -verbose -store
#attempt:1363
#current_net:n145
#current_comb_set:n145 n148,1 n154,0 n156,1 n160,1 n145,0 
run_justification -full_sequential -set { 91 1 67 0 72 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n160 1 n145 0 } -verbose -store
#attempt:1364
#current_net:n145
#current_comb_set:n145 n141,1 n150,0 n152,1 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 103 0 104 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n150 0 n152 1 n156 1 n145 0 } -verbose -store
#attempt:1365
#current_net:n145
#current_comb_set:n145 n143,0 n150,0 n152,1 n156,1 n145,0 
run_justification -full_sequential -set { 121 0 103 0 104 1 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n148 1 n150 0 n160 1 n145 0 } -verbose -store
#attempt:1366
#current_net:n145
#current_comb_set:n145 n143,0 n148,1 n150,0 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 91 1 103 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n156 1 n158 0 n145 0 } -verbose -store
#attempt:1367
#current_net:n145
#current_comb_set:n145 n148,1 n150,0 n156,1 n158,0 n145,0 
run_justification -full_sequential -set { 91 1 103 0 72 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n154 0 n160 1 n145 0 } -verbose -store
#attempt:1368
#current_net:n145
#current_comb_set:n145 n141,1 n152,1 n154,0 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 104 1 67 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n148 1 n160 1 n145 0 } -verbose -store
#attempt:1369
#current_net:n145
#current_comb_set:n145 n141,1 n144,1 n148,1 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 130 1 91 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n148 1 n152 1 n154 0 n145 0 } -verbose -store
#attempt:1370
#current_net:n145
#current_comb_set:n145 n144,1 n148,1 n152,1 n154,0 n145,0 
run_justification -full_sequential -set { 130 1 91 1 104 1 67 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n154 0 n145 0 } -verbose -store
#attempt:1371
#current_net:n145
#current_comb_set:n145 n141,1 n150,0 n152,1 n154,0 n145,0 
run_justification -full_sequential -set { 114 1 103 0 104 1 67 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n156 1 n145 0 } -verbose -store
#attempt:1372
#current_net:n145
#current_comb_set:n145 n148,1 n150,0 n156,1 n145,0 
run_justification -full_sequential -set { 91 1 103 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n156 1 n158 0 n145 0 } -verbose -store
#attempt:1373
#current_net:n145
#current_comb_set:n145 n150,0 n156,1 n158,0 n145,0 
run_justification -full_sequential -set { 103 0 72 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n150 0 n145 0 } -verbose -store
#attempt:1374
#current_net:n145
#current_comb_set:n145 n141,1 n148,1 n150,0 n145,0 
run_justification -full_sequential -set { 114 1 91 1 103 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n156 1 n145 0 } -verbose -store
#attempt:1375
#current_net:n145
#current_comb_set:n145 n148,1 n150,0 n156,1 n145,0 
run_justification -full_sequential -set { 91 1 103 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n160 1 n145 0 } -verbose -store
#attempt:1376
#current_net:n145
#current_comb_set:n145 n141,1 n144,1 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 130 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n160 1 n145 0 } -verbose -store
#attempt:1377
#current_net:n145
#current_comb_set:n145 n148,1 n152,1 n160,1 n145,0 
run_justification -full_sequential -set { 91 1 104 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n158 0 n145 0 } -verbose -store
#attempt:1378
#current_net:n145
#current_comb_set:n145 n148,1 n152,1 n158,0 n145,0 
run_justification -full_sequential -set { 91 1 104 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1379
#current_net:n145
#current_comb_set:n145 n152,1 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 104 1 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n156 1 n145 0 } -verbose -store
#attempt:1380
#current_net:n145
#current_comb_set:n145 n148,1 n150,0 n156,1 n145,0 
run_justification -full_sequential -set { 91 1 103 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n156 1 n160 1 n145 0 } -verbose -store
#attempt:1381
#current_net:n145
#current_comb_set:n145 n143,0 n156,1 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 72 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n156 1 n145 0 } -verbose -store
#attempt:1382
#current_net:n145
#current_comb_set:n145 n141,1 n152,1 n156,1 n145,0 
run_justification -full_sequential -set { 114 1 104 1 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1383
#current_net:n145
#current_comb_set:n145 n143,0 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n154 0 n156 1 n145 0 } -verbose -store
#attempt:1384
#current_net:n145
#current_comb_set:n145 n152,1 n154,0 n156,1 n145,0 
run_justification -full_sequential -set { 104 1 67 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n154 0 n158 0 n145 0 } -verbose -store
#attempt:1385
#current_net:n145
#current_comb_set:n145 n143,0 n154,0 n158,0 n145,0 
run_justification -full_sequential -set { 121 0 67 0 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 n145 0 } -verbose -store
#attempt:1386
#current_net:n145
#current_comb_set:n145 n148,1 n154,0 n156,1 n145,0 
run_justification -full_sequential -set { 91 1 67 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n148 1 n145 0 } -verbose -store
#attempt:1387
#current_net:n145
#current_comb_set:n145 n141,1 n143,0 n148,1 n145,0 
run_justification -full_sequential -set { 114 1 121 0 91 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n156 1 n158 0 n145 0 } -verbose -store
#attempt:1388
#current_net:n145
#current_comb_set:n145 n144,1 n156,1 n158,0 n145,0 
run_justification -full_sequential -set { 130 1 72 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n154 0 n160 1 n145 0 } -verbose -store
#attempt:1389
#current_net:n145
#current_comb_set:n145 n141,1 n154,0 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 67 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n152 1 n145 0 } -verbose -store
#attempt:1390
#current_net:n145
#current_comb_set:n145 n141,1 n150,0 n152,1 n145,0 
run_justification -full_sequential -set { 114 1 103 0 104 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n152 1 n158 0 n145 0 } -verbose -store
#attempt:1391
#current_net:n145
#current_comb_set:n145 n144,1 n152,1 n158,0 n145,0 
run_justification -full_sequential -set { 130 1 104 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n154 0 n156 1 n145 0 } -verbose -store
#attempt:1392
#current_net:n145
#current_comb_set:n145 n144,1 n154,0 n156,1 n145,0 
run_justification -full_sequential -set { 130 1 67 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n156 1 n158 0 n145 0 } -verbose -store
#attempt:1393
#current_net:n145
#current_comb_set:n145 n152,1 n156,1 n158,0 n145,0 
run_justification -full_sequential -set { 104 1 72 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n148 1 n160 1 n145 0 } -verbose -store
#attempt:1394
#current_net:n145
#current_comb_set:n145 n143,0 n148,1 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 91 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n150 0 n145 0 } -verbose -store
#attempt:1395
#current_net:n145
#current_comb_set:n145 n141,1 n144,1 n150,0 n145,0 
run_justification -full_sequential -set { 114 1 130 1 103 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1396
#current_net:n145
#current_comb_set:n145 n148,1 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 91 1 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n158 0 n145 0 } -verbose -store
#attempt:1397
#current_net:n145
#current_comb_set:n145 n143,0 n144,1 n158,0 n145,0 
run_justification -full_sequential -set { 121 0 130 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n158 0 n145 0 } -verbose -store
#attempt:1398
#current_net:n145
#current_comb_set:n145 n148,1 n154,0 n158,0 n145,0 
run_justification -full_sequential -set { 91 1 67 0 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n154 0 n156 1 n160 1 n145 0 } -verbose -store
#attempt:1399
#current_net:n145
#current_comb_set:n145 n154,0 n156,1 n160,1 n145,0 
run_justification -full_sequential -set { 67 0 72 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n154 0 n160 1 n145 0 } -verbose -store
#attempt:1400
#current_net:n145
#current_comb_set:n145 n141,1 n154,0 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 67 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n154 0 n145 0 } -verbose -store
#attempt:1401
#current_net:n145
#current_comb_set:n145 n150,0 n152,1 n154,0 n145,0 
run_justification -full_sequential -set { 103 0 104 1 67 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n156 1 n160 1 n145 0 } -verbose -store
#attempt:1402
#current_net:n145
#current_comb_set:n145 n152,1 n156,1 n160,1 n145,0 
run_justification -full_sequential -set { 104 1 72 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n152 1 n154 0 n145 0 } -verbose -store
#attempt:1403
#current_net:n145
#current_comb_set:n145 n143,0 n152,1 n154,0 n145,0 
run_justification -full_sequential -set { 121 0 104 1 67 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n145 0 } -verbose -store
#attempt:1404
#current_net:n145
#current_comb_set:n145 n141,1 n148,1 n152,1 n145,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n158 0 n145 0 } -verbose -store
#attempt:1405
#current_net:n145
#current_comb_set:n145 n148,1 n154,0 n158,0 n145,0 
run_justification -full_sequential -set { 91 1 67 0 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n158 0 n145 0 } -verbose -store
#attempt:1406
#current_net:n145
#current_comb_set:n145 n141,1 n152,1 n158,0 n145,0 
run_justification -full_sequential -set { 114 1 104 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n156 1 n145 0 } -verbose -store
#attempt:1407
#current_net:n145
#current_comb_set:n145 n143,0 n144,1 n156,1 n145,0 
run_justification -full_sequential -set { 121 0 130 1 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n160 1 n145 0 } -verbose -store
#attempt:1408
#current_net:n145
#current_comb_set:n145 n141,1 n143,0 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 121 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n148 1 n152 1 n145 0 } -verbose -store
#attempt:1409
#current_net:n145
#current_comb_set:n145 n143,0 n148,1 n152,1 n145,0 
run_justification -full_sequential -set { 121 0 91 1 104 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n156 1 n158 0 n145 0 } -verbose -store
#attempt:1410
#current_net:n145
#current_comb_set:n145 n143,0 n156,1 n158,0 n145,0 
run_justification -full_sequential -set { 121 0 72 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n156 1 n145 0 } -verbose -store
#attempt:1411
#current_net:n145
#current_comb_set:n145 n141,1 n148,1 n156,1 n145,0 
run_justification -full_sequential -set { 114 1 91 1 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n154 0 n158 0 n145 0 } -verbose -store
#attempt:1412
#current_net:n145
#current_comb_set:n145 n152,1 n154,0 n158,0 n145,0 
run_justification -full_sequential -set { 104 1 67 0 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n158 0 n145 0 } -verbose -store
#attempt:1413
#current_net:n145
#current_comb_set:n145 n150,0 n152,1 n158,0 n145,0 
run_justification -full_sequential -set { 103 0 104 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n158 0 n145 0 } -verbose -store
#attempt:1414
#current_net:n145
#current_comb_set:n145 n148,1 n154,0 n158,0 n145,0 
run_justification -full_sequential -set { 91 1 67 0 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n158 0 n145 0 } -verbose -store
#attempt:1415
#current_net:n145
#current_comb_set:n145 n141,1 n148,1 n158,0 n145,0 
run_justification -full_sequential -set { 114 1 91 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1416
#current_net:n145
#current_comb_set:n145 n141,1 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n152 1 n145 0 } -verbose -store
#attempt:1417
#current_net:n145
#current_comb_set:n145 n141,1 n144,1 n152,1 n145,0 
run_justification -full_sequential -set { 114 1 130 1 104 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n152 1 n154 0 n145 0 } -verbose -store
#attempt:1418
#current_net:n145
#current_comb_set:n145 n150,0 n152,1 n154,0 n145,0 
run_justification -full_sequential -set { 103 0 104 1 67 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n156 1 n145 0 } -verbose -store
#attempt:1419
#current_net:n145
#current_comb_set:n145 n143,0 n144,1 n156,1 n145,0 
run_justification -full_sequential -set { 121 0 130 1 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n148 1 n152 1 n145 0 } -verbose -store
#attempt:1420
#current_net:n145
#current_comb_set:n145 n143,0 n148,1 n152,1 n145,0 
run_justification -full_sequential -set { 121 0 91 1 104 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n152 1 n160 1 n145 0 } -verbose -store
#attempt:1421
#current_net:n145
#current_comb_set:n145 n144,1 n152,1 n160,1 n145,0 
run_justification -full_sequential -set { 130 1 104 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n160 1 n145 0 } -verbose -store
#attempt:1422
#current_net:n145
#current_comb_set:n145 n141,1 n150,0 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 103 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n154 0 n160 1 n145 0 } -verbose -store
#attempt:1423
#current_net:n145
#current_comb_set:n145 n141,1 n154,0 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 67 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n148 1 n156 1 n145 0 } -verbose -store
#attempt:1424
#current_net:n145
#current_comb_set:n145 n144,1 n148,1 n156,1 n145,0 
run_justification -full_sequential -set { 130 1 91 1 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n150 0 n156 1 n145 0 } -verbose -store
#attempt:1425
#current_net:n145
#current_comb_set:n145 n144,1 n150,0 n156,1 n145,0 
run_justification -full_sequential -set { 130 1 103 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n148 1 n158 0 n145 0 } -verbose -store
#attempt:1426
#current_net:n145
#current_comb_set:n145 n144,1 n148,1 n158,0 n145,0 
run_justification -full_sequential -set { 130 1 91 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n154 0 n160 1 n145 0 } -verbose -store
#attempt:1427
#current_net:n145
#current_comb_set:n145 n141,1 n154,0 n160,1 n145,0 
run_justification -full_sequential -set { 114 1 67 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n154 0 n145 0 } -verbose -store
#attempt:1428
#current_net:n145
#current_comb_set:n145 n141,1 n150,0 n154,0 n145,0 
run_justification -full_sequential -set { 114 1 103 0 67 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n150 0 n152 1 n145 0 } -verbose -store
#attempt:1429
#current_net:n145
#current_comb_set:n145 n144,1 n150,0 n152,1 n145,0 
run_justification -full_sequential -set { 130 1 103 0 104 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n156 1 n145 0 } -verbose -store
#attempt:1430
#current_net:n145
#current_comb_set:n145 n148,1 n154,0 n156,1 n145,0 
run_justification -full_sequential -set { 91 1 67 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n150 0 n156 1 n145 0 } -verbose -store
#attempt:1431
#current_net:n145
#current_comb_set:n145 n144,1 n150,0 n156,1 n145,0 
run_justification -full_sequential -set { 130 1 103 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n154 0 n145 0 } -verbose -store
#attempt:1432
#current_net:n145
#current_comb_set:n145 n148,1 n150,0 n154,0 n145,0 
run_justification -full_sequential -set { 91 1 103 0 67 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n154 0 n160 1 n145 0 } -verbose -store
#attempt:1433
#current_net:n145
#current_comb_set:n145 n144,1 n154,0 n160,1 n145,0 
run_justification -full_sequential -set { 130 1 67 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n158 0 n160 1 n145 0 } -verbose -store
#attempt:1434
#current_net:n145
#current_comb_set:n145 n143,0 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 121 0 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n150 0 n156 1 n145 0 } -verbose -store
#attempt:1435
#current_net:n145
#current_comb_set:n145 n144,1 n150,0 n156,1 n145,0 
run_justification -full_sequential -set { 130 1 103 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n148 1 n145 0 } -verbose -store
#attempt:1436
#current_net:n145
#current_comb_set:n145 n141,1 n143,0 n148,1 n145,0 
run_justification -full_sequential -set { 114 1 121 0 91 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n152 1 n145 0 } -verbose -store
#attempt:1437
#current_net:n145
#current_comb_set:n145 n141,1 n148,1 n152,1 n145,0 
run_justification -full_sequential -set { 114 1 91 1 104 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n156 1 n158 0 n145 0 } -verbose -store
#attempt:1438
#current_net:n145
#current_comb_set:n145 n152,1 n156,1 n158,0 n145,0 
run_justification -full_sequential -set { 104 1 72 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n152 1 n160 1 n145 0 } -verbose -store
#attempt:1439
#current_net:n145
#current_comb_set:n145 n144,1 n152,1 n160,1 n145,0 
run_justification -full_sequential -set { 130 1 104 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n152 1 n145 0 } -verbose -store
#attempt:1440
#current_net:n145
#current_comb_set:n145 n144,1 n152,1 n145,0 
run_justification -full_sequential -set { 130 1 104 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n158 0 n145 0 } -verbose -store
#attempt:1441
#current_net:n145
#current_comb_set:n145 n152,1 n158,0 n145,0 
run_justification -full_sequential -set { 104 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n145 0 } -verbose -store
#attempt:1442
#current_net:n145
#current_comb_set:n145 n148,1 n150,0 n145,0 
run_justification -full_sequential -set { 91 1 103 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n154 0 n145 0 } -verbose -store
#attempt:1443
#current_net:n145
#current_comb_set:n145 n143,0 n154,0 n145,0 
run_justification -full_sequential -set { 121 0 67 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n148 1 n145 0 } -verbose -store
#attempt:1444
#current_net:n145
#current_comb_set:n145 n144,1 n148,1 n145,0 
run_justification -full_sequential -set { 130 1 91 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n154 0 n145 0 } -verbose -store
#attempt:1445
#current_net:n145
#current_comb_set:n145 n141,1 n154,0 n145,0 
run_justification -full_sequential -set { 114 1 67 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n156 1 n145 0 } -verbose -store
#attempt:1446
#current_net:n145
#current_comb_set:n145 n143,0 n156,1 n145,0 
run_justification -full_sequential -set { 121 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n150 0 n145 0 } -verbose -store
#attempt:1447
#current_net:n145
#current_comb_set:n145 n144,1 n150,0 n145,0 
run_justification -full_sequential -set { 130 1 103 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n158 0 n145 0 } -verbose -store
#attempt:1448
#current_net:n145
#current_comb_set:n145 n148,1 n158,0 n145,0 
run_justification -full_sequential -set { 91 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n154 0 n156 1 n145 0 } -verbose -store
#attempt:1449
#current_net:n145
#current_comb_set:n145 n154,0 n156,1 n145,0 
run_justification -full_sequential -set { 67 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n154 0 n145 0 } -verbose -store
#attempt:1450
#current_net:n145
#current_comb_set:n145 n152,1 n154,0 n145,0 
run_justification -full_sequential -set { 104 1 67 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n154 0 n145 0 } -verbose -store
#attempt:1451
#current_net:n145
#current_comb_set:n145 n141,1 n154,0 n145,0 
run_justification -full_sequential -set { 114 1 67 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n150 0 n145 0 } -verbose -store
#attempt:1452
#current_net:n145
#current_comb_set:n145 n143,0 n150,0 n145,0 
run_justification -full_sequential -set { 121 0 103 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n150 0 n145 0 } -verbose -store
#attempt:1453
#current_net:n145
#current_comb_set:n145 n141,1 n150,0 n145,0 
run_justification -full_sequential -set { 114 1 103 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n145 0 } -verbose -store
#attempt:1454
#current_net:n145
#current_comb_set:n145 n141,1 n148,1 n145,0 
run_justification -full_sequential -set { 114 1 91 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n156 1 n145 0 } -verbose -store
#attempt:1455
#current_net:n145
#current_comb_set:n145 n152,1 n156,1 n145,0 
run_justification -full_sequential -set { 104 1 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n158 0 n145 0 } -verbose -store
#attempt:1456
#current_net:n145
#current_comb_set:n145 n144,1 n158,0 n145,0 
run_justification -full_sequential -set { 130 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n152 1 n145 0 } -verbose -store
#attempt:1457
#current_net:n145
#current_comb_set:n145 n143,0 n152,1 n145,0 
run_justification -full_sequential -set { 121 0 104 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n158 0 n145 0 } -verbose -store
#attempt:1458
#current_net:n145
#current_comb_set:n145 n144,1 n158,0 n145,0 
run_justification -full_sequential -set { 130 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n148 1 n145 0 } -verbose -store
#attempt:1459
#current_net:n145
#current_comb_set:n145 n141,1 n148,1 n145,0 
run_justification -full_sequential -set { 114 1 91 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n158 0 n145 0 } -verbose -store
#attempt:1460
#current_net:n145
#current_comb_set:n145 n148,1 n158,0 n145,0 
run_justification -full_sequential -set { 91 1 76 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n150 0 n145 0 } -verbose -store
#attempt:1461
#current_net:n145
#current_comb_set:n145 n148,1 n150,0 n145,0 
run_justification -full_sequential -set { 91 1 103 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n148 1 n145 0 } -verbose -store
#attempt:1462
#current_net:n145
#current_comb_set:n145 n144,1 n148,1 n145,0 
run_justification -full_sequential -set { 130 1 91 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n152 1 n145 0 } -verbose -store
#attempt:1463
#current_net:n145
#current_comb_set:n145 n141,1 n152,1 n145,0 
run_justification -full_sequential -set { 114 1 104 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n156 1 n145 0 } -verbose -store
#attempt:1464
#current_net:n145
#current_comb_set:n145 n143,0 n156,1 n145,0 
run_justification -full_sequential -set { 121 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n156 1 n145 0 } -verbose -store
#attempt:1465
#current_net:n145
#current_comb_set:n145 n150,0 n156,1 n145,0 
run_justification -full_sequential -set { 103 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n154 0 n145 0 } -verbose -store
#attempt:1466
#current_net:n145
#current_comb_set:n145 n143,0 n154,0 n145,0 
run_justification -full_sequential -set { 121 0 67 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n156 1 n145 0 } -verbose -store
#attempt:1467
#current_net:n145
#current_comb_set:n145 n150,0 n156,1 n145,0 
run_justification -full_sequential -set { 103 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 n145 0 } -verbose -store
#attempt:1468
#current_net:n145
#current_comb_set:n145 n141,1 n144,1 n145,0 
run_justification -full_sequential -set { 114 1 130 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n158 0 n160 1 n145 0 } -verbose -store
#attempt:1469
#current_net:n145
#current_comb_set:n145 n158,0 n160,1 n145,0 
run_justification -full_sequential -set { 76 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n152 1 n145 0 } -verbose -store
#attempt:1470
#current_net:n145
#current_comb_set:n145 n143,0 n152,1 n145,0 
run_justification -full_sequential -set { 121 0 104 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n148 1 n145 0 } -verbose -store
#attempt:1471
#current_net:n145
#current_comb_set:n145 n144,1 n148,1 n145,0 
run_justification -full_sequential -set { 130 1 91 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n156 1 n145 0 } -verbose -store
#attempt:1472
#current_net:n145
#current_comb_set:n145 n143,0 n156,1 n145,0 
run_justification -full_sequential -set { 121 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n160 1 n145 0 } -verbose -store
#attempt:1473
#current_net:n145
#current_comb_set:n145 n150,0 n160,1 n145,0 
run_justification -full_sequential -set { 103 0 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n160 1 n145 0 } -verbose -store
#attempt:1474
#current_net:n145
#current_comb_set:n145 n152,1 n160,1 n145,0 
run_justification -full_sequential -set { 104 1 81 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n150 0 n145 0 } -verbose -store
#attempt:1475
#current_net:n145
#current_comb_set:n145 n143,0 n150,0 n145,0 
run_justification -full_sequential -set { 121 0 103 0 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n156 1 n145 0 } -verbose -store
#attempt:1476
#current_net:n145
#current_comb_set:n145 n143,0 n156,1 n145,0 
run_justification -full_sequential -set { 121 0 72 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n145 0 } -verbose -store
#attempt:1477
#current_net:n145
#current_comb_set:n145 n143,0 n144,1 n145,0 
run_justification -full_sequential -set { 121 0 130 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n152 1 n145 0 } -verbose -store
#attempt:1478
#current_net:n145
#current_comb_set:n145 n144,1 n152,1 n145,0 
run_justification -full_sequential -set { 130 1 104 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n152 1 n145 0 } -verbose -store
#attempt:1479
#current_net:n145
#current_comb_set:n145 n148,1 n152,1 n145,0 
run_justification -full_sequential -set { 91 1 104 1 131 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n160 1 n158 0 n156 1 n154 0 n149 0 } -verbose -store
#attempt:1480
#current_net:n149
#current_comb_set:n149 n148,1 n160,1 n158,0 n156,1 n154,0 n149,0 
run_justification -full_sequential -set { 91 1 81 1 76 0 72 1 67 0 106 0 } -verbose -store
#run_justification -full_sequential -set { n160 1 n158 0 n156 1 n154 0 n149 0 } -verbose -store
#attempt:1481
#current_net:n149
#current_comb_set:n149 n160,1 n158,0 n156,1 n154,0 n149,0 
run_justification -full_sequential -set { 81 1 76 0 72 1 67 0 106 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n158 0 n156 1 n154 0 n149 0 } -verbose -store
#attempt:1482
#current_net:n149
#current_comb_set:n149 n148,1 n158,0 n156,1 n154,0 n149,0 
run_justification -full_sequential -set { 91 1 76 0 72 1 67 0 106 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n160 1 n156 1 n154 0 n149 0 } -verbose -store
#attempt:1483
#current_net:n149
#current_comb_set:n149 n148,1 n160,1 n156,1 n154,0 n149,0 
run_justification -full_sequential -set { 91 1 81 1 72 1 67 0 106 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n160 1 n158 0 n154 0 n149 0 } -verbose -store
#attempt:1484
#current_net:n149
#current_comb_set:n149 n148,1 n160,1 n158,0 n154,0 n149,0 
run_justification -full_sequential -set { 91 1 81 1 76 0 67 0 106 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n160 1 n158 0 n156 1 n149 0 } -verbose -store
#attempt:1485
#current_net:n149
#current_comb_set:n149 n148,1 n160,1 n158,0 n156,1 n149,0 
run_justification -full_sequential -set { 91 1 81 1 76 0 72 1 106 0 } -verbose -store
#run_justification -full_sequential -set { n158 0 n156 1 n154 0 n149 0 } -verbose -store
#attempt:1486
#current_net:n149
#current_comb_set:n149 n158,0 n156,1 n154,0 n149,0 
run_justification -full_sequential -set { 76 0 72 1 67 0 106 0 } -verbose -store
#run_justification -full_sequential -set { n160 1 n156 1 n154 0 n149 0 } -verbose -store
#attempt:1487
#current_net:n149
#current_comb_set:n149 n160,1 n156,1 n154,0 n149,0 
run_justification -full_sequential -set { 81 1 72 1 67 0 106 0 } -verbose -store
#run_justification -full_sequential -set { n160 1 n158 0 n154 0 n149 0 } -verbose -store
#attempt:1488
#current_net:n149
#current_comb_set:n149 n160,1 n158,0 n154,0 n149,0 
run_justification -full_sequential -set { 81 1 76 0 67 0 106 0 } -verbose -store
#run_justification -full_sequential -set { n160 1 n158 0 n156 1 n149 0 } -verbose -store
#attempt:1489
#current_net:n149
#current_comb_set:n149 n160,1 n158,0 n156,1 n149,0 
run_justification -full_sequential -set { 81 1 76 0 72 1 106 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n156 1 n154 0 n149 0 } -verbose -store
#attempt:1490
#current_net:n149
#current_comb_set:n149 n148,1 n156,1 n154,0 n149,0 
run_justification -full_sequential -set { 91 1 72 1 67 0 106 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n158 0 n154 0 n149 0 } -verbose -store
#attempt:1491
#current_net:n149
#current_comb_set:n149 n148,1 n158,0 n154,0 n149,0 
run_justification -full_sequential -set { 91 1 76 0 67 0 106 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n158 0 n156 1 n149 0 } -verbose -store
#attempt:1492
#current_net:n149
#current_comb_set:n149 n148,1 n158,0 n156,1 n149,0 
run_justification -full_sequential -set { 91 1 76 0 72 1 106 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n160 1 n154 0 n149 0 } -verbose -store
#attempt:1493
#current_net:n149
#current_comb_set:n149 n148,1 n160,1 n154,0 n149,0 
run_justification -full_sequential -set { 91 1 81 1 67 0 106 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n160 1 n156 1 n149 0 } -verbose -store
#attempt:1494
#current_net:n149
#current_comb_set:n149 n148,1 n160,1 n156,1 n149,0 
run_justification -full_sequential -set { 91 1 81 1 72 1 106 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n160 1 n158 0 n149 0 } -verbose -store
#attempt:1495
#current_net:n149
#current_comb_set:n149 n148,1 n160,1 n158,0 n149,0 
run_justification -full_sequential -set { 91 1 81 1 76 0 106 0 } -verbose -store
#run_justification -full_sequential -set { n156 1 n154 0 n149 0 } -verbose -store
#attempt:1496
#current_net:n149
#current_comb_set:n149 n156,1 n154,0 n149,0 
run_justification -full_sequential -set { 72 1 67 0 106 0 } -verbose -store
#run_justification -full_sequential -set { n158 0 n154 0 n149 0 } -verbose -store
#attempt:1497
#current_net:n149
#current_comb_set:n149 n158,0 n154,0 n149,0 
run_justification -full_sequential -set { 76 0 67 0 106 0 } -verbose -store
#run_justification -full_sequential -set { n158 0 n156 1 n149 0 } -verbose -store
#attempt:1498
#current_net:n149
#current_comb_set:n149 n158,0 n156,1 n149,0 
run_justification -full_sequential -set { 76 0 72 1 106 0 } -verbose -store
#run_justification -full_sequential -set { n160 1 n154 0 n149 0 } -verbose -store
#attempt:1499
#current_net:n149
#current_comb_set:n149 n160,1 n154,0 n149,0 
run_justification -full_sequential -set { 81 1 67 0 106 0 } -verbose -store
#run_justification -full_sequential -set { n160 1 n156 1 n149 0 } -verbose -store
#attempt:1500
#current_net:n149
#current_comb_set:n149 n160,1 n156,1 n149,0 
run_justification -full_sequential -set { 81 1 72 1 106 0 } -verbose -store
#run_justification -full_sequential -set { n160 1 n158 0 n149 0 } -verbose -store
#attempt:1501
#current_net:n149
#current_comb_set:n149 n160,1 n158,0 n149,0 
run_justification -full_sequential -set { 81 1 76 0 106 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n154 0 n149 0 } -verbose -store
#attempt:1502
#current_net:n149
#current_comb_set:n149 n148,1 n154,0 n149,0 
run_justification -full_sequential -set { 91 1 67 0 106 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n156 1 n149 0 } -verbose -store
#attempt:1503
#current_net:n149
#current_comb_set:n149 n148,1 n156,1 n149,0 
run_justification -full_sequential -set { 91 1 72 1 106 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n158 0 n149 0 } -verbose -store
#attempt:1504
#current_net:n149
#current_comb_set:n149 n148,1 n158,0 n149,0 
run_justification -full_sequential -set { 91 1 76 0 106 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n160 1 n149 0 } -verbose -store
#attempt:1505
#current_net:n149
#current_comb_set:n149 n148,1 n160,1 n149,0 
run_justification -full_sequential -set { 91 1 81 1 106 0 } -verbose -store
#run_justification -full_sequential -set { n154 0 n149 0 } -verbose -store
#attempt:1506
#current_net:n149
#current_comb_set:n149 n154,0 n149,0 
run_justification -full_sequential -set { 67 0 106 0 } -verbose -store
#run_justification -full_sequential -set { n156 1 n149 0 } -verbose -store
#attempt:1507
#current_net:n149
#current_comb_set:n149 n156,1 n149,0 
run_justification -full_sequential -set { 72 1 106 0 } -verbose -store
#run_justification -full_sequential -set { n158 0 n149 0 } -verbose -store
#attempt:1508
#current_net:n149
#current_comb_set:n149 n158,0 n149,0 
run_justification -full_sequential -set { 76 0 106 0 } -verbose -store
#run_justification -full_sequential -set { n160 1 n149 0 } -verbose -store
#attempt:1509
#current_net:n149
#current_comb_set:n149 n160,1 n149,0 
run_justification -full_sequential -set { 81 1 106 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n149 0 } -verbose -store
#attempt:1510
#current_net:n149
#current_comb_set:n149 n148,1 n149,0 
run_justification -full_sequential -set { 91 1 106 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n150 0 n148 1 n160 1 n153 0 } -verbose -store
#attempt:1511
#current_net:n153
#current_comb_set:n153 n152,1 n150,0 n148,1 n160,1 n153,0 
run_justification -full_sequential -set { 104 1 103 0 91 1 81 1 116 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n148 1 n160 1 n153 0 } -verbose -store
#attempt:1512
#current_net:n153
#current_comb_set:n153 n150,0 n148,1 n160,1 n153,0 
run_justification -full_sequential -set { 103 0 91 1 81 1 116 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n148 1 n160 1 n153 0 } -verbose -store
#attempt:1513
#current_net:n153
#current_comb_set:n153 n152,1 n148,1 n160,1 n153,0 
run_justification -full_sequential -set { 104 1 91 1 81 1 116 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n150 0 n160 1 n153 0 } -verbose -store
#attempt:1514
#current_net:n153
#current_comb_set:n153 n152,1 n150,0 n160,1 n153,0 
run_justification -full_sequential -set { 104 1 103 0 81 1 116 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n150 0 n148 1 n153 0 } -verbose -store
#attempt:1515
#current_net:n153
#current_comb_set:n153 n152,1 n150,0 n148,1 n153,0 
run_justification -full_sequential -set { 104 1 103 0 91 1 116 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n160 1 n153 0 } -verbose -store
#attempt:1516
#current_net:n153
#current_comb_set:n153 n148,1 n160,1 n153,0 
run_justification -full_sequential -set { 91 1 81 1 116 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n160 1 n153 0 } -verbose -store
#attempt:1517
#current_net:n153
#current_comb_set:n153 n150,0 n160,1 n153,0 
run_justification -full_sequential -set { 103 0 81 1 116 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n148 1 n153 0 } -verbose -store
#attempt:1518
#current_net:n153
#current_comb_set:n153 n150,0 n148,1 n153,0 
run_justification -full_sequential -set { 103 0 91 1 116 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n160 1 n153 0 } -verbose -store
#attempt:1519
#current_net:n153
#current_comb_set:n153 n152,1 n160,1 n153,0 
run_justification -full_sequential -set { 104 1 81 1 116 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n148 1 n153 0 } -verbose -store
#attempt:1520
#current_net:n153
#current_comb_set:n153 n152,1 n148,1 n153,0 
run_justification -full_sequential -set { 104 1 91 1 116 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n150 0 n153 0 } -verbose -store
#attempt:1521
#current_net:n153
#current_comb_set:n153 n152,1 n150,0 n153,0 
run_justification -full_sequential -set { 104 1 103 0 116 0 } -verbose -store
#run_justification -full_sequential -set { n160 1 n153 0 } -verbose -store
#attempt:1522
#current_net:n153
#current_comb_set:n153 n160,1 n153,0 
run_justification -full_sequential -set { 81 1 116 0 } -verbose -store
#run_justification -full_sequential -set { n148 1 n153 0 } -verbose -store
#attempt:1523
#current_net:n153
#current_comb_set:n153 n148,1 n153,0 
run_justification -full_sequential -set { 91 1 116 0 } -verbose -store
#run_justification -full_sequential -set { n150 0 n153 0 } -verbose -store
#attempt:1524
#current_net:n153
#current_comb_set:n153 n150,0 n153,0 
run_justification -full_sequential -set { 103 0 116 0 } -verbose -store
#run_justification -full_sequential -set { n152 1 n153 0 } -verbose -store
#attempt:1525
#current_net:n153
#current_comb_set:n153 n152,1 n153,0 
run_justification -full_sequential -set { 104 1 116 0 } -verbose -store
#run_justification -full_sequential -set { n160 1 n158 0 n156 1 n154 0 n161 0 } -verbose -store
#attempt:1526
#current_net:n161
#current_comb_set:n161 n160,1 n158,0 n156,1 n154,0 n161,0 
run_justification -full_sequential -set { 81 1 76 0 72 1 67 0 93 0 } -verbose -store
#run_justification -full_sequential -set { n158 0 n156 1 n154 0 n161 0 } -verbose -store
#attempt:1527
#current_net:n161
#current_comb_set:n161 n158,0 n156,1 n154,0 n161,0 
run_justification -full_sequential -set { 76 0 72 1 67 0 93 0 } -verbose -store
#run_justification -full_sequential -set { n160 1 n156 1 n154 0 n161 0 } -verbose -store
#attempt:1528
#current_net:n161
#current_comb_set:n161 n160,1 n156,1 n154,0 n161,0 
run_justification -full_sequential -set { 81 1 72 1 67 0 93 0 } -verbose -store
#run_justification -full_sequential -set { n160 1 n158 0 n154 0 n161 0 } -verbose -store
#attempt:1529
#current_net:n161
#current_comb_set:n161 n160,1 n158,0 n154,0 n161,0 
run_justification -full_sequential -set { 81 1 76 0 67 0 93 0 } -verbose -store
#run_justification -full_sequential -set { n160 1 n158 0 n156 1 n161 0 } -verbose -store
#attempt:1530
#current_net:n161
#current_comb_set:n161 n160,1 n158,0 n156,1 n161,0 
run_justification -full_sequential -set { 81 1 76 0 72 1 93 0 } -verbose -store
#run_justification -full_sequential -set { n156 1 n154 0 n161 0 } -verbose -store
#attempt:1531
#current_net:n161
#current_comb_set:n161 n156,1 n154,0 n161,0 
run_justification -full_sequential -set { 72 1 67 0 93 0 } -verbose -store
#run_justification -full_sequential -set { n158 0 n154 0 n161 0 } -verbose -store
#attempt:1532
#current_net:n161
#current_comb_set:n161 n158,0 n154,0 n161,0 
run_justification -full_sequential -set { 76 0 67 0 93 0 } -verbose -store
#run_justification -full_sequential -set { n158 0 n156 1 n161 0 } -verbose -store
#attempt:1533
#current_net:n161
#current_comb_set:n161 n158,0 n156,1 n161,0 
run_justification -full_sequential -set { 76 0 72 1 93 0 } -verbose -store
#run_justification -full_sequential -set { n160 1 n154 0 n161 0 } -verbose -store
#attempt:1534
#current_net:n161
#current_comb_set:n161 n160,1 n154,0 n161,0 
run_justification -full_sequential -set { 81 1 67 0 93 0 } -verbose -store
#run_justification -full_sequential -set { n160 1 n156 1 n161 0 } -verbose -store
#attempt:1535
#current_net:n161
#current_comb_set:n161 n160,1 n156,1 n161,0 
run_justification -full_sequential -set { 81 1 72 1 93 0 } -verbose -store
#run_justification -full_sequential -set { n160 1 n158 0 n161 0 } -verbose -store
#attempt:1536
#current_net:n161
#current_comb_set:n161 n160,1 n158,0 n161,0 
run_justification -full_sequential -set { 81 1 76 0 93 0 } -verbose -store
#run_justification -full_sequential -set { n154 0 n161 0 } -verbose -store
#attempt:1537
#current_net:n161
#current_comb_set:n161 n154,0 n161,0 
run_justification -full_sequential -set { 67 0 93 0 } -verbose -store
#run_justification -full_sequential -set { n156 1 n161 0 } -verbose -store
#attempt:1538
#current_net:n161
#current_comb_set:n161 n156,1 n161,0 
run_justification -full_sequential -set { 72 1 93 0 } -verbose -store
#run_justification -full_sequential -set { n158 0 n161 0 } -verbose -store
#attempt:1539
#current_net:n161
#current_comb_set:n161 n158,0 n161,0 
run_justification -full_sequential -set { 76 0 93 0 } -verbose -store
#run_justification -full_sequential -set { n160 1 n161 0 } -verbose -store
#attempt:1540
#current_net:n161
#current_comb_set:n161 n160,1 n161,0 
run_justification -full_sequential -set { 81 1 93 0 } -verbose -store
report_patterns -internal -all
exit
