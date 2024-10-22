
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
read_netlist /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn/c2670_syn.v
 Begin reading netlist ( /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn/c2670_syn.v )...
 End parsing Verilog file /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn/c2670_syn.v with 0 errors.
 End reading netlist: #modules=1, top=c2670, #lines=510, CPU_time=0.00 sec, Memory=0MB
set_build -nodelete_unused_gates -merge noglobal_tie_propagate
run_build_model c2670
 ------------------------------------------------------------------------------
 Begin build model for topcut = c2670 ...
 ------------------------------------------------------------------------------
 There were 14 primitives and 0 faultable pins removed during model optimizations
 End build model: #primitives=634, CPU_time=0.00 sec, Memory=0MB
 ------------------------------------------------------------------------------
 Begin learning analyses...
 End learning analyses, total learning CPU time=0.00 sec.
 ------------------------------------------------------------------------------
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
 Begin tracing connection cones...
 Tracing connection cones completed, CPU time=0.00 sec.
 ------------------------------------------------------------------------------
 Begin nonscan rules checking...
 Nonscan cell summary: #DFF=0  #DLAT=0  #RAM_outs=0  tla_usage_type=none
 Nonscan rules checking completed, CPU time=0.00 sec.
 ------------------------------------------------------------------------------
 Begin DRC dependent learning...
 Fast-sequential depth results: control=0(0), observe=0(0), detect=0(0), CPU time=0.00 sec
 DRC dependent learning completed, CPU time=0.00 sec.
 ------------------------------------------------------------------------------
 Begin set operation for load unload constant latches...
 Set operation for load unload constant latches completed, CPU time=0.00 sec.
 ------------------------------------------------------------------------------
 DRC Summary Report
 ------------------------------------------------------------------------------
 No violations occurred during DRC process.
 Design rules checking was successful, total CPU time=0.00 sec.
 ------------------------------------------------------------------------------
report_primitives n484 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n485 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n487 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n708 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n489 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n490 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n601 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n561 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n585 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n583 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n590 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n605 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n613 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n615 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n619 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n618 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n641 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n643 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n645 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n647 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n661 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n679 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n681 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n683 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n684 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n704 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n700 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n702 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n703 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n705 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n709 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n740 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n744 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n748 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n749 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n757 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n758 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n759 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n760 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n761 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
report_primitives n762 >> /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//get_id_op.tcl
exit 
