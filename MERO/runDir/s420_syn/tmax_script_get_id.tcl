read_netlist /home/UFAD/sudiptaparia/Downloads/mero_v2_1/src//lec25dscc25.v -library
read_netlist /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn/s420_syn.v
set_build -nodelete_unused_gates -merge noglobal_tie_propagate
run_build_model s420
add_clocks 1 CLK
drc 
test 
report_primitives DFF_12_N3 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//get_id_op.tcl
report_primitives DFF_8_N3 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//get_id_op.tcl
report_primitives DFF_0_N3 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//get_id_op.tcl
report_primitives DFF_6_N3 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//get_id_op.tcl
report_primitives DFF_4_N3 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//get_id_op.tcl
report_primitives DFF_14_N3 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//get_id_op.tcl
report_primitives DFF_10_N3 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//get_id_op.tcl
report_primitives n154 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//get_id_op.tcl
report_primitives n156 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//get_id_op.tcl
report_primitives n158 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//get_id_op.tcl
report_primitives n160 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//get_id_op.tcl
report_primitives n146 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//get_id_op.tcl
report_primitives n148 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//get_id_op.tcl
report_primitives n150 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//get_id_op.tcl
report_primitives n152 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//get_id_op.tcl
report_primitives n139 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//get_id_op.tcl
report_primitives n141 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//get_id_op.tcl
report_primitives n140 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//get_id_op.tcl
report_primitives n143 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//get_id_op.tcl
report_primitives n144 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//get_id_op.tcl
report_primitives n145 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//get_id_op.tcl
report_primitives n149 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//get_id_op.tcl
report_primitives n153 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//get_id_op.tcl
report_primitives n157 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//get_id_op.tcl
report_primitives n161 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//get_id_op.tcl
report_primitives n168 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn//get_id_op.tcl
exit 
