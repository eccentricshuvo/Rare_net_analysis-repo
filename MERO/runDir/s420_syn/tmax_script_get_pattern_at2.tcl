read_netlist /home/UFAD/sudiptaparia/Downloads/mero_v2_1/src/lec25dscc25.v -library
read_netlist /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn/s420_syn.v
set_build -nodelete_unused_gates -merge noglobal_tie_propagate 
run_build_model s420

add_clocks 1 CLK
set_scan_ability on -all
drc
test
set pindata seq_sim_data 
#run_justification -full_sequential -set { DFF_12_N3 1 n144 1 } -verbose -store
#attempt:0
#current_net:DFF_12_N3
#current_comb_set:DFF_12_N3 DFF_12_N3,1 n144,1 
run_justification -full_sequential -set { 132 1 130 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n141 1 n143 0 n144 1 DFF_8_N3 1 } -verbose -store
#attempt:1
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 n141,1 n143,0 n144,1 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 114 1 121 0 130 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n144 1 DFF_8_N3 1 } -verbose -store
#attempt:2
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n141,1 n143,0 n144,1 DFF_8_N3,1 
run_justification -full_sequential -set { 114 1 121 0 130 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n143 0 n144 1 DFF_8_N3 1 } -verbose -store
#attempt:3
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 n143,0 n144,1 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 121 0 130 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n141 1 n144 1 DFF_8_N3 1 } -verbose -store
#attempt:4
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 n141,1 n144,1 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 114 1 130 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n141 1 n143 0 DFF_8_N3 1 } -verbose -store
#attempt:5
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 n141,1 n143,0 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 114 1 121 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 DFF_8_N3 1 } -verbose -store
#attempt:6
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n143,0 n144,1 DFF_8_N3,1 
run_justification -full_sequential -set { 121 0 130 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 DFF_8_N3 1 } -verbose -store
#attempt:7
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n141,1 n144,1 DFF_8_N3,1 
run_justification -full_sequential -set { 114 1 130 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 DFF_8_N3 1 } -verbose -store
#attempt:8
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n141,1 n143,0 DFF_8_N3,1 
run_justification -full_sequential -set { 114 1 121 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n144 1 DFF_8_N3 1 } -verbose -store
#attempt:9
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 n144,1 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 130 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n143 0 DFF_8_N3 1 } -verbose -store
#attempt:10
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 n143,0 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 121 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 n141 1 DFF_8_N3 1 } -verbose -store
#attempt:11
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 n141,1 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 114 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 DFF_8_N3 1 } -verbose -store
#attempt:12
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n144,1 DFF_8_N3,1 
run_justification -full_sequential -set { 130 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 DFF_8_N3 1 } -verbose -store
#attempt:13
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n143,0 DFF_8_N3,1 
run_justification -full_sequential -set { 121 0 117 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 DFF_8_N3 1 } -verbose -store
#attempt:14
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n141,1 DFF_8_N3,1 
run_justification -full_sequential -set { 114 1 117 1 } -verbose -store
#run_justification -full_sequential -set { n152 1 DFF_8_N3 1 } -verbose -store
#attempt:15
#current_net:DFF_8_N3
#current_comb_set:DFF_8_N3 n152,1 DFF_8_N3,1 
run_justification -full_sequential -set { 104 1 117 1 } -verbose -store
#run_justification -full_sequential -set { DFF_4_N3 1 DFF_5_Q_reg 1 } -verbose -store
#attempt:16
#current_net:DFF_4_N3
#current_comb:DFF_4_N3 DFF_4_N3,1 DFF_5_Q_reg,1 
run_justification -full_sequential -set { 94 1 23 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 n144 1 DFF_14_N3 1 } -verbose -store
#attempt:17
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n143,0 n144,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 121 0 130 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 DFF_14_N3 1 } -verbose -store
#attempt:18
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n143,0 n144,1 DFF_14_N3,1 
run_justification -full_sequential -set { 121 0 130 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n144 1 DFF_14_N3 1 } -verbose -store
#attempt:19
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n144,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 130 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 n143 0 DFF_14_N3 1 } -verbose -store
#attempt:20
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 n143,0 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 121 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n144 1 DFF_14_N3 1 } -verbose -store
#attempt:21
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n144,1 DFF_14_N3,1 
run_justification -full_sequential -set { 130 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 DFF_14_N3 1 } -verbose -store
#attempt:22
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n143,0 DFF_14_N3,1 
run_justification -full_sequential -set { 121 0 124 1 } -verbose -store
#run_justification -full_sequential -set { n141 1 DFF_14_N3 1 } -verbose -store
#attempt:23
#current_net:DFF_14_N3
#current_comb_set:DFF_14_N3 n141,1 DFF_14_N3,1 
run_justification -full_sequential -set { 114 1 124 1 } -verbose -store
#run_justification -full_sequential -set { n160 1 n161 0 } -verbose -store
#attempt:24
#current_net:n160
#current_comb_set:n160 n160,1 n161,0 
run_justification -full_sequential -set { 81 1 93 0 } -verbose -store
#run_justification -full_sequential -set { n149 0 n161 0 n148 1 } -verbose -store
#attempt:25
#current_net:n148
#current_comb_set:n148 n149,0 n161,0 n148,1 
run_justification -full_sequential -set { 106 0 93 0 91 1 } -verbose -store
#run_justification -full_sequential -set { n161 0 n148 1 } -verbose -store
#attempt:26
#current_net:n148
#current_comb_set:n148 n161,0 n148,1 
run_justification -full_sequential -set { 93 0 91 1 } -verbose -store
#run_justification -full_sequential -set { n149 0 n148 1 } -verbose -store
#attempt:27
#current_net:n148
#current_comb_set:n148 n149,0 n148,1 
run_justification -full_sequential -set { 106 0 91 1 } -verbose -store
#run_justification -full_sequential -set { n149 0 n161 0 n150 0 } -verbose -store
#attempt:28
#current_net:n150
#current_comb_set:n150 n149,0 n161,0 n150,0 
run_justification -full_sequential -set { 106 0 93 0 103 0 } -verbose -store
#run_justification -full_sequential -set { n161 0 n150 0 } -verbose -store
#attempt:29
#current_net:n150
#current_comb_set:n150 n161,0 n150,0 
run_justification -full_sequential -set { 93 0 103 0 } -verbose -store
#run_justification -full_sequential -set { n149 0 n150 0 } -verbose -store
#attempt:30
#current_net:n150
#current_comb_set:n150 n149,0 n150,0 
run_justification -full_sequential -set { 106 0 103 0 } -verbose -store
#run_justification -full_sequential -set { n149 0 n153 0 n161 0 n152 1 } -verbose -store
#attempt:31
#current_net:n152
#current_comb_set:n152 n149,0 n153,0 n161,0 n152,1 
run_justification -full_sequential -set { 106 0 116 0 93 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n153 0 n161 0 n152 1 } -verbose -store
#attempt:32
#current_net:n152
#current_comb_set:n152 n153,0 n161,0 n152,1 
run_justification -full_sequential -set { 116 0 93 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n149 0 n161 0 n152 1 } -verbose -store
#attempt:33
#current_net:n152
#current_comb_set:n152 n149,0 n161,0 n152,1 
run_justification -full_sequential -set { 106 0 93 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n149 0 n153 0 n152 1 } -verbose -store
#attempt:34
#current_net:n152
#current_comb_set:n152 n149,0 n153,0 n152,1 
run_justification -full_sequential -set { 106 0 116 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n161 0 n152 1 } -verbose -store
#attempt:35
#current_net:n152
#current_comb_set:n152 n161,0 n152,1 
run_justification -full_sequential -set { 93 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n153 0 n152 1 } -verbose -store
#attempt:36
#current_net:n152
#current_comb_set:n152 n153,0 n152,1 
run_justification -full_sequential -set { 116 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n149 0 n152 1 } -verbose -store
#attempt:37
#current_net:n152
#current_comb_set:n152 n149,0 n152,1 
run_justification -full_sequential -set { 106 0 104 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n149 0 n153 0 n161 0 n141 1 } -verbose -store
#attempt:38
#current_net:n141
#current_comb_set:n141 n140,0 n149,0 n153,0 n161,0 n141,1 
run_justification -full_sequential -set { 123 0 106 0 116 0 93 0 114 1 } -verbose -store
#run_justification -full_sequential -set { n149 0 n153 0 n161 0 n141 1 } -verbose -store
#attempt:39
#current_net:n141
#current_comb_set:n141 n149,0 n153,0 n161,0 n141,1 
run_justification -full_sequential -set { 106 0 116 0 93 0 114 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n153 0 n161 0 n141 1 } -verbose -store
#attempt:40
#current_net:n141
#current_comb_set:n141 n140,0 n153,0 n161,0 n141,1 
run_justification -full_sequential -set { 123 0 116 0 93 0 114 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n149 0 n161 0 n141 1 } -verbose -store
#attempt:41
#current_net:n141
#current_comb_set:n141 n140,0 n149,0 n161,0 n141,1 
run_justification -full_sequential -set { 123 0 106 0 93 0 114 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n149 0 n153 0 n141 1 } -verbose -store
#attempt:42
#current_net:n141
#current_comb_set:n141 n140,0 n149,0 n153,0 n141,1 
run_justification -full_sequential -set { 123 0 106 0 116 0 114 1 } -verbose -store
#run_justification -full_sequential -set { n153 0 n161 0 n141 1 } -verbose -store
#attempt:43
#current_net:n141
#current_comb_set:n141 n153,0 n161,0 n141,1 
run_justification -full_sequential -set { 116 0 93 0 114 1 } -verbose -store
#run_justification -full_sequential -set { n149 0 n161 0 n141 1 } -verbose -store
#attempt:44
#current_net:n141
#current_comb_set:n141 n149,0 n161,0 n141,1 
run_justification -full_sequential -set { 106 0 93 0 114 1 } -verbose -store
#run_justification -full_sequential -set { n149 0 n153 0 n141 1 } -verbose -store
#attempt:45
#current_net:n141
#current_comb_set:n141 n149,0 n153,0 n141,1 
run_justification -full_sequential -set { 106 0 116 0 114 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n161 0 n141 1 } -verbose -store
#attempt:46
#current_net:n141
#current_comb_set:n141 n140,0 n161,0 n141,1 
run_justification -full_sequential -set { 123 0 93 0 114 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n153 0 n141 1 } -verbose -store
#attempt:47
#current_net:n141
#current_comb_set:n141 n140,0 n153,0 n141,1 
run_justification -full_sequential -set { 123 0 116 0 114 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n149 0 n141 1 } -verbose -store
#attempt:48
#current_net:n141
#current_comb_set:n141 n140,0 n149,0 n141,1 
run_justification -full_sequential -set { 123 0 106 0 114 1 } -verbose -store
#run_justification -full_sequential -set { n161 0 n141 1 } -verbose -store
#attempt:49
#current_net:n141
#current_comb_set:n141 n161,0 n141,1 
run_justification -full_sequential -set { 93 0 114 1 } -verbose -store
#run_justification -full_sequential -set { n153 0 n141 1 } -verbose -store
#attempt:50
#current_net:n141
#current_comb_set:n141 n153,0 n141,1 
run_justification -full_sequential -set { 116 0 114 1 } -verbose -store
#run_justification -full_sequential -set { n149 0 n141 1 } -verbose -store
#attempt:51
#current_net:n141
#current_comb_set:n141 n149,0 n141,1 
run_justification -full_sequential -set { 106 0 114 1 } -verbose -store
#run_justification -full_sequential -set { n140 0 n141 1 } -verbose -store
#attempt:52
#current_net:n141
#current_comb_set:n141 n140,0 n141,1 
run_justification -full_sequential -set { 123 0 114 1 } -verbose -store
#run_justification -full_sequential -set { n143 0 n144 1 n140 0 } -verbose -store
#attempt:53
#current_net:n140
#current_comb_set:n140 n143,0 n144,1 n140,0 
run_justification -full_sequential -set { 121 0 130 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n144 1 n140 0 } -verbose -store
#attempt:54
#current_net:n140
#current_comb_set:n140 n144,1 n140,0 
run_justification -full_sequential -set { 130 1 123 0 } -verbose -store
#run_justification -full_sequential -set { n143 0 n140 0 } -verbose -store
#attempt:55
#current_net:n140
#current_comb_set:n140 n143,0 n140,0 
run_justification -full_sequential -set { 121 0 123 0 } -verbose -store
#run_justification -full_sequential -set { n149 0 n153 0 n161 0 n143 0 } -verbose -store
#attempt:56
#current_net:n143
#current_comb_set:n143 n149,0 n153,0 n161,0 n143,0 
run_justification -full_sequential -set { 106 0 116 0 93 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n153 0 n161 0 n143 0 } -verbose -store
#attempt:57
#current_net:n143
#current_comb_set:n143 n153,0 n161,0 n143,0 
run_justification -full_sequential -set { 116 0 93 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n149 0 n161 0 n143 0 } -verbose -store
#attempt:58
#current_net:n143
#current_comb_set:n143 n149,0 n161,0 n143,0 
run_justification -full_sequential -set { 106 0 93 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n149 0 n153 0 n143 0 } -verbose -store
#attempt:59
#current_net:n143
#current_comb_set:n143 n149,0 n153,0 n143,0 
run_justification -full_sequential -set { 106 0 116 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n161 0 n143 0 } -verbose -store
#attempt:60
#current_net:n143
#current_comb_set:n143 n161,0 n143,0 
run_justification -full_sequential -set { 93 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n153 0 n143 0 } -verbose -store
#attempt:61
#current_net:n143
#current_comb_set:n143 n153,0 n143,0 
run_justification -full_sequential -set { 116 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n149 0 n143 0 } -verbose -store
#attempt:62
#current_net:n143
#current_comb_set:n143 n149,0 n143,0 
run_justification -full_sequential -set { 106 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n145 0 n149 0 n153 0 n161 0 n144 1 } -verbose -store
#attempt:63
#current_net:n144
#current_comb_set:n144 n145,0 n149,0 n153,0 n161,0 n144,1 
run_justification -full_sequential -set { 131 0 106 0 116 0 93 0 130 1 } -verbose -store
#run_justification -full_sequential -set { n149 0 n153 0 n161 0 n144 1 } -verbose -store
#attempt:64
#current_net:n144
#current_comb_set:n144 n149,0 n153,0 n161,0 n144,1 
run_justification -full_sequential -set { 106 0 116 0 93 0 130 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n153 0 n161 0 n144 1 } -verbose -store
#attempt:65
#current_net:n144
#current_comb_set:n144 n145,0 n153,0 n161,0 n144,1 
run_justification -full_sequential -set { 131 0 116 0 93 0 130 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n149 0 n161 0 n144 1 } -verbose -store
#attempt:66
#current_net:n144
#current_comb_set:n144 n145,0 n149,0 n161,0 n144,1 
run_justification -full_sequential -set { 131 0 106 0 93 0 130 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n149 0 n153 0 n144 1 } -verbose -store
#attempt:67
#current_net:n144
#current_comb_set:n144 n145,0 n149,0 n153,0 n144,1 
run_justification -full_sequential -set { 131 0 106 0 116 0 130 1 } -verbose -store
#run_justification -full_sequential -set { n153 0 n161 0 n144 1 } -verbose -store
#attempt:68
#current_net:n144
#current_comb_set:n144 n153,0 n161,0 n144,1 
run_justification -full_sequential -set { 116 0 93 0 130 1 } -verbose -store
#run_justification -full_sequential -set { n149 0 n161 0 n144 1 } -verbose -store
#attempt:69
#current_net:n144
#current_comb_set:n144 n149,0 n161,0 n144,1 
run_justification -full_sequential -set { 106 0 93 0 130 1 } -verbose -store
#run_justification -full_sequential -set { n149 0 n153 0 n144 1 } -verbose -store
#attempt:70
#current_net:n144
#current_comb_set:n144 n149,0 n153,0 n144,1 
run_justification -full_sequential -set { 106 0 116 0 130 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n161 0 n144 1 } -verbose -store
#attempt:71
#current_net:n144
#current_comb_set:n144 n145,0 n161,0 n144,1 
run_justification -full_sequential -set { 131 0 93 0 130 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n153 0 n144 1 } -verbose -store
#attempt:72
#current_net:n144
#current_comb_set:n144 n145,0 n153,0 n144,1 
run_justification -full_sequential -set { 131 0 116 0 130 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n149 0 n144 1 } -verbose -store
#attempt:73
#current_net:n144
#current_comb_set:n144 n145,0 n149,0 n144,1 
run_justification -full_sequential -set { 131 0 106 0 130 1 } -verbose -store
#run_justification -full_sequential -set { n161 0 n144 1 } -verbose -store
#attempt:74
#current_net:n144
#current_comb_set:n144 n161,0 n144,1 
run_justification -full_sequential -set { 93 0 130 1 } -verbose -store
#run_justification -full_sequential -set { n153 0 n144 1 } -verbose -store
#attempt:75
#current_net:n144
#current_comb_set:n144 n153,0 n144,1 
run_justification -full_sequential -set { 116 0 130 1 } -verbose -store
#run_justification -full_sequential -set { n149 0 n144 1 } -verbose -store
#attempt:76
#current_net:n144
#current_comb_set:n144 n149,0 n144,1 
run_justification -full_sequential -set { 106 0 130 1 } -verbose -store
#run_justification -full_sequential -set { n145 0 n144 1 } -verbose -store
#attempt:77
#current_net:n144
#current_comb_set:n144 n145,0 n144,1 
run_justification -full_sequential -set { 131 0 130 1 } -verbose -store
report_patterns -internal -all
exit
