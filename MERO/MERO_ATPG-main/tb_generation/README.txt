
1. generate testbench
    python3 testbench_gen.py -d <design.v> -top <top_module> -type a -test <tb_generated_for_these_vector.out> -o <op_tb_file.v> -log <op_tb_log> -piF <cast_PI_order.txt>
2. compile with iverilog
    iverilog -s tb -o mysim <design.v> <op_tb_file.v> <library_file>
3. run
    vvp mysim
4. parse results
    python3 parse_tb.py -nF net_file.txt -pF /home/pravin/Downloads/LEDA/c3540/tb_log.txt -oF /home/pravin/Downloads/LEDA/c3540/net_value.txt -v

Example:

python3 testbench_gen.py -d ./example/c3540_netlist.v -top c3540 -type a -test ./example/test_vector.out -o ./example/c3540_tb.v -log ./example/tb_log.txt -piF ./example/PI_order.txt -oD ./example/

iverilog -s tb -o mysim ./example/c3540_netlist.v ./example/c3540_tb.v ./lec25dscc25.v
vvp mysim

python3 parse_tb.py -nF ./example/tb_net_file.txt -pF ./example/tb_log.txt -oF ./tb_vector_net_value.txt -v



1. generate testbench
    python3 testbench_gen.py -d /home/pravin/Downloads/LEDA/c3540/c3540_netlist.v -top c3540 -type a -test /home/pravin/Downloads/LEDA/c3540/test_vector.out -o /home/pravin/Downloads/LEDA/c3540/c3540_tb.v -log /home/pravin/Downloads/LEDA/c3540/tb_log.txt -piF /home/pravin/Downloads/LEDA/c3540/PI_order.txt
2. compile with iverilog
    iverilog -s tb -o mysim /home/pravin/Downloads/LEDA/c3540/c3540_netlist.v /home/pravin/Downloads/LEDA/c3540/c3540_tb.v /home/pravin/Downloads/TRIT-DS-master/src/lec25dscc25.v
3. run
    vvp mysim
4. parse results
    python3 parse_tb.py -nF net_file.txt -pF /home/pravin/Downloads/LEDA/c3540/tb_log.txt -oF /home/pravin/Downloads/LEDA/c3540/net_value.txt -v
