set_messages -log /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//justify.log -replace 
read_netlist /home/UFAD/sudiptaparia/Downloads/mero_v2_1/src//lec25dscc25.v -library
read_netlist /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn/s420_syn.v
set_build -nodelete_unused_gates -merge noglobal_tie_propagate
run_build_model s420
add_clocks 1 CLK
set_scan_ability on -all 
drc 
test 
set pindata seq_sim_data 
run_justification -full_sequential -set { 75 1 114 1 } -verbose -store
#current_net:DFF_0_N3 n141 
run_justification -full_sequential -set { 107 1 131 0 } -verbose -store
#current_net:DFF_10_N3 n145 
run_justification -full_sequential -set { 121 0 67 0 } -verbose -store
#current_net:n143 n154 
run_justification -full_sequential -set { 107 1 84 1 } -verbose -store
#current_net:DFF_10_N3 DFF_6_N3 
run_justification -full_sequential -set { 107 1 103 0 } -verbose -store
#current_net:DFF_10_N3 n150 
run_justification -full_sequential -set { 114 1 103 0 } -verbose -store
#current_net:n141 n150 
run_justification -full_sequential -set { 132 1 76 0 } -verbose -store
#current_net:DFF_12_N3 n158 
run_justification -full_sequential -set { 117 1 72 1 } -verbose -store
#current_net:DFF_8_N3 n156 
run_justification -full_sequential -set { 131 0 93 0 } -verbose -store
#current_net:n145 n161 
run_justification -full_sequential -set { 114 1 93 0 } -verbose -store
#current_net:n141 n161 
run_justification -full_sequential -set { 107 1 114 1 } -verbose -store
#current_net:DFF_10_N3 n141 
run_justification -full_sequential -set { 107 1 121 0 } -verbose -store
#current_net:DFF_10_N3 n143 
run_justification -full_sequential -set { 114 1 104 1 } -verbose -store
#current_net:n141 n152 
run_justification -full_sequential -set { 117 1 91 1 } -verbose -store
#current_net:DFF_8_N3 n148 
run_justification -full_sequential -set { 131 0 67 0 } -verbose -store
#current_net:n145 n154 
run_justification -full_sequential -set { 130 1 131 0 } -verbose -store
#current_net:n144 n145 
run_justification -full_sequential -set { 75 1 116 0 } -verbose -store
#current_net:DFF_0_N3 n153 
run_justification -full_sequential -set { 121 0 104 1 } -verbose -store
#current_net:n143 n152 
run_justification -full_sequential -set { 108 0 104 1 } -verbose -store
#current_net:n139 n152 
run_justification -full_sequential -set { 121 0 93 0 } -verbose -store
#current_net:n143 n161 
run_justification -full_sequential -set { 130 1 116 0 } -verbose -store
#current_net:n144 n153 
run_justification -full_sequential -set { 67 0 76 0 } -verbose -store
#current_net:n154 n158 
run_justification -full_sequential -set { 132 1 103 0 } -verbose -store
#current_net:DFF_12_N3 n150 
run_justification -full_sequential -set { 75 1 106 0 } -verbose -store
#current_net:DFF_0_N3 n149 
run_justification -full_sequential -set { 106 0 83 0 } -verbose -store
#current_net:n149 n157 
run_justification -full_sequential -set { 121 0 72 1 } -verbose -store
#current_net:n143 n156 
run_justification -full_sequential -set { 132 1 130 1 } -verbose -store
#current_net:DFF_12_N3 n144 
run_justification -full_sequential -set { 116 0 93 0 } -verbose -store
#current_net:n153 n161 
run_justification -full_sequential -set { 132 1 130 1 } -verbose -store
#current_net:DFF_12_N3 n144 
run_justification -full_sequential -set { 75 1 131 0 } -verbose -store
#current_net:DFF_0_N3 n145 
run_justification -full_sequential -set { 75 1 90 0 } -verbose -store
#current_net:DFF_0_N3 n146 
run_justification -full_sequential -set { 123 0 83 0 } -verbose -store
#current_net:n140 n157 
run_justification -full_sequential -set { 132 1 67 0 } -verbose -store
#current_net:DFF_12_N3 n154 
run_justification -full_sequential -set { 107 1 90 0 } -verbose -store
#current_net:DFF_10_N3 n146 
run_justification -full_sequential -set { 114 1 103 0 } -verbose -store
#current_net:n141 n150 
run_justification -full_sequential -set { 117 1 106 0 } -verbose -store
#current_net:DFF_8_N3 n149 
run_justification -full_sequential -set { 124 1 121 0 } -verbose -store
#current_net:DFF_14_N3 n143 
run_justification -full_sequential -set { 123 0 67 0 } -verbose -store
#current_net:n140 n154 
run_justification -full_sequential -set { 90 0 81 1 } -verbose -store
#current_net:n146 n160 
run_justification -full_sequential -set { 75 1 91 1 } -verbose -store
#current_net:DFF_0_N3 n148 
run_justification -full_sequential -set { 121 0 81 1 } -verbose -store
#current_net:n143 n160 
run_justification -full_sequential -set { 132 1 108 0 } -verbose -store
#current_net:DFF_12_N3 n139 
run_justification -full_sequential -set { 107 1 84 1 } -verbose -store
#current_net:DFF_10_N3 DFF_6_N3 
run_justification -full_sequential -set { 94 1 130 1 } -verbose -store
#current_net:DFF_4_N3 n144 
run_justification -full_sequential -set { 132 1 124 1 } -verbose -store
#current_net:DFF_12_N3 DFF_14_N3 
run_justification -full_sequential -set { 132 1 91 1 } -verbose -store
#current_net:DFF_12_N3 n148 
run_justification -full_sequential -set { 72 1 93 0 } -verbose -store
#current_net:n156 n161 
run_justification -full_sequential -set { 103 0 72 1 } -verbose -store
#current_net:n150 n156 
run_justification -full_sequential -set { 130 1 91 1 } -verbose -store
#current_net:n144 n148 
run_justification -full_sequential -set { 94 1 130 1 } -verbose -store
#current_net:DFF_4_N3 n144 
run_justification -full_sequential -set { 94 1 106 0 } -verbose -store
#current_net:DFF_4_N3 n149 
run_justification -full_sequential -set { 117 1 114 1 } -verbose -store
#current_net:DFF_8_N3 n141 
run_justification -full_sequential -set { 84 1 103 0 } -verbose -store
#current_net:DFF_6_N3 n150 
run_justification -full_sequential -set { 107 1 93 0 } -verbose -store
#current_net:DFF_10_N3 n161 
run_justification -full_sequential -set { 67 0 83 0 } -verbose -store
#current_net:n154 n157 
run_justification -full_sequential -set { 104 1 72 1 } -verbose -store
#current_net:n152 n156 
run_justification -full_sequential -set { 67 0 81 1 } -verbose -store
#current_net:n154 n160 
run_justification -full_sequential -set { 103 0 81 1 } -verbose -store
#current_net:n150 n160 
run_justification -full_sequential -set { 76 0 74 0 } -verbose -store
#current_net:n158 n168 
run_justification -full_sequential -set { 114 1 121 0 } -verbose -store
#current_net:n141 n143 
run_justification -full_sequential -set { 107 1 81 1 } -verbose -store
#current_net:DFF_10_N3 n160 
run_justification -full_sequential -set { 124 1 130 1 } -verbose -store
#current_net:DFF_14_N3 n144 
run_justification -full_sequential -set { 103 0 104 1 } -verbose -store
#current_net:n150 n152 
run_justification -full_sequential -set { 132 1 103 0 } -verbose -store
#current_net:DFF_12_N3 n150 
run_justification -full_sequential -set { 91 1 74 0 } -verbose -store
#current_net:n148 n168 
run_justification -full_sequential -set { 94 1 81 1 } -verbose -store
#current_net:DFF_4_N3 n160 
run_justification -full_sequential -set { 84 1 131 0 } -verbose -store
#current_net:DFF_6_N3 n145 
run_justification -full_sequential -set { 117 1 106 0 } -verbose -store
#current_net:DFF_8_N3 n149 
run_justification -full_sequential -set { 107 1 114 1 } -verbose -store
#current_net:DFF_10_N3 n141 
run_justification -full_sequential -set { 131 0 103 0 } -verbose -store
#current_net:n145 n150 
run_justification -full_sequential -set { 107 1 106 0 } -verbose -store
#current_net:DFF_10_N3 n149 
run_justification -full_sequential -set { 90 0 104 1 } -verbose -store
#current_net:n146 n152 
run_justification -full_sequential -set { 121 0 83 0 } -verbose -store
#current_net:n143 n157 
run_justification -full_sequential -set { 107 1 103 0 } -verbose -store
#current_net:DFF_10_N3 n150 
run_justification -full_sequential -set { 94 1 91 1 } -verbose -store
#current_net:DFF_4_N3 n148 
run_justification -full_sequential -set { 116 0 67 0 } -verbose -store
#current_net:n153 n154 
run_justification -full_sequential -set { 90 0 81 1 } -verbose -store
#current_net:n146 n160 
run_justification -full_sequential -set { 67 0 81 1 } -verbose -store
#current_net:n154 n160 
run_justification -full_sequential -set { 124 1 84 1 } -verbose -store
#current_net:DFF_14_N3 DFF_6_N3 
run_justification -full_sequential -set { 84 1 67 0 } -verbose -store
#current_net:DFF_6_N3 n154 
run_justification -full_sequential -set { 91 1 76 0 } -verbose -store
#current_net:n148 n158 
run_justification -full_sequential -set { 130 1 67 0 } -verbose -store
#current_net:n144 n154 
run_justification -full_sequential -set { 124 1 81 1 } -verbose -store
#current_net:DFF_14_N3 n160 
run_justification -full_sequential -set { 93 0 74 0 } -verbose -store
#current_net:n161 n168 
run_justification -full_sequential -set { 104 1 93 0 } -verbose -store
#current_net:n152 n161 
run_justification -full_sequential -set { 94 1 84 1 } -verbose -store
#current_net:DFF_4_N3 DFF_6_N3 
run_justification -full_sequential -set { 117 1 131 0 } -verbose -store
#current_net:DFF_8_N3 n145 
run_justification -full_sequential -set { 90 0 83 0 } -verbose -store
#current_net:n146 n157 
run_justification -full_sequential -set { 108 0 123 0 } -verbose -store
#current_net:n139 n140 
run_justification -full_sequential -set { 130 1 83 0 } -verbose -store
#current_net:n144 n157 
run_justification -full_sequential -set { 84 1 81 1 } -verbose -store
#current_net:DFF_6_N3 n160 
run_justification -full_sequential -set { 91 1 116 0 } -verbose -store
#current_net:n148 n153 
run_justification -full_sequential -set { 94 1 131 0 } -verbose -store
#current_net:DFF_4_N3 n145 
run_justification -full_sequential -set { 108 0 91 1 } -verbose -store
#current_net:n139 n148 
run_justification -full_sequential -set { 124 1 130 1 } -verbose -store
#current_net:DFF_14_N3 n144 
run_justification -full_sequential -set { 107 1 76 0 } -verbose -store
#current_net:DFF_10_N3 n158 
run_justification -full_sequential -set { 132 1 123 0 } -verbose -store
#current_net:DFF_12_N3 n140 
run_justification -full_sequential -set { 75 1 83 0 } -verbose -store
#current_net:DFF_0_N3 n157 
run_justification -full_sequential -set { 131 0 116 0 } -verbose -store
#current_net:n145 n153 
run_justification -full_sequential -set { 114 1 104 1 } -verbose -store
#current_net:n141 n152 
run_justification -full_sequential -set { 91 1 72 1 } -verbose -store
#current_net:n148 n156 
run_justification -full_sequential -set { 107 1 94 1 } -verbose -store
#current_net:DFF_10_N3 DFF_4_N3 
run_justification -full_sequential -set { 114 1 91 1 } -verbose -store
#current_net:n141 n148 
run_justification -full_sequential -set { 124 1 84 1 } -verbose -store
#current_net:DFF_14_N3 DFF_6_N3 
run_justification -full_sequential -set { 123 0 103 0 } -verbose -store
#current_net:n140 n150 
run_justification -full_sequential -set { 130 1 74 0 } -verbose -store
#current_net:n144 n168 
run_justification -full_sequential -set { 117 1 108 0 } -verbose -store
#current_net:DFF_8_N3 n139 
run_justification -full_sequential -set { 75 1 93 0 } -verbose -store
#current_net:DFF_0_N3 n161 
run_justification -full_sequential -set { 124 1 104 1 } -verbose -store
#current_net:DFF_14_N3 n152 
run_justification -full_sequential -set { 117 1 123 0 } -verbose -store
#current_net:DFF_8_N3 n140 
run_justification -full_sequential -set { 91 1 74 0 } -verbose -store
#current_net:n148 n168 
run_justification -full_sequential -set { 84 1 114 1 } -verbose -store
#current_net:DFF_6_N3 n141 
run_justification -full_sequential -set { 107 1 114 1 } -verbose -store
#current_net:DFF_10_N3 n141 
run_justification -full_sequential -set { 84 1 108 0 } -verbose -store
#current_net:DFF_6_N3 n139 
run_justification -full_sequential -set { 131 0 90 0 } -verbose -store
#current_net:n145 n146 
run_justification -full_sequential -set { 124 1 114 1 } -verbose -store
#current_net:DFF_14_N3 n141 
run_justification -full_sequential -set { 114 1 81 1 } -verbose -store
#current_net:n141 n160 
run_justification -full_sequential -set { 121 0 67 0 } -verbose -store
#current_net:n143 n154 
run_justification -full_sequential -set { 124 1 74 0 } -verbose -store
#current_net:DFF_14_N3 n168 
run_justification -full_sequential -set { 91 1 106 0 } -verbose -store
#current_net:n148 n149 
run_justification -full_sequential -set { 84 1 83 0 } -verbose -store
#current_net:DFF_6_N3 n157 
run_justification -full_sequential -set { 121 0 93 0 } -verbose -store
#current_net:n143 n161 
run_justification -full_sequential -set { 84 1 116 0 } -verbose -store
#current_net:DFF_6_N3 n153 
run_justification -full_sequential -set { 116 0 67 0 } -verbose -store
#current_net:n153 n154 
run_justification -full_sequential -set { 91 1 106 0 } -verbose -store
#current_net:n148 n149 
run_justification -full_sequential -set { 132 1 114 1 } -verbose -store
#current_net:DFF_12_N3 n141 
run_justification -full_sequential -set { 94 1 130 1 } -verbose -store
#current_net:DFF_4_N3 n144 
run_justification -full_sequential -set { 132 1 81 1 } -verbose -store
#current_net:DFF_12_N3 n160 
run_justification -full_sequential -set { 107 1 114 1 } -verbose -store
#current_net:DFF_10_N3 n141 
run_justification -full_sequential -set { 72 1 93 0 } -verbose -store
#current_net:n156 n161 
run_justification -full_sequential -set { 131 0 103 0 } -verbose -store
#current_net:n145 n150 
run_justification -full_sequential -set { 108 0 74 0 } -verbose -store
#current_net:n139 n168 
run_justification -full_sequential -set { 108 0 104 1 } -verbose -store
#current_net:n139 n152 
run_justification -full_sequential -set { 94 1 90 0 } -verbose -store
#current_net:DFF_4_N3 n146 
run_justification -full_sequential -set { 131 0 76 0 } -verbose -store
#current_net:n145 n158 
run_justification -full_sequential -set { 130 1 93 0 } -verbose -store
#current_net:n144 n161 
run_justification -full_sequential -set { 130 1 74 0 } -verbose -store
#current_net:n144 n168 
run_justification -full_sequential -set { 72 1 74 0 } -verbose -store
#current_net:n156 n168 
run_justification -full_sequential -set { 123 0 114 1 } -verbose -store
#current_net:n140 n141 
run_justification -full_sequential -set { 91 1 116 0 } -verbose -store
#current_net:n148 n153 
run_justification -full_sequential -set { 75 1 114 1 } -verbose -store
#current_net:DFF_0_N3 n141 
run_justification -full_sequential -set { 130 1 131 0 } -verbose -store
#current_net:n144 n145 
run_justification -full_sequential -set { 132 1 108 0 } -verbose -store
#current_net:DFF_12_N3 n139 
run_justification -full_sequential -set { 114 1 103 0 } -verbose -store
#current_net:n141 n150 
run_justification -full_sequential -set { 91 1 83 0 } -verbose -store
#current_net:n148 n157 
run_justification -full_sequential -set { 75 1 93 0 } -verbose -store
#current_net:DFF_0_N3 n161 
run_justification -full_sequential -set { 108 0 81 1 } -verbose -store
#current_net:n139 n160 
run_justification -full_sequential -set { 75 1 76 0 } -verbose -store
#current_net:DFF_0_N3 n158 
run_justification -full_sequential -set { 114 1 91 1 } -verbose -store
#current_net:n141 n148 
run_justification -full_sequential -set { 108 0 104 1 } -verbose -store
#current_net:n139 n152 
run_justification -full_sequential -set { 130 1 104 1 } -verbose -store
#current_net:n144 n152 
run_justification -full_sequential -set { 107 1 67 0 } -verbose -store
#current_net:DFF_10_N3 n154 
run_justification -full_sequential -set { 117 1 72 1 } -verbose -store
#current_net:DFF_8_N3 n156 
run_justification -full_sequential -set { 90 0 91 1 } -verbose -store
#current_net:n146 n148 
run_justification -full_sequential -set { 124 1 114 1 } -verbose -store
#current_net:DFF_14_N3 n141 
run_justification -full_sequential -set { 131 0 83 0 } -verbose -store
#current_net:n145 n157 
run_justification -full_sequential -set { 121 0 72 1 } -verbose -store
#current_net:n143 n156 
run_justification -full_sequential -set { 94 1 104 1 } -verbose -store
#current_net:DFF_4_N3 n152 
run_justification -full_sequential -set { 107 1 81 1 } -verbose -store
#current_net:DFF_10_N3 n160 
run_justification -full_sequential -set { 106 0 116 0 } -verbose -store
#current_net:n149 n153 
run_justification -full_sequential -set { 72 1 76 0 } -verbose -store
#current_net:n156 n158 
run_justification -full_sequential -set { 75 1 93 0 } -verbose -store
#current_net:DFF_0_N3 n161 
run_justification -full_sequential -set { 132 1 76 0 } -verbose -store
#current_net:DFF_12_N3 n158 
run_justification -full_sequential -set { 108 0 72 1 } -verbose -store
#current_net:n139 n156 
run_justification -full_sequential -set { 108 0 93 0 } -verbose -store
#current_net:n139 n161 
run_justification -full_sequential -set { 107 1 131 0 } -verbose -store
#current_net:DFF_10_N3 n145 
run_justification -full_sequential -set { 103 0 72 1 } -verbose -store
#current_net:n150 n156 
run_justification -full_sequential -set { 121 0 131 0 } -verbose -store
#current_net:n143 n145 
run_justification -full_sequential -set { 84 1 83 0 } -verbose -store
#current_net:DFF_6_N3 n157 
run_justification -full_sequential -set { 83 0 76 0 } -verbose -store
#current_net:n157 n158 
run_justification -full_sequential -set { 132 1 76 0 } -verbose -store
#current_net:DFF_12_N3 n158 
run_justification -full_sequential -set { 121 0 83 0 } -verbose -store
#current_net:n143 n157 
run_justification -full_sequential -set { 104 1 76 0 } -verbose -store
#current_net:n152 n158 
run_justification -full_sequential -set { 132 1 124 1 } -verbose -store
#current_net:DFF_12_N3 DFF_14_N3 
run_justification -full_sequential -set { 104 1 74 0 } -verbose -store
#current_net:n152 n168 
run_justification -full_sequential -set { 117 1 81 1 } -verbose -store
#current_net:DFF_8_N3 n160 
run_justification -full_sequential -set { 67 0 76 0 } -verbose -store
#current_net:n154 n158 
run_justification -full_sequential -set { 106 0 74 0 } -verbose -store
#current_net:n149 n168 
run_justification -full_sequential -set { 124 1 67 0 } -verbose -store
#current_net:DFF_14_N3 n154 
run_justification -full_sequential -set { 132 1 90 0 } -verbose -store
#current_net:DFF_12_N3 n146 
run_justification -full_sequential -set { 107 1 83 0 } -verbose -store
#current_net:DFF_10_N3 n157 
run_justification -full_sequential -set { 114 1 76 0 } -verbose -store
#current_net:n141 n158 
run_justification -full_sequential -set { 130 1 81 1 } -verbose -store
#current_net:n144 n160 
run_justification -full_sequential -set { 132 1 117 1 } -verbose -store
#current_net:DFF_12_N3 DFF_8_N3 
run_justification -full_sequential -set { 108 0 72 1 } -verbose -store
#current_net:n139 n156 
run_justification -full_sequential -set { 104 1 74 0 } -verbose -store
#current_net:n152 n168 
run_justification -full_sequential -set { 123 0 104 1 } -verbose -store
#current_net:n140 n152 
run_justification -full_sequential -set { 114 1 72 1 } -verbose -store
#current_net:n141 n156 
run_justification -full_sequential -set { 107 1 117 1 } -verbose -store
#current_net:DFF_10_N3 DFF_8_N3 
run_justification -full_sequential -set { 75 1 67 0 } -verbose -store
#current_net:DFF_0_N3 n154 
run_justification -full_sequential -set { 124 1 76 0 } -verbose -store
#current_net:DFF_14_N3 n158 
run_justification -full_sequential -set { 123 0 91 1 } -verbose -store
#current_net:n140 n148 
run_justification -full_sequential -set { 107 1 124 1 } -verbose -store
#current_net:DFF_10_N3 DFF_14_N3 
run_justification -full_sequential -set { 132 1 104 1 } -verbose -store
#current_net:DFF_12_N3 n152 
run_justification -full_sequential -set { 91 1 74 0 } -verbose -store
#current_net:n148 n168 
run_justification -full_sequential -set { 90 0 67 0 } -verbose -store
#current_net:n146 n154 
run_justification -full_sequential -set { 90 0 116 0 } -verbose -store
#current_net:n146 n153 
run_justification -full_sequential -set { 103 0 72 1 } -verbose -store
#current_net:n150 n156 
run_justification -full_sequential -set { 108 0 123 0 } -verbose -store
#current_net:n139 n140 
run_justification -full_sequential -set { 130 1 103 0 } -verbose -store
#current_net:n144 n150 
run_justification -full_sequential -set { 84 1 108 0 } -verbose -store
#current_net:DFF_6_N3 n139 
run_justification -full_sequential -set { 75 1 94 1 } -verbose -store
#current_net:DFF_0_N3 DFF_4_N3 
run_justification -full_sequential -set { 67 0 76 0 } -verbose -store
#current_net:n154 n158 
run_justification -full_sequential -set { 130 1 67 0 } -verbose -store
#current_net:n144 n154 
run_justification -full_sequential -set { 121 0 93 0 } -verbose -store
#current_net:n143 n161 
run_justification -full_sequential -set { 121 0 130 1 } -verbose -store
#current_net:n143 n144 
run_justification -full_sequential -set { 114 1 91 1 } -verbose -store
#current_net:n141 n148 
run_justification -full_sequential -set { 132 1 124 1 } -verbose -store
#current_net:DFF_12_N3 DFF_14_N3 
run_justification -full_sequential -set { 108 0 104 1 } -verbose -store
#current_net:n139 n152 
run_justification -full_sequential -set { 75 1 121 0 } -verbose -store
#current_net:DFF_0_N3 n143 
run_justification -full_sequential -set { 107 1 130 1 } -verbose -store
#current_net:DFF_10_N3 n144 
run_justification -full_sequential -set { 90 0 103 0 } -verbose -store
#current_net:n146 n150 
run_justification -full_sequential -set { 75 1 84 1 } -verbose -store
#current_net:DFF_0_N3 DFF_6_N3 
run_justification -full_sequential -set { 130 1 104 1 } -verbose -store
#current_net:n144 n152 
run_justification -full_sequential -set { 72 1 93 0 } -verbose -store
#current_net:n156 n161 
run_justification -full_sequential -set { 114 1 90 0 } -verbose -store
#current_net:n141 n146 
run_justification -full_sequential -set { 114 1 67 0 } -verbose -store
#current_net:n141 n154 
run_justification -full_sequential -set { 123 0 103 0 } -verbose -store
#current_net:n140 n150 
run_justification -full_sequential -set { 117 1 104 1 } -verbose -store
#current_net:DFF_8_N3 n152 
run_justification -full_sequential -set { 124 1 83 0 } -verbose -store
#current_net:DFF_14_N3 n157 
run_justification -full_sequential -set { 103 0 74 0 } -verbose -store
#current_net:n150 n168 
run_justification -full_sequential -set { 130 1 93 0 } -verbose -store
#current_net:n144 n161 
run_justification -full_sequential -set { 107 1 121 0 } -verbose -store
#current_net:DFF_10_N3 n143 
run_justification -full_sequential -set { 132 1 81 1 } -verbose -store
#current_net:DFF_12_N3 n160 
run_justification -full_sequential -set { 108 0 83 0 } -verbose -store
#current_net:n139 n157 
run_justification -full_sequential -set { 123 0 90 0 } -verbose -store
#current_net:n140 n146 
run_justification -full_sequential -set { 90 0 104 1 } -verbose -store
#current_net:n146 n152 
run_justification -full_sequential -set { 132 1 124 1 } -verbose -store
#current_net:DFF_12_N3 DFF_14_N3 
run_justification -full_sequential -set { 131 0 106 0 } -verbose -store
#current_net:n145 n149 
run_justification -full_sequential -set { 123 0 106 0 } -verbose -store
#current_net:n140 n149 
run_justification -full_sequential -set { 84 1 108 0 } -verbose -store
#current_net:DFF_6_N3 n139 
run_justification -full_sequential -set { 67 0 72 1 } -verbose -store
#current_net:n154 n156 
run_justification -full_sequential -set { 94 1 74 0 } -verbose -store
#current_net:DFF_4_N3 n168 
run_justification -full_sequential -set { 106 0 72 1 } -verbose -store
#current_net:n149 n156 
run_justification -full_sequential -set { 108 0 76 0 } -verbose -store
#current_net:n139 n158 
run_justification -full_sequential -set { 103 0 76 0 } -verbose -store
#current_net:n150 n158 
run_justification -full_sequential -set { 90 0 76 0 } -verbose -store
#current_net:n146 n158 
run_justification -full_sequential -set { 103 0 104 1 } -verbose -store
#current_net:n150 n152 
run_justification -full_sequential -set { 132 1 124 1 } -verbose -store
#current_net:DFF_12_N3 DFF_14_N3 
run_justification -full_sequential -set { 83 0 81 1 } -verbose -store
#current_net:n157 n160 
run_justification -full_sequential -set { 124 1 131 0 } -verbose -store
#current_net:DFF_14_N3 n145 
run_justification -full_sequential -set { 107 1 94 1 } -verbose -store
#current_net:DFF_10_N3 DFF_4_N3 
run_justification -full_sequential -set { 94 1 103 0 } -verbose -store
#current_net:DFF_4_N3 n150 
run_justification -full_sequential -set { 131 0 74 0 } -verbose -store
#current_net:n145 n168 
run_justification -full_sequential -set { 84 1 72 1 } -verbose -store
#current_net:DFF_6_N3 n156 
run_justification -full_sequential -set { 130 1 93 0 } -verbose -store
#current_net:n144 n161 
run_justification -full_sequential -set { 117 1 121 0 } -verbose -store
#current_net:DFF_8_N3 n143 
run_justification -full_sequential -set { 72 1 93 0 } -verbose -store
#current_net:n156 n161 
run_justification -full_sequential -set { 124 1 104 1 } -verbose -store
#current_net:DFF_14_N3 n152 
run_justification -full_sequential -set { 76 0 93 0 } -verbose -store
#current_net:n158 n161 
run_justification -full_sequential -set { 117 1 116 0 } -verbose -store
#current_net:DFF_8_N3 n153 
run_justification -full_sequential -set { 130 1 74 0 } -verbose -store
#current_net:n144 n168 
run_justification -full_sequential -set { 83 0 81 1 } -verbose -store
#current_net:n157 n160 
run_justification -full_sequential -set { 94 1 117 1 } -verbose -store
#current_net:DFF_4_N3 DFF_8_N3 
run_justification -full_sequential -set { 132 1 83 0 } -verbose -store
#current_net:DFF_12_N3 n157 
run_justification -full_sequential -set { 124 1 81 1 } -verbose -store
#current_net:DFF_14_N3 n160 
run_justification -full_sequential -set { 90 0 72 1 } -verbose -store
#current_net:n146 n156 
run_justification -full_sequential -set { 90 0 72 1 } -verbose -store
#current_net:n146 n156 
run_justification -full_sequential -set { 132 1 130 1 } -verbose -store
#current_net:DFF_12_N3 n144 
run_justification -full_sequential -set { 84 1 72 1 } -verbose -store
#current_net:DFF_6_N3 n156 
run_justification -full_sequential -set { 84 1 81 1 } -verbose -store
#current_net:DFF_6_N3 n160 
run_justification -full_sequential -set { 130 1 81 1 } -verbose -store
#current_net:n144 n160 
run_justification -full_sequential -set { 75 1 132 1 } -verbose -store
#current_net:DFF_0_N3 DFF_12_N3 
run_justification -full_sequential -set { 75 1 130 1 } -verbose -store
#current_net:DFF_0_N3 n144 
run_justification -full_sequential -set { 131 0 81 1 } -verbose -store
#current_net:n145 n160 
run_justification -full_sequential -set { 107 1 108 0 } -verbose -store
#current_net:DFF_10_N3 n139 
run_justification -full_sequential -set { 83 0 76 0 } -verbose -store
#current_net:n157 n158 
run_justification -full_sequential -set { 108 0 72 1 } -verbose -store
#current_net:n139 n156 
run_justification -full_sequential -set { 108 0 103 0 } -verbose -store
#current_net:n139 n150 
run_justification -full_sequential -set { 131 0 93 0 } -verbose -store
#current_net:n145 n161 
run_justification -full_sequential -set { 114 1 74 0 } -verbose -store
#current_net:n141 n168 
run_justification -full_sequential -set { 91 1 72 1 } -verbose -store
#current_net:n148 n156 
run_justification -full_sequential -set { 84 1 72 1 } -verbose -store
#current_net:DFF_6_N3 n156 
run_justification -full_sequential -set { 117 1 114 1 } -verbose -store
#current_net:DFF_8_N3 n141 
run_justification -full_sequential -set { 132 1 93 0 } -verbose -store
#current_net:DFF_12_N3 n161 
run_justification -full_sequential -set { 91 1 81 1 } -verbose -store
#current_net:n148 n160 
run_justification -full_sequential -set { 108 0 114 1 } -verbose -store
#current_net:n139 n141 
run_justification -full_sequential -set { 132 1 94 1 } -verbose -store
#current_net:DFF_12_N3 DFF_4_N3 
run_justification -full_sequential -set { 117 1 103 0 } -verbose -store
#current_net:DFF_8_N3 n150 
run_justification -full_sequential -set { 123 0 93 0 } -verbose -store
#current_net:n140 n161 
run_justification -full_sequential -set { 107 1 123 0 } -verbose -store
#current_net:DFF_10_N3 n140 
run_justification -full_sequential -set { 116 0 83 0 } -verbose -store
#current_net:n153 n157 
run_justification -full_sequential -set { 84 1 104 1 } -verbose -store
#current_net:DFF_6_N3 n152 
run_justification -full_sequential -set { 75 1 83 0 } -verbose -store
#current_net:DFF_0_N3 n157 
run_justification -full_sequential -set { 94 1 76 0 } -verbose -store
#current_net:DFF_4_N3 n158 
run_justification -full_sequential -set { 124 1 72 1 } -verbose -store
#current_net:DFF_14_N3 n156 
run_justification -full_sequential -set { 94 1 116 0 } -verbose -store
#current_net:DFF_4_N3 n153 
run_justification -full_sequential -set { 104 1 76 0 } -verbose -store
#current_net:n152 n158 
run_justification -full_sequential -set { 124 1 130 1 } -verbose -store
#current_net:DFF_14_N3 n144 
run_justification -full_sequential -set { 116 0 76 0 } -verbose -store
#current_net:n153 n158 
run_justification -full_sequential -set { 75 1 74 0 } -verbose -store
#current_net:DFF_0_N3 n168 
run_justification -full_sequential -set { 108 0 116 0 } -verbose -store
#current_net:n139 n153 
run_justification -full_sequential -set { 67 0 83 0 } -verbose -store
#current_net:n154 n157 
run_justification -full_sequential -set { 121 0 103 0 } -verbose -store
#current_net:n143 n150 
run_justification -full_sequential -set { 121 0 93 0 } -verbose -store
#current_net:n143 n161 
run_justification -full_sequential -set { 108 0 123 0 } -verbose -store
#current_net:n139 n140 
run_justification -full_sequential -set { 124 1 130 1 } -verbose -store
#current_net:DFF_14_N3 n144 
run_justification -full_sequential -set { 117 1 72 1 } -verbose -store
#current_net:DFF_8_N3 n156 
run_justification -full_sequential -set { 124 1 117 1 } -verbose -store
#current_net:DFF_14_N3 DFF_8_N3 
run_justification -full_sequential -set { 84 1 72 1 } -verbose -store
#current_net:DFF_6_N3 n156 
run_justification -full_sequential -set { 132 1 103 0 } -verbose -store
#current_net:DFF_12_N3 n150 
run_justification -full_sequential -set { 72 1 81 1 } -verbose -store
#current_net:n156 n160 
run_justification -full_sequential -set { 117 1 76 0 } -verbose -store
#current_net:DFF_8_N3 n158 
run_justification -full_sequential -set { 90 0 106 0 } -verbose -store
#current_net:n146 n149 
run_justification -full_sequential -set { 117 1 91 1 } -verbose -store
#current_net:DFF_8_N3 n148 
run_justification -full_sequential -set { 83 0 74 0 } -verbose -store
#current_net:n157 n168 
run_justification -full_sequential -set { 121 0 83 0 } -verbose -store
#current_net:n143 n157 
run_justification -full_sequential -set { 67 0 83 0 } -verbose -store
#current_net:n154 n157 
run_justification -full_sequential -set { 108 0 81 1 } -verbose -store
#current_net:n139 n160 
run_justification -full_sequential -set { 108 0 91 1 } -verbose -store
#current_net:n139 n148 
run_justification -full_sequential -set { 75 1 81 1 } -verbose -store
#current_net:DFF_0_N3 n160 
run_justification -full_sequential -set { 90 0 93 0 } -verbose -store
#current_net:n146 n161 
run_justification -full_sequential -set { 94 1 116 0 } -verbose -store
#current_net:DFF_4_N3 n153 
run_justification -full_sequential -set { 121 0 81 1 } -verbose -store
#current_net:n143 n160 
run_justification -full_sequential -set { 106 0 81 1 } -verbose -store
#current_net:n149 n160 
run_justification -full_sequential -set { 94 1 121 0 } -verbose -store
#current_net:DFF_4_N3 n143 
run_justification -full_sequential -set { 117 1 67 0 } -verbose -store
#current_net:DFF_8_N3 n154 
run_justification -full_sequential -set { 108 0 67 0 } -verbose -store
#current_net:n139 n154 
run_justification -full_sequential -set { 131 0 106 0 } -verbose -store
#current_net:n145 n149 
run_justification -full_sequential -set { 123 0 103 0 } -verbose -store
#current_net:n140 n150 
run_justification -full_sequential -set { 104 1 74 0 } -verbose -store
#current_net:n152 n168 
run_justification -full_sequential -set { 67 0 81 1 } -verbose -store
#current_net:n154 n160 
run_justification -full_sequential -set { 75 1 108 0 } -verbose -store
#current_net:DFF_0_N3 n139 
run_justification -full_sequential -set { 94 1 123 0 } -verbose -store
#current_net:DFF_4_N3 n140 
run_justification -full_sequential -set { 94 1 76 0 } -verbose -store
#current_net:DFF_4_N3 n158 
run_justification -full_sequential -set { 106 0 93 0 } -verbose -store
#current_net:n149 n161 
run_justification -full_sequential -set { 132 1 72 1 } -verbose -store
#current_net:DFF_12_N3 n156 
run_justification -full_sequential -set { 75 1 76 0 } -verbose -store
#current_net:DFF_0_N3 n158 
run_justification -full_sequential -set { 84 1 117 1 } -verbose -store
#current_net:DFF_6_N3 DFF_8_N3 
run_justification -full_sequential -set { 108 0 90 0 } -verbose -store
#current_net:n139 n146 
run_justification -full_sequential -set { 94 1 72 1 } -verbose -store
#current_net:DFF_4_N3 n156 
run_justification -full_sequential -set { 114 1 116 0 } -verbose -store
#current_net:n141 n153 
run_justification -full_sequential -set { 116 0 76 0 } -verbose -store
#current_net:n153 n158 
run_justification -full_sequential -set { 132 1 94 1 } -verbose -store
#current_net:DFF_12_N3 DFF_4_N3 
run_justification -full_sequential -set { 117 1 93 0 } -verbose -store
#current_net:DFF_8_N3 n161 
run_justification -full_sequential -set { 76 0 74 0 } -verbose -store
#current_net:n158 n168 
run_justification -full_sequential -set { 107 1 81 1 } -verbose -store
#current_net:DFF_10_N3 n160 
run_justification -full_sequential -set { 106 0 104 1 } -verbose -store
#current_net:n149 n152 
run_justification -full_sequential -set { 94 1 72 1 } -verbose -store
#current_net:DFF_4_N3 n156 
run_justification -full_sequential -set { 131 0 74 0 } -verbose -store
#current_net:n145 n168 
run_justification -full_sequential -set { 124 1 104 1 } -verbose -store
#current_net:DFF_14_N3 n152 
run_justification -full_sequential -set { 123 0 72 1 } -verbose -store
#current_net:n140 n156 
run_justification -full_sequential -set { 108 0 130 1 } -verbose -store
#current_net:n139 n144 
run_justification -full_sequential -set { 91 1 67 0 } -verbose -store
#current_net:n148 n154 
run_justification -full_sequential -set { 123 0 72 1 } -verbose -store
#current_net:n140 n156 
run_justification -full_sequential -set { 94 1 93 0 } -verbose -store
#current_net:DFF_4_N3 n161 
run_justification -full_sequential -set { 114 1 72 1 } -verbose -store
#current_net:n141 n156 
run_justification -full_sequential -set { 104 1 81 1 } -verbose -store
#current_net:n152 n160 
run_justification -full_sequential -set { 106 0 81 1 } -verbose -store
#current_net:n149 n160 
run_justification -full_sequential -set { 72 1 76 0 } -verbose -store
#current_net:n156 n158 
run_justification -full_sequential -set { 72 1 81 1 } -verbose -store
#current_net:n156 n160 
run_justification -full_sequential -set { 84 1 72 1 } -verbose -store
#current_net:DFF_6_N3 n156 
run_justification -full_sequential -set { 104 1 81 1 } -verbose -store
#current_net:n152 n160 
run_justification -full_sequential -set { 91 1 103 0 } -verbose -store
#current_net:n148 n150 
run_justification -full_sequential -set { 94 1 76 0 } -verbose -store
#current_net:DFF_4_N3 n158 
run_justification -full_sequential -set { 117 1 67 0 } -verbose -store
#current_net:DFF_8_N3 n154 
run_justification -full_sequential -set { 67 0 72 1 } -verbose -store
#current_net:n154 n156 
run_justification -full_sequential -set { 130 1 106 0 } -verbose -store
#current_net:n144 n149 
run_justification -full_sequential -set { 84 1 74 0 } -verbose -store
#current_net:DFF_6_N3 n168 
run_justification -full_sequential -set { 121 0 91 1 } -verbose -store
#current_net:n143 n148 
run_justification -full_sequential -set { 123 0 72 1 } -verbose -store
#current_net:n140 n156 
run_justification -full_sequential -set { 75 1 83 0 } -verbose -store
#current_net:DFF_0_N3 n157 
run_justification -full_sequential -set { 84 1 76 0 } -verbose -store
#current_net:DFF_6_N3 n158 
run_justification -full_sequential -set { 67 0 83 0 } -verbose -store
#current_net:n154 n157 
run_justification -full_sequential -set { 132 1 103 0 } -verbose -store
#current_net:DFF_12_N3 n150 
run_justification -full_sequential -set { 124 1 81 1 } -verbose -store
#current_net:DFF_14_N3 n160 
run_justification -full_sequential -set { 131 0 91 1 } -verbose -store
#current_net:n145 n148 
run_justification -full_sequential -set { 117 1 104 1 } -verbose -store
#current_net:DFF_8_N3 n152 
run_justification -full_sequential -set { 94 1 131 0 } -verbose -store
#current_net:DFF_4_N3 n145 
run_justification -full_sequential -set { 91 1 116 0 } -verbose -store
#current_net:n148 n153 
run_justification -full_sequential -set { 90 0 116 0 } -verbose -store
#current_net:n146 n153 
run_justification -full_sequential -set { 124 1 83 0 } -verbose -store
#current_net:DFF_14_N3 n157 
run_justification -full_sequential -set { 107 1 106 0 } -verbose -store
#current_net:DFF_10_N3 n149 
run_justification -full_sequential -set { 117 1 123 0 } -verbose -store
#current_net:DFF_8_N3 n140 
run_justification -full_sequential -set { 116 0 72 1 } -verbose -store
#current_net:n153 n156 
run_justification -full_sequential -set { 123 0 67 0 } -verbose -store
#current_net:n140 n154 
run_justification -full_sequential -set { 104 1 116 0 } -verbose -store
#current_net:n152 n153 
run_justification -full_sequential -set { 108 0 116 0 } -verbose -store
#current_net:n139 n153 
run_justification -full_sequential -set { 108 0 121 0 } -verbose -store
#current_net:n139 n143 
run_justification -full_sequential -set { 132 1 72 1 } -verbose -store
#current_net:DFF_12_N3 n156 
run_justification -full_sequential -set { 114 1 131 0 } -verbose -store
#current_net:n141 n145 
run_justification -full_sequential -set { 84 1 67 0 } -verbose -store
#current_net:DFF_6_N3 n154 
run_justification -full_sequential -set { 116 0 74 0 } -verbose -store
#current_net:n153 n168 
run_justification -full_sequential -set { 131 0 90 0 } -verbose -store
#current_net:n145 n146 
run_justification -full_sequential -set { 75 1 132 1 } -verbose -store
#current_net:DFF_0_N3 DFF_12_N3 
run_justification -full_sequential -set { 107 1 117 1 } -verbose -store
#current_net:DFF_10_N3 DFF_8_N3 
run_justification -full_sequential -set { 130 1 76 0 } -verbose -store
#current_net:n144 n158 
run_justification -full_sequential -set { 91 1 67 0 } -verbose -store
#current_net:n148 n154 
run_justification -full_sequential -set { 84 1 131 0 } -verbose -store
#current_net:DFF_6_N3 n145 
run_justification -full_sequential -set { 94 1 108 0 } -verbose -store
#current_net:DFF_4_N3 n139 
run_justification -full_sequential -set { 91 1 83 0 } -verbose -store
#current_net:n148 n157 
run_justification -full_sequential -set { 123 0 72 1 } -verbose -store
#current_net:n140 n156 
run_justification -full_sequential -set { 132 1 103 0 } -verbose -store
#current_net:DFF_12_N3 n150 
run_justification -full_sequential -set { 131 0 72 1 } -verbose -store
#current_net:n145 n156 
run_justification -full_sequential -set { 121 0 72 1 } -verbose -store
#current_net:n143 n156 
run_justification -full_sequential -set { 124 1 94 1 } -verbose -store
#current_net:DFF_14_N3 DFF_4_N3 
run_justification -full_sequential -set { 132 1 67 0 } -verbose -store
#current_net:DFF_12_N3 n154 
run_justification -full_sequential -set { 114 1 83 0 } -verbose -store
#current_net:n141 n157 
run_justification -full_sequential -set { 132 1 108 0 } -verbose -store
#current_net:DFF_12_N3 n139 
run_justification -full_sequential -set { 123 0 67 0 } -verbose -store
#current_net:n140 n154 
run_justification -full_sequential -set { 90 0 72 1 } -verbose -store
#current_net:n146 n156 
run_justification -full_sequential -set { 108 0 93 0 } -verbose -store
#current_net:n139 n161 
run_justification -full_sequential -set { 124 1 121 0 } -verbose -store
#current_net:DFF_14_N3 n143 
run_justification -full_sequential -set { 75 1 114 1 } -verbose -store
#current_net:DFF_0_N3 n141 
run_justification -full_sequential -set { 106 0 74 0 } -verbose -store
#current_net:n149 n168 
run_justification -full_sequential -set { 123 0 131 0 } -verbose -store
#current_net:n140 n145 
run_justification -full_sequential -set { 104 1 83 0 } -verbose -store
#current_net:n152 n157 
run_justification -full_sequential -set { 130 1 103 0 } -verbose -store
#current_net:n144 n150 
run_justification -full_sequential -set { 108 0 81 1 } -verbose -store
#current_net:n139 n160 
run_justification -full_sequential -set { 116 0 81 1 } -verbose -store
#current_net:n153 n160 
run_justification -full_sequential -set { 103 0 93 0 } -verbose -store
#current_net:n150 n161 
run_justification -full_sequential -set { 83 0 76 0 } -verbose -store
#current_net:n157 n158 
run_justification -full_sequential -set { 94 1 104 1 } -verbose -store
#current_net:DFF_4_N3 n152 
run_justification -full_sequential -set { 75 1 132 1 } -verbose -store
#current_net:DFF_0_N3 DFF_12_N3 
run_justification -full_sequential -set { 114 1 67 0 } -verbose -store
#current_net:n141 n154 
run_justification -full_sequential -set { 107 1 72 1 } -verbose -store
#current_net:DFF_10_N3 n156 
run_justification -full_sequential -set { 108 0 74 0 } -verbose -store
#current_net:n139 n168 
run_justification -full_sequential -set { 132 1 106 0 } -verbose -store
#current_net:DFF_12_N3 n149 
run_justification -full_sequential -set { 123 0 104 1 } -verbose -store
#current_net:n140 n152 
run_justification -full_sequential -set { 124 1 106 0 } -verbose -store
#current_net:DFF_14_N3 n149 
run_justification -full_sequential -set { 131 0 83 0 } -verbose -store
#current_net:n145 n157 
run_justification -full_sequential -set { 107 1 117 1 } -verbose -store
#current_net:DFF_10_N3 DFF_8_N3 
run_justification -full_sequential -set { 107 1 67 0 } -verbose -store
#current_net:DFF_10_N3 n154 
run_justification -full_sequential -set { 123 0 114 1 } -verbose -store
#current_net:n140 n141 
run_justification -full_sequential -set { 117 1 116 0 } -verbose -store
#current_net:DFF_8_N3 n153 
run_justification -full_sequential -set { 91 1 103 0 } -verbose -store
#current_net:n148 n150 
run_justification -full_sequential -set { 123 0 121 0 } -verbose -store
#current_net:n140 n143 
run_justification -full_sequential -set { 130 1 116 0 } -verbose -store
#current_net:n144 n153 
run_justification -full_sequential -set { 117 1 83 0 } -verbose -store
#current_net:DFF_8_N3 n157 
run_justification -full_sequential -set { 90 0 104 1 } -verbose -store
#current_net:n146 n152 
run_justification -full_sequential -set { 132 1 94 1 } -verbose -store
#current_net:DFF_12_N3 DFF_4_N3 
run_justification -full_sequential -set { 123 0 67 0 } -verbose -store
#current_net:n140 n154 
run_justification -full_sequential -set { 94 1 67 0 } -verbose -store
#current_net:DFF_4_N3 n154 
run_justification -full_sequential -set { 114 1 81 1 } -verbose -store
#current_net:n141 n160 
run_justification -full_sequential -set { 117 1 81 1 } -verbose -store
#current_net:DFF_8_N3 n160 
run_justification -full_sequential -set { 84 1 117 1 } -verbose -store
#current_net:DFF_6_N3 DFF_8_N3 
run_justification -full_sequential -set { 107 1 76 0 } -verbose -store
#current_net:DFF_10_N3 n158 
run_justification -full_sequential -set { 90 0 67 0 } -verbose -store
#current_net:n146 n154 
run_justification -full_sequential -set { 90 0 76 0 } -verbose -store
#current_net:n146 n158 
run_justification -full_sequential -set { 84 1 123 0 } -verbose -store
#current_net:DFF_6_N3 n140 
run_justification -full_sequential -set { 106 0 104 1 } -verbose -store
#current_net:n149 n152 
run_justification -full_sequential -set { 94 1 84 1 } -verbose -store
#current_net:DFF_4_N3 DFF_6_N3 
run_justification -full_sequential -set { 103 0 72 1 } -verbose -store
#current_net:n150 n156 
run_justification -full_sequential -set { 75 1 106 0 } -verbose -store
#current_net:DFF_0_N3 n149 
run_justification -full_sequential -set { 121 0 72 1 } -verbose -store
#current_net:n143 n156 
run_justification -full_sequential -set { 107 1 67 0 } -verbose -store
#current_net:DFF_10_N3 n154 
run_justification -full_sequential -set { 72 1 74 0 } -verbose -store
#current_net:n156 n168 
run_justification -full_sequential -set { 116 0 83 0 } -verbose -store
#current_net:n153 n157 
run_justification -full_sequential -set { 94 1 117 1 } -verbose -store
#current_net:DFF_4_N3 DFF_8_N3 
run_justification -full_sequential -set { 117 1 90 0 } -verbose -store
#current_net:DFF_8_N3 n146 
run_justification -full_sequential -set { 130 1 76 0 } -verbose -store
#current_net:n144 n158 
run_justification -full_sequential -set { 121 0 83 0 } -verbose -store
#current_net:n143 n157 
run_justification -full_sequential -set { 91 1 81 1 } -verbose -store
#current_net:n148 n160 
run_justification -full_sequential -set { 124 1 123 0 } -verbose -store
#current_net:DFF_14_N3 n140 
run_justification -full_sequential -set { 131 0 67 0 } -verbose -store
#current_net:n145 n154 
run_justification -full_sequential -set { 121 0 90 0 } -verbose -store
#current_net:n143 n146 
run_justification -full_sequential -set { 124 1 90 0 } -verbose -store
#current_net:DFF_14_N3 n146 
run_justification -full_sequential -set { 103 0 83 0 } -verbose -store
#current_net:n150 n157 
run_justification -full_sequential -set { 114 1 121 0 } -verbose -store
#current_net:n141 n143 
run_justification -full_sequential -set { 124 1 116 0 } -verbose -store
#current_net:DFF_14_N3 n153 
run_justification -full_sequential -set { 108 0 67 0 } -verbose -store
#current_net:n139 n154 
run_justification -full_sequential -set { 124 1 93 0 } -verbose -store
#current_net:DFF_14_N3 n161 
run_justification -full_sequential -set { 94 1 103 0 } -verbose -store
#current_net:DFF_4_N3 n150 
run_justification -full_sequential -set { 108 0 104 1 } -verbose -store
#current_net:n139 n152 
run_justification -full_sequential -set { 84 1 121 0 } -verbose -store
#current_net:DFF_6_N3 n143 
run_justification -full_sequential -set { 116 0 72 1 } -verbose -store
#current_net:n153 n156 
run_justification -full_sequential -set { 121 0 90 0 } -verbose -store
#current_net:n143 n146 
run_justification -full_sequential -set { 132 1 93 0 } -verbose -store
#current_net:DFF_12_N3 n161 
run_justification -full_sequential -set { 106 0 81 1 } -verbose -store
#current_net:n149 n160 
run_justification -full_sequential -set { 132 1 117 1 } -verbose -store
#current_net:DFF_12_N3 DFF_8_N3 
run_justification -full_sequential -set { 123 0 74 0 } -verbose -store
#current_net:n140 n168 
run_justification -full_sequential -set { 117 1 74 0 } -verbose -store
#current_net:DFF_8_N3 n168 
run_justification -full_sequential -set { 121 0 116 0 } -verbose -store
#current_net:n143 n153 
run_justification -full_sequential -set { 107 1 114 1 } -verbose -store
#current_net:DFF_10_N3 n141 
run_justification -full_sequential -set { 93 0 74 0 } -verbose -store
#current_net:n161 n168 
run_justification -full_sequential -set { 117 1 81 1 } -verbose -store
#current_net:DFF_8_N3 n160 
run_justification -full_sequential -set { 84 1 93 0 } -verbose -store
#current_net:DFF_6_N3 n161 
run_justification -full_sequential -set { 117 1 91 1 } -verbose -store
#current_net:DFF_8_N3 n148 
run_justification -full_sequential -set { 84 1 67 0 } -verbose -store
#current_net:DFF_6_N3 n154 
run_justification -full_sequential -set { 75 1 90 0 } -verbose -store
#current_net:DFF_0_N3 n146 
run_justification -full_sequential -set { 108 0 123 0 } -verbose -store
#current_net:n139 n140 
run_justification -full_sequential -set { 108 0 91 1 } -verbose -store
#current_net:n139 n148 
run_justification -full_sequential -set { 75 1 106 0 } -verbose -store
#current_net:DFF_0_N3 n149 
run_justification -full_sequential -set { 132 1 74 0 } -verbose -store
#current_net:DFF_12_N3 n168 
run_justification -full_sequential -set { 75 1 76 0 } -verbose -store
#current_net:DFF_0_N3 n158 
run_justification -full_sequential -set { 67 0 74 0 } -verbose -store
#current_net:n154 n168 
run_justification -full_sequential -set { 117 1 130 1 } -verbose -store
#current_net:DFF_8_N3 n144 
run_justification -full_sequential -set { 67 0 76 0 } -verbose -store
#current_net:n154 n158 
run_justification -full_sequential -set { 81 1 93 0 } -verbose -store
#current_net:n160 n161 
run_justification -full_sequential -set { 121 0 72 1 } -verbose -store
#current_net:n143 n156 
run_justification -full_sequential -set { 123 0 90 0 } -verbose -store
#current_net:n140 n146 
run_justification -full_sequential -set { 124 1 131 0 } -verbose -store
#current_net:DFF_14_N3 n145 
run_justification -full_sequential -set { 76 0 93 0 } -verbose -store
#current_net:n158 n161 
run_justification -full_sequential -set { 132 1 116 0 } -verbose -store
#current_net:DFF_12_N3 n153 
run_justification -full_sequential -set { 76 0 93 0 } -verbose -store
#current_net:n158 n161 
run_justification -full_sequential -set { 94 1 93 0 } -verbose -store
#current_net:DFF_4_N3 n161 
run_justification -full_sequential -set { 124 1 131 0 } -verbose -store
#current_net:DFF_14_N3 n145 
run_justification -full_sequential -set { 90 0 104 1 } -verbose -store
#current_net:n146 n152 
run_justification -full_sequential -set { 67 0 81 1 } -verbose -store
#current_net:n154 n160 
run_justification -full_sequential -set { 72 1 83 0 } -verbose -store
#current_net:n156 n157 
run_justification -full_sequential -set { 114 1 93 0 } -verbose -store
#current_net:n141 n161 
run_justification -full_sequential -set { 94 1 130 1 } -verbose -store
#current_net:DFF_4_N3 n144 
run_justification -full_sequential -set { 81 1 93 0 } -verbose -store
#current_net:n160 n161 
run_justification -full_sequential -set { 132 1 131 0 } -verbose -store
#current_net:DFF_12_N3 n145 
run_justification -full_sequential -set { 123 0 116 0 } -verbose -store
#current_net:n140 n153 
run_justification -full_sequential -set { 91 1 116 0 } -verbose -store
#current_net:n148 n153 
run_justification -full_sequential -set { 108 0 90 0 } -verbose -store
#current_net:n139 n146 
run_justification -full_sequential -set { 75 1 93 0 } -verbose -store
#current_net:DFF_0_N3 n161 
run_justification -full_sequential -set { 130 1 83 0 } -verbose -store
#current_net:n144 n157 
run_justification -full_sequential -set { 123 0 103 0 } -verbose -store
#current_net:n140 n150 
run_justification -full_sequential -set { 108 0 130 1 } -verbose -store
#current_net:n139 n144 
run_justification -full_sequential -set { 103 0 81 1 } -verbose -store
#current_net:n150 n160 
run_justification -full_sequential -set { 117 1 121 0 } -verbose -store
#current_net:DFF_8_N3 n143 
run_justification -full_sequential -set { 76 0 74 0 } -verbose -store
#current_net:n158 n168 
run_justification -full_sequential -set { 108 0 103 0 } -verbose -store
#current_net:n139 n150 
run_justification -full_sequential -set { 106 0 104 1 } -verbose -store
#current_net:n149 n152 
run_justification -full_sequential -set { 132 1 116 0 } -verbose -store
#current_net:DFF_12_N3 n153 
run_justification -full_sequential -set { 117 1 83 0 } -verbose -store
#current_net:DFF_8_N3 n157 
run_justification -full_sequential -set { 132 1 91 1 } -verbose -store
#current_net:DFF_12_N3 n148 
run_justification -full_sequential -set { 91 1 72 1 } -verbose -store
#current_net:n148 n156 
run_justification -full_sequential -set { 75 1 103 0 } -verbose -store
#current_net:DFF_0_N3 n150 
run_justification -full_sequential -set { 107 1 81 1 } -verbose -store
#current_net:DFF_10_N3 n160 
run_justification -full_sequential -set { 75 1 106 0 } -verbose -store
#current_net:DFF_0_N3 n149 
run_justification -full_sequential -set { 90 0 67 0 } -verbose -store
#current_net:n146 n154 
run_justification -full_sequential -set { 106 0 116 0 } -verbose -store
#current_net:n149 n153 
run_justification -full_sequential -set { 107 1 81 1 } -verbose -store
#current_net:DFF_10_N3 n160 
run_justification -full_sequential -set { 94 1 103 0 } -verbose -store
#current_net:DFF_4_N3 n150 
run_justification -full_sequential -set { 124 1 74 0 } -verbose -store
#current_net:DFF_14_N3 n168 
run_justification -full_sequential -set { 104 1 83 0 } -verbose -store
#current_net:n152 n157 
run_justification -full_sequential -set { 124 1 81 1 } -verbose -store
#current_net:DFF_14_N3 n160 
run_justification -full_sequential -set { 84 1 131 0 } -verbose -store
#current_net:DFF_6_N3 n145 
run_justification -full_sequential -set { 117 1 104 1 } -verbose -store
#current_net:DFF_8_N3 n152 
run_justification -full_sequential -set { 90 0 116 0 } -verbose -store
#current_net:n146 n153 
run_justification -full_sequential -set { 94 1 91 1 } -verbose -store
#current_net:DFF_4_N3 n148 
run_justification -full_sequential -set { 75 1 83 0 } -verbose -store
#current_net:DFF_0_N3 n157 
run_justification -full_sequential -set { 107 1 90 0 } -verbose -store
#current_net:DFF_10_N3 n146 
run_justification -full_sequential -set { 103 0 116 0 } -verbose -store
#current_net:n150 n153 
run_justification -full_sequential -set { 124 1 67 0 } -verbose -store
#current_net:DFF_14_N3 n154 
run_justification -full_sequential -set { 76 0 74 0 } -verbose -store
#current_net:n158 n168 
run_justification -full_sequential -set { 121 0 130 1 } -verbose -store
#current_net:n143 n144 
run_justification -full_sequential -set { 67 0 74 0 } -verbose -store
#current_net:n154 n168 
run_justification -full_sequential -set { 107 1 93 0 } -verbose -store
#current_net:DFF_10_N3 n161 
run_justification -full_sequential -set { 107 1 91 1 } -verbose -store
#current_net:DFF_10_N3 n148 
run_justification -full_sequential -set { 121 0 104 1 } -verbose -store
#current_net:n143 n152 
run_justification -full_sequential -set { 107 1 108 0 } -verbose -store
#current_net:DFF_10_N3 n139 
run_justification -full_sequential -set { 123 0 81 1 } -verbose -store
#current_net:n140 n160 
run_justification -full_sequential -set { 124 1 103 0 } -verbose -store
#current_net:DFF_14_N3 n150 
run_justification -full_sequential -set { 108 0 116 0 } -verbose -store
#current_net:n139 n153 
run_justification -full_sequential -set { 75 1 107 1 } -verbose -store
#current_net:DFF_0_N3 DFF_10_N3 
run_justification -full_sequential -set { 114 1 81 1 } -verbose -store
#current_net:n141 n160 
run_justification -full_sequential -set { 104 1 67 0 } -verbose -store
#current_net:n152 n154 
run_justification -full_sequential -set { 67 0 93 0 } -verbose -store
#current_net:n154 n161 
run_justification -full_sequential -set { 117 1 81 1 } -verbose -store
#current_net:DFF_8_N3 n160 
run_justification -full_sequential -set { 104 1 83 0 } -verbose -store
#current_net:n152 n157 
run_justification -full_sequential -set { 132 1 84 1 } -verbose -store
#current_net:DFF_12_N3 DFF_6_N3 
run_justification -full_sequential -set { 106 0 76 0 } -verbose -store
#current_net:n149 n158 
run_justification -full_sequential -set { 123 0 83 0 } -verbose -store
#current_net:n140 n157 
run_justification -full_sequential -set { 94 1 123 0 } -verbose -store
#current_net:DFF_4_N3 n140 
run_justification -full_sequential -set { 108 0 72 1 } -verbose -store
#current_net:n139 n156 
run_justification -full_sequential -set { 131 0 93 0 } -verbose -store
#current_net:n145 n161 
run_justification -full_sequential -set { 121 0 93 0 } -verbose -store
#current_net:n143 n161 
run_justification -full_sequential -set { 123 0 93 0 } -verbose -store
#current_net:n140 n161 
run_justification -full_sequential -set { 124 1 131 0 } -verbose -store
#current_net:DFF_14_N3 n145 
run_justification -full_sequential -set { 117 1 116 0 } -verbose -store
#current_net:DFF_8_N3 n153 
run_justification -full_sequential -set { 117 1 121 0 } -verbose -store
#current_net:DFF_8_N3 n143 
run_justification -full_sequential -set { 108 0 83 0 } -verbose -store
#current_net:n139 n157 
run_justification -full_sequential -set { 130 1 131 0 } -verbose -store
#current_net:n144 n145 
run_justification -full_sequential -set { 123 0 103 0 } -verbose -store
#current_net:n140 n150 
run_justification -full_sequential -set { 75 1 94 1 } -verbose -store
#current_net:DFF_0_N3 DFF_4_N3 
run_justification -full_sequential -set { 103 0 76 0 } -verbose -store
#current_net:n150 n158 
run_justification -full_sequential -set { 94 1 81 1 } -verbose -store
#current_net:DFF_4_N3 n160 
run_justification -full_sequential -set { 75 1 93 0 } -verbose -store
#current_net:DFF_0_N3 n161 
run_justification -full_sequential -set { 116 0 93 0 } -verbose -store
#current_net:n153 n161 
run_justification -full_sequential -set { 114 1 90 0 } -verbose -store
#current_net:n141 n146 
run_justification -full_sequential -set { 123 0 116 0 } -verbose -store
#current_net:n140 n153 
run_justification -full_sequential -set { 121 0 106 0 } -verbose -store
#current_net:n143 n149 
run_justification -full_sequential -set { 117 1 123 0 } -verbose -store
#current_net:DFF_8_N3 n140 
run_justification -full_sequential -set { 130 1 72 1 } -verbose -store
#current_net:n144 n156 
run_justification -full_sequential -set { 94 1 123 0 } -verbose -store
#current_net:DFF_4_N3 n140 
run_justification -full_sequential -set { 123 0 131 0 } -verbose -store
#current_net:n140 n145 
run_justification -full_sequential -set { 107 1 94 1 } -verbose -store
#current_net:DFF_10_N3 DFF_4_N3 
run_justification -full_sequential -set { 84 1 76 0 } -verbose -store
#current_net:DFF_6_N3 n158 
run_justification -full_sequential -set { 108 0 130 1 } -verbose -store
#current_net:n139 n144 
run_justification -full_sequential -set { 131 0 93 0 } -verbose -store
#current_net:n145 n161 
run_justification -full_sequential -set { 123 0 103 0 } -verbose -store
#current_net:n140 n150 
run_justification -full_sequential -set { 84 1 108 0 } -verbose -store
#current_net:DFF_6_N3 n139 
run_justification -full_sequential -set { 114 1 83 0 } -verbose -store
#current_net:n141 n157 
run_justification -full_sequential -set { 130 1 104 1 } -verbose -store
#current_net:n144 n152 
run_justification -full_sequential -set { 75 1 90 0 } -verbose -store
#current_net:DFF_0_N3 n146 
run_justification -full_sequential -set { 94 1 90 0 } -verbose -store
#current_net:DFF_4_N3 n146 
run_justification -full_sequential -set { 90 0 72 1 } -verbose -store
#current_net:n146 n156 
run_justification -full_sequential -set { 130 1 106 0 } -verbose -store
#current_net:n144 n149 
run_justification -full_sequential -set { 131 0 81 1 } -verbose -store
#current_net:n145 n160 
run_justification -full_sequential -set { 106 0 93 0 } -verbose -store
#current_net:n149 n161 
run_justification -full_sequential -set { 94 1 91 1 } -verbose -store
#current_net:DFF_4_N3 n148 
run_justification -full_sequential -set { 123 0 91 1 } -verbose -store
#current_net:n140 n148 
run_justification -full_sequential -set { 94 1 84 1 } -verbose -store
#current_net:DFF_4_N3 DFF_6_N3 
run_justification -full_sequential -set { 75 1 104 1 } -verbose -store
#current_net:DFF_0_N3 n152 
run_justification -full_sequential -set { 107 1 130 1 } -verbose -store
#current_net:DFF_10_N3 n144 
run_justification -full_sequential -set { 132 1 67 0 } -verbose -store
#current_net:DFF_12_N3 n154 
run_justification -full_sequential -set { 94 1 93 0 } -verbose -store
#current_net:DFF_4_N3 n161 
run_justification -full_sequential -set { 90 0 83 0 } -verbose -store
#current_net:n146 n157 
run_justification -full_sequential -set { 103 0 104 1 } -verbose -store
#current_net:n150 n152 
run_justification -full_sequential -set { 117 1 90 0 } -verbose -store
#current_net:DFF_8_N3 n146 
run_justification -full_sequential -set { 132 1 94 1 } -verbose -store
#current_net:DFF_12_N3 DFF_4_N3 
run_justification -full_sequential -set { 91 1 106 0 } -verbose -store
#current_net:n148 n149 
run_justification -full_sequential -set { 91 1 81 1 } -verbose -store
#current_net:n148 n160 
run_justification -full_sequential -set { 117 1 108 0 } -verbose -store
#current_net:DFF_8_N3 n139 
run_justification -full_sequential -set { 132 1 123 0 } -verbose -store
#current_net:DFF_12_N3 n140 
run_justification -full_sequential -set { 117 1 131 0 } -verbose -store
#current_net:DFF_8_N3 n145 
run_justification -full_sequential -set { 124 1 104 1 } -verbose -store
#current_net:DFF_14_N3 n152 
run_justification -full_sequential -set { 94 1 67 0 } -verbose -store
#current_net:DFF_4_N3 n154 
run_justification -full_sequential -set { 107 1 91 1 } -verbose -store
#current_net:DFF_10_N3 n148 
run_justification -full_sequential -set { 121 0 81 1 } -verbose -store
#current_net:n143 n160 
run_justification -full_sequential -set { 72 1 76 0 } -verbose -store
#current_net:n156 n158 
run_justification -full_sequential -set { 132 1 106 0 } -verbose -store
#current_net:DFF_12_N3 n149 
run_justification -full_sequential -set { 76 0 93 0 } -verbose -store
#current_net:n158 n161 
run_justification -full_sequential -set { 91 1 76 0 } -verbose -store
#current_net:n148 n158 
run_justification -full_sequential -set { 108 0 67 0 } -verbose -store
#current_net:n139 n154 
run_justification -full_sequential -set { 132 1 74 0 } -verbose -store
#current_net:DFF_12_N3 n168 
run_justification -full_sequential -set { 84 1 67 0 } -verbose -store
#current_net:DFF_6_N3 n154 
run_justification -full_sequential -set { 124 1 76 0 } -verbose -store
#current_net:DFF_14_N3 n158 
run_justification -full_sequential -set { 123 0 90 0 } -verbose -store
#current_net:n140 n146 
run_justification -full_sequential -set { 132 1 72 1 } -verbose -store
#current_net:DFF_12_N3 n156 
run_justification -full_sequential -set { 75 1 121 0 } -verbose -store
#current_net:DFF_0_N3 n143 
run_justification -full_sequential -set { 124 1 91 1 } -verbose -store
#current_net:DFF_14_N3 n148 
run_justification -full_sequential -set { 132 1 131 0 } -verbose -store
#current_net:DFF_12_N3 n145 
run_justification -full_sequential -set { 131 0 67 0 } -verbose -store
#current_net:n145 n154 
run_justification -full_sequential -set { 104 1 93 0 } -verbose -store
#current_net:n152 n161 
run_justification -full_sequential -set { 81 1 74 0 } -verbose -store
#current_net:n160 n168 
run_justification -full_sequential -set { 75 1 72 1 } -verbose -store
#current_net:DFF_0_N3 n156 
run_justification -full_sequential -set { 130 1 93 0 } -verbose -store
#current_net:n144 n161 
run_justification -full_sequential -set { 94 1 104 1 } -verbose -store
#current_net:DFF_4_N3 n152 
run_justification -full_sequential -set { 121 0 130 1 } -verbose -store
#current_net:n143 n144 
run_justification -full_sequential -set { 107 1 131 0 } -verbose -store
#current_net:DFF_10_N3 n145 
run_justification -full_sequential -set { 132 1 91 1 } -verbose -store
#current_net:DFF_12_N3 n148 
run_justification -full_sequential -set { 117 1 121 0 } -verbose -store
#current_net:DFF_8_N3 n143 
run_justification -full_sequential -set { 103 0 72 1 } -verbose -store
#current_net:n150 n156 
run_justification -full_sequential -set { 132 1 91 1 } -verbose -store
#current_net:DFF_12_N3 n148 
run_justification -full_sequential -set { 106 0 76 0 } -verbose -store
#current_net:n149 n158 
run_justification -full_sequential -set { 107 1 123 0 } -verbose -store
#current_net:DFF_10_N3 n140 
run_justification -full_sequential -set { 75 1 84 1 } -verbose -store
#current_net:DFF_0_N3 DFF_6_N3 
run_justification -full_sequential -set { 117 1 74 0 } -verbose -store
#current_net:DFF_8_N3 n168 
run_justification -full_sequential -set { 84 1 130 1 } -verbose -store
#current_net:DFF_6_N3 n144 
run_justification -full_sequential -set { 107 1 83 0 } -verbose -store
#current_net:DFF_10_N3 n157 
run_justification -full_sequential -set { 107 1 131 0 } -verbose -store
#current_net:DFF_10_N3 n145 
run_justification -full_sequential -set { 123 0 116 0 } -verbose -store
#current_net:n140 n153 
run_justification -full_sequential -set { 124 1 81 1 } -verbose -store
#current_net:DFF_14_N3 n160 
run_justification -full_sequential -set { 114 1 76 0 } -verbose -store
#current_net:n141 n158 
run_justification -full_sequential -set { 90 0 72 1 } -verbose -store
#current_net:n146 n156 
run_justification -full_sequential -set { 75 1 123 0 } -verbose -store
#current_net:DFF_0_N3 n140 
run_justification -full_sequential -set { 84 1 81 1 } -verbose -store
#current_net:DFF_6_N3 n160 
run_justification -full_sequential -set { 76 0 74 0 } -verbose -store
#current_net:n158 n168 
run_justification -full_sequential -set { 114 1 131 0 } -verbose -store
#current_net:n141 n145 
run_justification -full_sequential -set { 91 1 72 1 } -verbose -store
#current_net:n148 n156 
run_justification -full_sequential -set { 123 0 104 1 } -verbose -store
#current_net:n140 n152 
run_justification -full_sequential -set { 132 1 91 1 } -verbose -store
#current_net:DFF_12_N3 n148 
run_justification -full_sequential -set { 107 1 90 0 } -verbose -store
#current_net:DFF_10_N3 n146 
run_justification -full_sequential -set { 106 0 76 0 } -verbose -store
#current_net:n149 n158 
run_justification -full_sequential -set { 106 0 116 0 } -verbose -store
#current_net:n149 n153 
run_justification -full_sequential -set { 121 0 91 1 } -verbose -store
#current_net:n143 n148 
run_justification -full_sequential -set { 107 1 94 1 } -verbose -store
#current_net:DFF_10_N3 DFF_4_N3 
run_justification -full_sequential -set { 123 0 93 0 } -verbose -store
#current_net:n140 n161 
run_justification -full_sequential -set { 121 0 83 0 } -verbose -store
#current_net:n143 n157 
run_justification -full_sequential -set { 132 1 103 0 } -verbose -store
#current_net:DFF_12_N3 n150 
run_justification -full_sequential -set { 106 0 67 0 } -verbose -store
#current_net:n149 n154 
run_justification -full_sequential -set { 116 0 93 0 } -verbose -store
#current_net:n153 n161 
run_justification -full_sequential -set { 84 1 76 0 } -verbose -store
#current_net:DFF_6_N3 n158 
run_justification -full_sequential -set { 108 0 74 0 } -verbose -store
#current_net:n139 n168 
run_justification -full_sequential -set { 108 0 67 0 } -verbose -store
#current_net:n139 n154 
run_justification -full_sequential -set { 75 1 114 1 } -verbose -store
#current_net:DFF_0_N3 n141 
run_justification -full_sequential -set { 90 0 67 0 } -verbose -store
#current_net:n146 n154 
run_justification -full_sequential -set { 123 0 93 0 } -verbose -store
#current_net:n140 n161 
run_justification -full_sequential -set { 84 1 108 0 } -verbose -store
#current_net:DFF_6_N3 n139 
run_justification -full_sequential -set { 108 0 81 1 } -verbose -store
#current_net:n139 n160 
run_justification -full_sequential -set { 131 0 116 0 } -verbose -store
#current_net:n145 n153 
run_justification -full_sequential -set { 72 1 81 1 } -verbose -store
#current_net:n156 n160 
run_justification -full_sequential -set { 104 1 81 1 } -verbose -store
#current_net:n152 n160 
run_justification -full_sequential -set { 103 0 74 0 } -verbose -store
#current_net:n150 n168 
run_justification -full_sequential -set { 123 0 121 0 } -verbose -store
#current_net:n140 n143 
run_justification -full_sequential -set { 107 1 131 0 } -verbose -store
#current_net:DFF_10_N3 n145 
run_justification -full_sequential -set { 107 1 81 1 } -verbose -store
#current_net:DFF_10_N3 n160 
run_justification -full_sequential -set { 75 1 123 0 } -verbose -store
#current_net:DFF_0_N3 n140 
run_justification -full_sequential -set { 108 0 106 0 } -verbose -store
#current_net:n139 n149 
run_justification -full_sequential -set { 108 0 103 0 } -verbose -store
#current_net:n139 n150 
run_justification -full_sequential -set { 91 1 106 0 } -verbose -store
#current_net:n148 n149 
run_justification -full_sequential -set { 94 1 91 1 } -verbose -store
#current_net:DFF_4_N3 n148 
run_justification -full_sequential -set { 132 1 93 0 } -verbose -store
#current_net:DFF_12_N3 n161 
run_justification -full_sequential -set { 104 1 116 0 } -verbose -store
#current_net:n152 n153 
run_justification -full_sequential -set { 104 1 72 1 } -verbose -store
#current_net:n152 n156 
run_justification -full_sequential -set { 107 1 76 0 } -verbose -store
#current_net:DFF_10_N3 n158 
run_justification -full_sequential -set { 123 0 104 1 } -verbose -store
#current_net:n140 n152 
run_justification -full_sequential -set { 104 1 81 1 } -verbose -store
#current_net:n152 n160 
run_justification -full_sequential -set { 121 0 81 1 } -verbose -store
#current_net:n143 n160 
run_justification -full_sequential -set { 75 1 104 1 } -verbose -store
#current_net:DFF_0_N3 n152 
run_justification -full_sequential -set { 90 0 91 1 } -verbose -store
#current_net:n146 n148 
run_justification -full_sequential -set { 114 1 121 0 } -verbose -store
#current_net:n141 n143 
run_justification -full_sequential -set { 84 1 76 0 } -verbose -store
#current_net:DFF_6_N3 n158 
run_justification -full_sequential -set { 132 1 104 1 } -verbose -store
#current_net:DFF_12_N3 n152 
run_justification -full_sequential -set { 108 0 93 0 } -verbose -store
#current_net:n139 n161 
run_justification -full_sequential -set { 121 0 67 0 } -verbose -store
#current_net:n143 n154 
run_justification -full_sequential -set { 121 0 76 0 } -verbose -store
#current_net:n143 n158 
run_justification -full_sequential -set { 84 1 123 0 } -verbose -store
#current_net:DFF_6_N3 n140 
run_justification -full_sequential -set { 117 1 76 0 } -verbose -store
#current_net:DFF_8_N3 n158 
run_justification -full_sequential -set { 75 1 83 0 } -verbose -store
#current_net:DFF_0_N3 n157 
run_justification -full_sequential -set { 108 0 83 0 } -verbose -store
#current_net:n139 n157 
run_justification -full_sequential -set { 124 1 83 0 } -verbose -store
#current_net:DFF_14_N3 n157 
run_justification -full_sequential -set { 116 0 83 0 } -verbose -store
#current_net:n153 n157 
run_justification -full_sequential -set { 114 1 103 0 } -verbose -store
#current_net:n141 n150 
run_justification -full_sequential -set { 106 0 67 0 } -verbose -store
#current_net:n149 n154 
run_justification -full_sequential -set { 94 1 74 0 } -verbose -store
#current_net:DFF_4_N3 n168 
run_justification -full_sequential -set { 131 0 91 1 } -verbose -store
#current_net:n145 n148 
run_justification -full_sequential -set { 84 1 106 0 } -verbose -store
#current_net:DFF_6_N3 n149 
run_justification -full_sequential -set { 121 0 91 1 } -verbose -store
#current_net:n143 n148 
run_justification -full_sequential -set { 117 1 108 0 } -verbose -store
#current_net:DFF_8_N3 n139 
run_justification -full_sequential -set { 107 1 131 0 } -verbose -store
#current_net:DFF_10_N3 n145 
run_justification -full_sequential -set { 94 1 117 1 } -verbose -store
#current_net:DFF_4_N3 DFF_8_N3 
run_justification -full_sequential -set { 75 1 81 1 } -verbose -store
#current_net:DFF_0_N3 n160 
run_justification -full_sequential -set { 132 1 114 1 } -verbose -store
#current_net:DFF_12_N3 n141 
run_justification -full_sequential -set { 123 0 106 0 } -verbose -store
#current_net:n140 n149 
run_justification -full_sequential -set { 94 1 67 0 } -verbose -store
#current_net:DFF_4_N3 n154 
run_justification -full_sequential -set { 131 0 104 1 } -verbose -store
#current_net:n145 n152 
run_justification -full_sequential -set { 117 1 106 0 } -verbose -store
#current_net:DFF_8_N3 n149 
run_justification -full_sequential -set { 84 1 81 1 } -verbose -store
#current_net:DFF_6_N3 n160 
run_justification -full_sequential -set { 116 0 93 0 } -verbose -store
#current_net:n153 n161 
run_justification -full_sequential -set { 107 1 117 1 } -verbose -store
#current_net:DFF_10_N3 DFF_8_N3 
run_justification -full_sequential -set { 132 1 117 1 } -verbose -store
#current_net:DFF_12_N3 DFF_8_N3 
run_justification -full_sequential -set { 130 1 103 0 } -verbose -store
#current_net:n144 n150 
run_justification -full_sequential -set { 84 1 117 1 } -verbose -store
#current_net:DFF_6_N3 DFF_8_N3 
run_justification -full_sequential -set { 103 0 72 1 } -verbose -store
#current_net:n150 n156 
run_justification -full_sequential -set { 84 1 117 1 } -verbose -store
#current_net:DFF_6_N3 DFF_8_N3 
run_justification -full_sequential -set { 106 0 67 0 } -verbose -store
#current_net:n149 n154 
run_justification -full_sequential -set { 132 1 83 0 } -verbose -store
#current_net:DFF_12_N3 n157 
run_justification -full_sequential -set { 123 0 121 0 } -verbose -store
#current_net:n140 n143 
run_justification -full_sequential -set { 81 1 93 0 } -verbose -store
#current_net:n160 n161 
run_justification -full_sequential -set { 114 1 67 0 } -verbose -store
#current_net:n141 n154 
run_justification -full_sequential -set { 108 0 104 1 } -verbose -store
#current_net:n139 n152 
run_justification -full_sequential -set { 132 1 104 1 } -verbose -store
#current_net:DFF_12_N3 n152 
run_justification -full_sequential -set { 90 0 106 0 } -verbose -store
#current_net:n146 n149 
run_justification -full_sequential -set { 124 1 83 0 } -verbose -store
#current_net:DFF_14_N3 n157 
run_justification -full_sequential -set { 84 1 131 0 } -verbose -store
#current_net:DFF_6_N3 n145 
run_justification -full_sequential -set { 124 1 72 1 } -verbose -store
#current_net:DFF_14_N3 n156 
run_justification -full_sequential -set { 114 1 131 0 } -verbose -store
#current_net:n141 n145 
run_justification -full_sequential -set { 116 0 81 1 } -verbose -store
#current_net:n153 n160 
run_justification -full_sequential -set { 121 0 76 0 } -verbose -store
#current_net:n143 n158 
run_justification -full_sequential -set { 94 1 76 0 } -verbose -store
#current_net:DFF_4_N3 n158 
run_justification -full_sequential -set { 75 1 93 0 } -verbose -store
#current_net:DFF_0_N3 n161 
run_justification -full_sequential -set { 94 1 131 0 } -verbose -store
#current_net:DFF_4_N3 n145 
run_justification -full_sequential -set { 104 1 76 0 } -verbose -store
#current_net:n152 n158 
run_justification -full_sequential -set { 106 0 81 1 } -verbose -store
#current_net:n149 n160 
run_justification -full_sequential -set { 107 1 90 0 } -verbose -store
#current_net:DFF_10_N3 n146 
run_justification -full_sequential -set { 131 0 81 1 } -verbose -store
#current_net:n145 n160 
run_justification -full_sequential -set { 117 1 108 0 } -verbose -store
#current_net:DFF_8_N3 n139 
run_justification -full_sequential -set { 94 1 67 0 } -verbose -store
#current_net:DFF_4_N3 n154 
run_justification -full_sequential -set { 75 1 107 1 } -verbose -store
#current_net:DFF_0_N3 DFF_10_N3 
run_justification -full_sequential -set { 94 1 93 0 } -verbose -store
#current_net:DFF_4_N3 n161 
run_justification -full_sequential -set { 107 1 132 1 } -verbose -store
#current_net:DFF_10_N3 DFF_12_N3 
run_justification -full_sequential -set { 108 0 76 0 } -verbose -store
#current_net:n139 n158 
run_justification -full_sequential -set { 124 1 74 0 } -verbose -store
#current_net:DFF_14_N3 n168 
run_justification -full_sequential -set { 90 0 67 0 } -verbose -store
#current_net:n146 n154 
run_justification -full_sequential -set { 75 1 91 1 } -verbose -store
#current_net:DFF_0_N3 n148 
run_justification -full_sequential -set { 75 1 132 1 } -verbose -store
#current_net:DFF_0_N3 DFF_12_N3 
run_justification -full_sequential -set { 106 0 76 0 } -verbose -store
#current_net:n149 n158 
run_justification -full_sequential -set { 103 0 83 0 } -verbose -store
#current_net:n150 n157 
run_justification -full_sequential -set { 117 1 130 1 } -verbose -store
#current_net:DFF_8_N3 n144 
run_justification -full_sequential -set { 124 1 74 0 } -verbose -store
#current_net:DFF_14_N3 n168 
run_justification -full_sequential -set { 132 1 90 0 } -verbose -store
#current_net:DFF_12_N3 n146 
run_justification -full_sequential -set { 108 0 72 1 } -verbose -store
#current_net:n139 n156 
run_justification -full_sequential -set { 103 0 81 1 } -verbose -store
#current_net:n150 n160 
run_justification -full_sequential -set { 84 1 103 0 } -verbose -store
#current_net:DFF_6_N3 n150 
run_justification -full_sequential -set { 124 1 121 0 } -verbose -store
#current_net:DFF_14_N3 n143 
run_justification -full_sequential -set { 131 0 103 0 } -verbose -store
#current_net:n145 n150 
run_justification -full_sequential -set { 123 0 114 1 } -verbose -store
#current_net:n140 n141 
run_justification -full_sequential -set { 132 1 83 0 } -verbose -store
#current_net:DFF_12_N3 n157 
run_justification -full_sequential -set { 76 0 74 0 } -verbose -store
#current_net:n158 n168 
run_justification -full_sequential -set { 75 1 123 0 } -verbose -store
#current_net:DFF_0_N3 n140 
run_justification -full_sequential -set { 108 0 104 1 } -verbose -store
#current_net:n139 n152 
run_justification -full_sequential -set { 108 0 131 0 } -verbose -store
#current_net:n139 n145 
run_justification -full_sequential -set { 103 0 72 1 } -verbose -store
#current_net:n150 n156 
run_justification -full_sequential -set { 90 0 103 0 } -verbose -store
#current_net:n146 n150 
run_justification -full_sequential -set { 132 1 81 1 } -verbose -store
#current_net:DFF_12_N3 n160 
run_justification -full_sequential -set { 132 1 130 1 } -verbose -store
#current_net:DFF_12_N3 n144 
run_justification -full_sequential -set { 132 1 121 0 } -verbose -store
#current_net:DFF_12_N3 n143 
run_justification -full_sequential -set { 90 0 103 0 } -verbose -store
#current_net:n146 n150 
run_justification -full_sequential -set { 114 1 83 0 } -verbose -store
#current_net:n141 n157 
run_justification -full_sequential -set { 131 0 116 0 } -verbose -store
#current_net:n145 n153 
run_justification -full_sequential -set { 72 1 83 0 } -verbose -store
#current_net:n156 n157 
run_justification -full_sequential -set { 121 0 91 1 } -verbose -store
#current_net:n143 n148 
run_justification -full_sequential -set { 91 1 93 0 } -verbose -store
#current_net:n148 n161 
run_justification -full_sequential -set { 84 1 90 0 } -verbose -store
#current_net:DFF_6_N3 n146 
run_justification -full_sequential -set { 108 0 131 0 } -verbose -store
#current_net:n139 n145 
run_justification -full_sequential -set { 84 1 91 1 } -verbose -store
#current_net:DFF_6_N3 n148 
run_justification -full_sequential -set { 121 0 103 0 } -verbose -store
#current_net:n143 n150 
run_justification -full_sequential -set { 124 1 93 0 } -verbose -store
#current_net:DFF_14_N3 n161 
run_justification -full_sequential -set { 75 1 91 1 } -verbose -store
#current_net:DFF_0_N3 n148 
run_justification -full_sequential -set { 123 0 76 0 } -verbose -store
#current_net:n140 n158 
run_justification -full_sequential -set { 121 0 116 0 } -verbose -store
#current_net:n143 n153 
run_justification -full_sequential -set { 104 1 93 0 } -verbose -store
#current_net:n152 n161 
run_justification -full_sequential -set { 132 1 81 1 } -verbose -store
#current_net:DFF_12_N3 n160 
run_justification -full_sequential -set { 121 0 72 1 } -verbose -store
#current_net:n143 n156 
run_justification -full_sequential -set { 72 1 83 0 } -verbose -store
#current_net:n156 n157 
run_justification -full_sequential -set { 114 1 121 0 } -verbose -store
#current_net:n141 n143 
run_justification -full_sequential -set { 123 0 103 0 } -verbose -store
#current_net:n140 n150 
run_justification -full_sequential -set { 132 1 104 1 } -verbose -store
#current_net:DFF_12_N3 n152 
run_justification -full_sequential -set { 107 1 104 1 } -verbose -store
#current_net:DFF_10_N3 n152 
run_justification -full_sequential -set { 104 1 83 0 } -verbose -store
#current_net:n152 n157 
run_justification -full_sequential -set { 121 0 67 0 } -verbose -store
#current_net:n143 n154 
run_justification -full_sequential -set { 104 1 93 0 } -verbose -store
#current_net:n152 n161 
run_justification -full_sequential -set { 108 0 90 0 } -verbose -store
#current_net:n139 n146 
run_justification -full_sequential -set { 117 1 81 1 } -verbose -store
#current_net:DFF_8_N3 n160 
run_justification -full_sequential -set { 131 0 103 0 } -verbose -store
#current_net:n145 n150 
run_justification -full_sequential -set { 130 1 76 0 } -verbose -store
#current_net:n144 n158 
run_justification -full_sequential -set { 84 1 106 0 } -verbose -store
#current_net:DFF_6_N3 n149 
run_justification -full_sequential -set { 130 1 93 0 } -verbose -store
#current_net:n144 n161 
run_justification -full_sequential -set { 132 1 108 0 } -verbose -store
#current_net:DFF_12_N3 n139 
run_justification -full_sequential -set { 83 0 93 0 } -verbose -store
#current_net:n157 n161 
run_justification -full_sequential -set { 91 1 76 0 } -verbose -store
#current_net:n148 n158 
run_justification -full_sequential -set { 75 1 91 1 } -verbose -store
#current_net:DFF_0_N3 n148 
run_justification -full_sequential -set { 104 1 76 0 } -verbose -store
#current_net:n152 n158 
run_justification -full_sequential -set { 130 1 116 0 } -verbose -store
#current_net:n144 n153 
run_justification -full_sequential -set { 72 1 81 1 } -verbose -store
#current_net:n156 n160 
run_justification -full_sequential -set { 124 1 114 1 } -verbose -store
#current_net:DFF_14_N3 n141 
run_justification -full_sequential -set { 132 1 104 1 } -verbose -store
#current_net:DFF_12_N3 n152 
run_justification -full_sequential -set { 123 0 90 0 } -verbose -store
#current_net:n140 n146 
run_justification -full_sequential -set { 132 1 131 0 } -verbose -store
#current_net:DFF_12_N3 n145 
run_justification -full_sequential -set { 94 1 103 0 } -verbose -store
#current_net:DFF_4_N3 n150 
run_justification -full_sequential -set { 75 1 107 1 } -verbose -store
#current_net:DFF_0_N3 DFF_10_N3 
run_justification -full_sequential -set { 108 0 67 0 } -verbose -store
#current_net:n139 n154 
run_justification -full_sequential -set { 84 1 93 0 } -verbose -store
#current_net:DFF_6_N3 n161 
run_justification -full_sequential -set { 75 1 108 0 } -verbose -store
#current_net:DFF_0_N3 n139 
run_justification -full_sequential -set { 75 1 107 1 } -verbose -store
#current_net:DFF_0_N3 DFF_10_N3 
run_justification -full_sequential -set { 91 1 103 0 } -verbose -store
#current_net:n148 n150 
run_justification -full_sequential -set { 123 0 131 0 } -verbose -store
#current_net:n140 n145 
run_justification -full_sequential -set { 132 1 74 0 } -verbose -store
#current_net:DFF_12_N3 n168 
run_justification -full_sequential -set { 84 1 130 1 } -verbose -store
#current_net:DFF_6_N3 n144 
run_justification -full_sequential -set { 108 0 76 0 } -verbose -store
#current_net:n139 n158 
run_justification -full_sequential -set { 107 1 90 0 } -verbose -store
#current_net:DFF_10_N3 n146 
run_justification -full_sequential -set { 117 1 121 0 } -verbose -store
#current_net:DFF_8_N3 n143 
run_justification -full_sequential -set { 81 1 93 0 } -verbose -store
#current_net:n160 n161 
run_justification -full_sequential -set { 75 1 94 1 } -verbose -store
#current_net:DFF_0_N3 DFF_4_N3 
run_justification -full_sequential -set { 114 1 83 0 } -verbose -store
#current_net:n141 n157 
run_justification -full_sequential -set { 130 1 91 1 } -verbose -store
#current_net:n144 n148 
run_justification -full_sequential -set { 121 0 104 1 } -verbose -store
#current_net:n143 n152 
run_justification -full_sequential -set { 81 1 93 0 } -verbose -store
#current_net:n160 n161 
run_justification -full_sequential -set { 75 1 104 1 } -verbose -store
#current_net:DFF_0_N3 n152 
run_justification -full_sequential -set { 130 1 90 0 } -verbose -store
#current_net:n144 n146 
run_justification -full_sequential -set { 121 0 72 1 } -verbose -store
#current_net:n143 n156 
run_justification -full_sequential -set { 132 1 83 0 } -verbose -store
#current_net:DFF_12_N3 n157 
run_justification -full_sequential -set { 90 0 81 1 } -verbose -store
#current_net:n146 n160 
run_justification -full_sequential -set { 108 0 131 0 } -verbose -store
#current_net:n139 n145 
run_justification -full_sequential -set { 130 1 93 0 } -verbose -store
#current_net:n144 n161 
run_justification -full_sequential -set { 84 1 74 0 } -verbose -store
#current_net:DFF_6_N3 n168 
run_justification -full_sequential -set { 81 1 93 0 } -verbose -store
#current_net:n160 n161 
run_justification -full_sequential -set { 117 1 121 0 } -verbose -store
#current_net:DFF_8_N3 n143 
run_justification -full_sequential -set { 116 0 93 0 } -verbose -store
#current_net:n153 n161 
run_justification -full_sequential -set { 75 1 114 1 } -verbose -store
#current_net:DFF_0_N3 n141 
run_justification -full_sequential -set { 106 0 103 0 } -verbose -store
#current_net:n149 n150 
run_justification -full_sequential -set { 90 0 74 0 } -verbose -store
#current_net:n146 n168 
run_justification -full_sequential -set { 114 1 93 0 } -verbose -store
#current_net:n141 n161 
run_justification -full_sequential -set { 116 0 74 0 } -verbose -store
#current_net:n153 n168 
run_justification -full_sequential -set { 81 1 74 0 } -verbose -store
#current_net:n160 n168 
run_justification -full_sequential -set { 124 1 121 0 } -verbose -store
#current_net:DFF_14_N3 n143 
run_justification -full_sequential -set { 121 0 83 0 } -verbose -store
#current_net:n143 n157 
run_justification -full_sequential -set { 75 1 124 1 } -verbose -store
#current_net:DFF_0_N3 DFF_14_N3 
run_justification -full_sequential -set { 121 0 93 0 } -verbose -store
#current_net:n143 n161 
run_justification -full_sequential -set { 75 1 103 0 } -verbose -store
#current_net:DFF_0_N3 n150 
run_justification -full_sequential -set { 116 0 83 0 } -verbose -store
#current_net:n153 n157 
run_justification -full_sequential -set { 117 1 93 0 } -verbose -store
#current_net:DFF_8_N3 n161 
run_justification -full_sequential -set { 121 0 83 0 } -verbose -store
#current_net:n143 n157 
run_justification -full_sequential -set { 106 0 76 0 } -verbose -store
#current_net:n149 n158 
run_justification -full_sequential -set { 123 0 76 0 } -verbose -store
#current_net:n140 n158 
run_justification -full_sequential -set { 116 0 93 0 } -verbose -store
#current_net:n153 n161 
run_justification -full_sequential -set { 130 1 72 1 } -verbose -store
#current_net:n144 n156 
run_justification -full_sequential -set { 107 1 74 0 } -verbose -store
#current_net:DFF_10_N3 n168 
run_justification -full_sequential -set { 130 1 106 0 } -verbose -store
#current_net:n144 n149 
run_justification -full_sequential -set { 75 1 91 1 } -verbose -store
#current_net:DFF_0_N3 n148 
run_justification -full_sequential -set { 83 0 81 1 } -verbose -store
#current_net:n157 n160 
run_justification -full_sequential -set { 107 1 104 1 } -verbose -store
#current_net:DFF_10_N3 n152 
run_justification -full_sequential -set { 117 1 103 0 } -verbose -store
#current_net:DFF_8_N3 n150 
run_justification -full_sequential -set { 131 0 90 0 } -verbose -store
#current_net:n145 n146 
run_justification -full_sequential -set { 108 0 93 0 } -verbose -store
#current_net:n139 n161 
run_justification -full_sequential -set { 117 1 93 0 } -verbose -store
#current_net:DFF_8_N3 n161 
run_justification -full_sequential -set { 108 0 91 1 } -verbose -store
#current_net:n139 n148 
run_justification -full_sequential -set { 124 1 72 1 } -verbose -store
#current_net:DFF_14_N3 n156 
run_justification -full_sequential -set { 84 1 104 1 } -verbose -store
#current_net:DFF_6_N3 n152 
run_justification -full_sequential -set { 132 1 103 0 } -verbose -store
#current_net:DFF_12_N3 n150 
run_justification -full_sequential -set { 117 1 114 1 } -verbose -store
#current_net:DFF_8_N3 n141 
run_justification -full_sequential -set { 130 1 106 0 } -verbose -store
#current_net:n144 n149 
run_justification -full_sequential -set { 117 1 116 0 } -verbose -store
#current_net:DFF_8_N3 n153 
run_justification -full_sequential -set { 131 0 83 0 } -verbose -store
#current_net:n145 n157 
run_justification -full_sequential -set { 94 1 72 1 } -verbose -store
#current_net:DFF_4_N3 n156 
run_justification -full_sequential -set { 108 0 104 1 } -verbose -store
#current_net:n139 n152 
run_justification -full_sequential -set { 75 1 121 0 } -verbose -store
#current_net:DFF_0_N3 n143 
run_justification -full_sequential -set { 132 1 116 0 } -verbose -store
#current_net:DFF_12_N3 n153 
run_justification -full_sequential -set { 131 0 83 0 } -verbose -store
#current_net:n145 n157 
run_justification -full_sequential -set { 124 1 84 1 } -verbose -store
#current_net:DFF_14_N3 DFF_6_N3 
run_justification -full_sequential -set { 75 1 107 1 } -verbose -store
#current_net:DFF_0_N3 DFF_10_N3 
run_justification -full_sequential -set { 121 0 130 1 } -verbose -store
#current_net:n143 n144 
run_justification -full_sequential -set { 94 1 104 1 } -verbose -store
#current_net:DFF_4_N3 n152 
run_justification -full_sequential -set { 72 1 74 0 } -verbose -store
#current_net:n156 n168 
run_justification -full_sequential -set { 132 1 84 1 } -verbose -store
#current_net:DFF_12_N3 DFF_6_N3 
run_justification -full_sequential -set { 117 1 108 0 } -verbose -store
#current_net:DFF_8_N3 n139 
run_justification -full_sequential -set { 104 1 76 0 } -verbose -store
#current_net:n152 n158 
run_justification -full_sequential -set { 124 1 94 1 } -verbose -store
#current_net:DFF_14_N3 DFF_4_N3 
run_justification -full_sequential -set { 94 1 108 0 } -verbose -store
#current_net:DFF_4_N3 n139 
run_justification -full_sequential -set { 107 1 72 1 } -verbose -store
#current_net:DFF_10_N3 n156 
run_justification -full_sequential -set { 123 0 121 0 } -verbose -store
#current_net:n140 n143 
run_justification -full_sequential -set { 130 1 74 0 } -verbose -store
#current_net:n144 n168 
run_justification -full_sequential -set { 107 1 94 1 } -verbose -store
#current_net:DFF_10_N3 DFF_4_N3 
run_justification -full_sequential -set { 123 0 121 0 } -verbose -store
#current_net:n140 n143 
run_justification -full_sequential -set { 108 0 76 0 } -verbose -store
#current_net:n139 n158 
run_justification -full_sequential -set { 116 0 74 0 } -verbose -store
#current_net:n153 n168 
run_justification -full_sequential -set { 123 0 76 0 } -verbose -store
#current_net:n140 n158 
run_justification -full_sequential -set { 117 1 76 0 } -verbose -store
#current_net:DFF_8_N3 n158 
run_justification -full_sequential -set { 121 0 91 1 } -verbose -store
#current_net:n143 n148 
run_justification -full_sequential -set { 106 0 72 1 } -verbose -store
#current_net:n149 n156 
run_justification -full_sequential -set { 124 1 84 1 } -verbose -store
#current_net:DFF_14_N3 DFF_6_N3 
run_justification -full_sequential -set { 123 0 93 0 } -verbose -store
#current_net:n140 n161 
run_justification -full_sequential -set { 114 1 103 0 } -verbose -store
#current_net:n141 n150 
run_justification -full_sequential -set { 114 1 121 0 } -verbose -store
#current_net:n141 n143 
run_justification -full_sequential -set { 94 1 91 1 } -verbose -store
#current_net:DFF_4_N3 n148 
run_justification -full_sequential -set { 103 0 76 0 } -verbose -store
#current_net:n150 n158 
run_justification -full_sequential -set { 108 0 103 0 } -verbose -store
#current_net:n139 n150 
run_justification -full_sequential -set { 108 0 114 1 } -verbose -store
#current_net:n139 n141 
run_justification -full_sequential -set { 84 1 104 1 } -verbose -store
#current_net:DFF_6_N3 n152 
run_justification -full_sequential -set { 94 1 72 1 } -verbose -store
#current_net:DFF_4_N3 n156 
run_justification -full_sequential -set { 94 1 76 0 } -verbose -store
#current_net:DFF_4_N3 n158 
run_justification -full_sequential -set { 114 1 72 1 } -verbose -store
#current_net:n141 n156 
run_justification -full_sequential -set { 108 0 76 0 } -verbose -store
#current_net:n139 n158 
run_justification -full_sequential -set { 94 1 106 0 } -verbose -store
#current_net:DFF_4_N3 n149 
run_justification -full_sequential -set { 84 1 106 0 } -verbose -store
#current_net:DFF_6_N3 n149 
report_patterns -internal -all 
exit 
