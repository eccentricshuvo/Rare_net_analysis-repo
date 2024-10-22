
                             Synopsys TestMAX (TM) 
                                  TetraMAX (R)

               Version V-2023.12-SP5 for linux64 - Jul 19, 2024  

                    Copyright (c) 1996 - 2024 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
   or distribution of this software is strictly prohibited.  Licensed Products
     communicate with Synopsys servers for the purpose of providing software
    updates, detecting software piracy and verifying that customers are using
    Licensed Products in conformity with the applicable License Key for such
  Licensed Products. Synopsys will use information gathered in connection with
    this process to deliver software updates and pursue software pirates and
                                   infringers.

 Inclusivity & Diversity - Visit SolvNetPlus to read the "Synopsys Statement on
            Inclusivity and Diversity" (Refer to article 000036315 at
                        https://solvnetplus.synopsys.com)


 Tcl mode is on by default. Use -notcl to run in native mode.
 Executing startup file "/apps/syn/syn/V-2023.12-SP5/admin/setup/tmaxtcl.rc".
read_netlist /home/UFAD/sudiptaparia/Downloads/mero_v2_1/src//lec25dscc25.v -library
 Begin reading netlist ( /home/UFAD/sudiptaparia/Downloads/mero_v2_1/src/lec25dscc25.v )...
 End parsing Verilog file /home/UFAD/sudiptaparia/Downloads/mero_v2_1/src/lec25dscc25.v with 0 errors.
 End reading netlist: #modules=350, top=ip_ffs, #lines=11376, CPU_time=0.03 sec, Memory=2MB
read_netlist /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn/s420_syn.v
 Begin reading netlist ( /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn/s420_syn.v )...
 End parsing Verilog file /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_11/s420_syn/s420_syn.v with 0 errors.
 End reading netlist: #modules=1, top=s420, #lines=138, CPU_time=0.00 sec, Memory=0MB
set_build -nodelete_unused_gates -merge noglobal_tie_propagate
run_build_model s420
 ------------------------------------------------------------------------------
 Begin build model for topcut = s420 ...
 ------------------------------------------------------------------------------
 There were 16 primitives and 0 faultable pins removed during model optimizations
 Warning: Rule B8 (unconnected module input pin) was violated 2 times.
 Warning: Rule N21 (unsupported UDP entry) was violated 1 times.
 End build model: #primitives=198, CPU_time=0.00 sec, Memory=0MB
 ------------------------------------------------------------------------------
 Begin learning analyses...
 End learning analyses, total learning CPU time=0.00 sec.
 ------------------------------------------------------------------------------
add_clocks 1 CLK
drc 
test 
 ------------------------------------------------------------------------------
 Begin scan design rules checking...
 ------------------------------------------------------------------------------
 Begin simulating test protocol procedures...
 Test protocol simulation completed, CPU time=0.00 sec.
 ------------------------------------------------------------------------------
 Begin scan chain operation checking...
 Scan chain operation checking completed, CPU time=0.00 sec.
 ------------------------------------------------------------------------------
 Begin clock rules checking...
 Clock rules checking completed, CPU time=0.00 sec.
 Performing clock grouping analysis for 1 clock.
 Clock grouping results: #pairs=0, #groups=0, #serial_pairs=0, #disturbed_pairs=0, CPU time=0.00 sec.
 ------------------------------------------------------------------------------
 Begin tracing connection cones...
 Tracing connection cones completed, CPU time=0.00 sec.
 ------------------------------------------------------------------------------
 Begin nonscan rules checking...
 Nonscan cell summary: #DFF=16  #DLAT=0  #RAM_outs=0  tla_usage_type=none
 Nonscan behavior:  #TE=16
 Nonscan rules checking completed, CPU time=0.00 sec.
 ------------------------------------------------------------------------------
 Begin DRC dependent learning...
 Fast-sequential depth results: control=2(195), observe=1(132), detect=3(130), CPU time=0.00 sec
 DRC dependent learning completed, CPU time=0.13 sec.
 ------------------------------------------------------------------------------
 Begin set operation for load unload constant latches...
 Set operation for load unload constant latches completed, CPU time=0.00 sec.
 ------------------------------------------------------------------------------
 DRC Summary Report
 ------------------------------------------------------------------------------
 No violations occurred during DRC process.
 Design rules checking was successful, total CPU time=0.14 sec.
 ------------------------------------------------------------------------------
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
