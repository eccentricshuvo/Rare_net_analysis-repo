read_netlist /home/UFAD/sudiptaparia/Downloads/mero_v2_1/src//lec25dscc25.v -library
read_netlist /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run/s400.v
set_build -nodelete_unused_gates -merge noglobal_tie_propagate
run_build_model s400
add_clocks 0 CLK
add_clocks 0 RST
drc 
test 
report_primitives DFF_19_N3 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run//get_id_op.tcl
report_primitives DFF_18_N3 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run//get_id_op.tcl
report_primitives DFF_16_N3 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run//get_id_op.tcl
report_primitives DFF_15_N3 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run//get_id_op.tcl
report_primitives DFF_14_N3 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run//get_id_op.tcl
report_primitives DFF_12_N3 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run//get_id_op.tcl
report_primitives DFF_11_N3 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run//get_id_op.tcl
report_primitives DFF_10_N3 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run//get_id_op.tcl
report_primitives DFF_7_N3 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run//get_id_op.tcl
report_primitives DFF_2_N3 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run//get_id_op.tcl
report_primitives n139 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run//get_id_op.tcl
report_primitives n167 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run//get_id_op.tcl
report_primitives n186 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run//get_id_op.tcl
report_primitives n190 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run//get_id_op.tcl
report_primitives n197 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run//get_id_op.tcl
report_primitives n198 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run//get_id_op.tcl
report_primitives n201 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run//get_id_op.tcl
report_primitives n202 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run//get_id_op.tcl
report_primitives n203 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run//get_id_op.tcl
report_primitives n204 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run//get_id_op.tcl
report_primitives n206 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run//get_id_op.tcl
report_primitives n236 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run//get_id_op.tcl
report_primitives n238 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run//get_id_op.tcl
report_primitives n239 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run//get_id_op.tcl
report_primitives n246 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run//get_id_op.tcl
exit 
