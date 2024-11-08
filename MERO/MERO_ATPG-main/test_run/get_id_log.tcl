
                             Synopsys TestMAX (TM) 
                                  TetraMAX (R)

               Version R-2020.09-SP5 for linux64 - Apr 23, 2021  

                    Copyright (c) 1996 - 2021 Synopsys, Inc.
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
 Executing startup file "/apps/syn/txs/admin/setup/tmaxtcl.rc".
read_netlist /home/UFAD/sudiptaparia/Downloads/mero_v2_1/src//lec25dscc25.v -library
 Begin reading netlist ( /home/UFAD/sudiptaparia/Downloads/mero_v2_1/src/lec25dscc25.v )...
 End parsing Verilog file /home/UFAD/sudiptaparia/Downloads/mero_v2_1/src/lec25dscc25.v with 0 errors.
 End reading netlist: #modules=350, top=ip_ffs, #lines=11376, CPU_time=0.02 sec, Memory=1MB
read_netlist /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run/s400.v
 Begin reading netlist ( /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run/s400.v )...
 End parsing Verilog file /home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run/s400.v with 0 errors.
 End reading netlist: #modules=1, top=s400, #lines=199, CPU_time=0.00 sec, Memory=0MB
set_build -nodelete_unused_gates -merge noglobal_tie_propagate
run_build_model s400
 ------------------------------------------------------------------------------
 Begin build model for topcut = s400 ...
 ------------------------------------------------------------------------------
 There were 21 primitives and 0 faultable pins removed during model optimizations
 Warning: Rule B8 (unconnected module input pin) was violated 2 times.
 Warning: Rule N21 (unsupported UDP entry) was violated 1 times.
 End build model: #primitives=264, CPU_time=0.00 sec, Memory=0MB
 ------------------------------------------------------------------------------
 Begin learning analyses...
 End learning analyses, total learning CPU time=0.00 sec.
 ------------------------------------------------------------------------------
add_clocks 0 CLK
add_clocks 0 RST
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
 Error: Clock RST cannot capture data with other clocks off. (C4-1)
 Error: Design rules checking failed: cannot exit DRC command mode. (M100)
 Information: script '/home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run//tmax_script_get_id.tcl'
	stopped at line 8 due to error. (CMD-081)

Extended error info:

    while executing
"test "
    (file "/home/UFAD/sudiptaparia/Downloads/mero_v2_1/test_run//tmax_script_get_id.tcl" line 8)
 -- End Extended Error Info
DRC-T> 
Received Signal 1 from: PID=37761 (UID=1112126344)

                    
Received Signal 1 from: PID=37761 (UID=1112126344)
