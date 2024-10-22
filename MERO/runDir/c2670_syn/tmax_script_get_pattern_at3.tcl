read_netlist /home/UFAD/sudiptaparia/Downloads/mero_v2_1/src/lec25dscc25.v -library
read_netlist /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn/c2670_syn.v
set_build -nodelete_unused_gates -merge noglobal_tie_propagate 
run_build_model c2670
drc
test
set pindata seq_sim_data 
#run_justification -full_sequential -set { n485 0 n484 1 } -verbose -store
#attempt:0
#current_net:n485
#current_comb_set:n485 n485,0 n484,1 
run_justification -full_sequential -set { 311 0 310 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n484 1 n487 0 } -verbose -store
#attempt:1
#current_net:n487
#current_comb_set:n487 n485,0 n484,1 n487,0 
run_justification -full_sequential -set { 311 0 310 1 312 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 } -verbose -store
#attempt:2
#current_net:n487
#current_comb_set:n487 n484,1 n487,0 
run_justification -full_sequential -set { 310 1 312 0 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 } -verbose -store
#attempt:3
#current_net:n487
#current_comb_set:n487 n485,0 n487,0 
run_justification -full_sequential -set { 311 0 312 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 n485 0 n484 1 n708 0 } -verbose -store
#attempt:4
#current_net:n708
#current_comb_set:n708 n487,0 n485,0 n484,1 n708,0 
run_justification -full_sequential -set { 312 0 311 0 310 1 313 0 } -verbose -store
#run_justification -full_sequential -set { n485 0 n484 1 n708 0 } -verbose -store
#attempt:5
#current_net:n708
#current_comb_set:n708 n485,0 n484,1 n708,0 
run_justification -full_sequential -set { 311 0 310 1 313 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 n484 1 n708 0 } -verbose -store
#attempt:6
#current_net:n708
#current_comb_set:n708 n487,0 n484,1 n708,0 
run_justification -full_sequential -set { 312 0 310 1 313 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 n485 0 n708 0 } -verbose -store
#attempt:7
#current_net:n708
#current_comb_set:n708 n487,0 n485,0 n708,0 
run_justification -full_sequential -set { 312 0 311 0 313 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n708 0 } -verbose -store
#attempt:8
#current_net:n708
#current_comb_set:n708 n484,1 n708,0 
run_justification -full_sequential -set { 310 1 313 0 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 } -verbose -store
#attempt:9
#current_net:n708
#current_comb_set:n708 n485,0 n708,0 
run_justification -full_sequential -set { 311 0 313 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 n708 0 } -verbose -store
#attempt:10
#current_net:n708
#current_comb_set:n708 n487,0 n708,0 
run_justification -full_sequential -set { 312 0 313 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 n487 0 n485 0 n484 1 n489 0 } -verbose -store
#attempt:11
#current_net:n489
#current_comb_set:n489 n708,0 n487,0 n485,0 n484,1 n489,0 
run_justification -full_sequential -set { 313 0 312 0 311 0 310 1 318 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 n485 0 n484 1 n489 0 } -verbose -store
#attempt:12
#current_net:n489
#current_comb_set:n489 n487,0 n485,0 n484,1 n489,0 
run_justification -full_sequential -set { 312 0 311 0 310 1 318 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 n485 0 n484 1 n489 0 } -verbose -store
#attempt:13
#current_net:n489
#current_comb_set:n489 n708,0 n485,0 n484,1 n489,0 
run_justification -full_sequential -set { 313 0 311 0 310 1 318 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 n487 0 n484 1 n489 0 } -verbose -store
#attempt:14
#current_net:n489
#current_comb_set:n489 n708,0 n487,0 n484,1 n489,0 
run_justification -full_sequential -set { 313 0 312 0 310 1 318 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 n487 0 n485 0 n489 0 } -verbose -store
#attempt:15
#current_net:n489
#current_comb_set:n489 n708,0 n487,0 n485,0 n489,0 
run_justification -full_sequential -set { 313 0 312 0 311 0 318 0 } -verbose -store
#run_justification -full_sequential -set { n485 0 n484 1 n489 0 } -verbose -store
#attempt:16
#current_net:n489
#current_comb_set:n489 n485,0 n484,1 n489,0 
run_justification -full_sequential -set { 311 0 310 1 318 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 n484 1 n489 0 } -verbose -store
#attempt:17
#current_net:n489
#current_comb_set:n489 n487,0 n484,1 n489,0 
run_justification -full_sequential -set { 312 0 310 1 318 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 n485 0 n489 0 } -verbose -store
#attempt:18
#current_net:n489
#current_comb_set:n489 n487,0 n485,0 n489,0 
run_justification -full_sequential -set { 312 0 311 0 318 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 n484 1 n489 0 } -verbose -store
#attempt:19
#current_net:n489
#current_comb_set:n489 n708,0 n484,1 n489,0 
run_justification -full_sequential -set { 313 0 310 1 318 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 n485 0 n489 0 } -verbose -store
#attempt:20
#current_net:n489
#current_comb_set:n489 n708,0 n485,0 n489,0 
run_justification -full_sequential -set { 313 0 311 0 318 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 n487 0 n489 0 } -verbose -store
#attempt:21
#current_net:n489
#current_comb_set:n489 n708,0 n487,0 n489,0 
run_justification -full_sequential -set { 313 0 312 0 318 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n489 0 } -verbose -store
#attempt:22
#current_net:n489
#current_comb_set:n489 n484,1 n489,0 
run_justification -full_sequential -set { 310 1 318 0 } -verbose -store
#run_justification -full_sequential -set { n485 0 n489 0 } -verbose -store
#attempt:23
#current_net:n489
#current_comb_set:n489 n485,0 n489,0 
run_justification -full_sequential -set { 311 0 318 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 n489 0 } -verbose -store
#attempt:24
#current_net:n489
#current_comb_set:n489 n487,0 n489,0 
run_justification -full_sequential -set { 312 0 318 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 n489 0 } -verbose -store
#attempt:25
#current_net:n489
#current_comb_set:n489 n708,0 n489,0 
run_justification -full_sequential -set { 313 0 318 0 } -verbose -store
#run_justification -full_sequential -set { n489 0 n708 0 n487 0 n485 0 n484 1 n490 0 } -verbose -store
#attempt:26
#current_net:n490
#current_comb_set:n490 n489,0 n708,0 n487,0 n485,0 n484,1 n490,0 
run_justification -full_sequential -set { 318 0 313 0 312 0 311 0 310 1 319 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 n487 0 n485 0 n484 1 n490 0 } -verbose -store
#attempt:27
#current_net:n490
#current_comb_set:n490 n708,0 n487,0 n485,0 n484,1 n490,0 
run_justification -full_sequential -set { 313 0 312 0 311 0 310 1 319 0 } -verbose -store
#run_justification -full_sequential -set { n489 0 n487 0 n485 0 n484 1 n490 0 } -verbose -store
#attempt:28
#current_net:n490
#current_comb_set:n490 n489,0 n487,0 n485,0 n484,1 n490,0 
run_justification -full_sequential -set { 318 0 312 0 311 0 310 1 319 0 } -verbose -store
#run_justification -full_sequential -set { n489 0 n708 0 n485 0 n484 1 n490 0 } -verbose -store
#attempt:29
#current_net:n490
#current_comb_set:n490 n489,0 n708,0 n485,0 n484,1 n490,0 
run_justification -full_sequential -set { 318 0 313 0 311 0 310 1 319 0 } -verbose -store
#run_justification -full_sequential -set { n489 0 n708 0 n487 0 n484 1 n490 0 } -verbose -store
#attempt:30
#current_net:n490
#current_comb_set:n490 n489,0 n708,0 n487,0 n484,1 n490,0 
run_justification -full_sequential -set { 318 0 313 0 312 0 310 1 319 0 } -verbose -store
#run_justification -full_sequential -set { n489 0 n708 0 n487 0 n485 0 n490 0 } -verbose -store
#attempt:31
#current_net:n490
#current_comb_set:n490 n489,0 n708,0 n487,0 n485,0 n490,0 
run_justification -full_sequential -set { 318 0 313 0 312 0 311 0 319 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 n485 0 n484 1 n490 0 } -verbose -store
#attempt:32
#current_net:n490
#current_comb_set:n490 n487,0 n485,0 n484,1 n490,0 
run_justification -full_sequential -set { 312 0 311 0 310 1 319 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 n485 0 n484 1 n490 0 } -verbose -store
#attempt:33
#current_net:n490
#current_comb_set:n490 n708,0 n485,0 n484,1 n490,0 
run_justification -full_sequential -set { 313 0 311 0 310 1 319 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 n487 0 n484 1 n490 0 } -verbose -store
#attempt:34
#current_net:n490
#current_comb_set:n490 n708,0 n487,0 n484,1 n490,0 
run_justification -full_sequential -set { 313 0 312 0 310 1 319 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 n487 0 n485 0 n490 0 } -verbose -store
#attempt:35
#current_net:n490
#current_comb_set:n490 n708,0 n487,0 n485,0 n490,0 
run_justification -full_sequential -set { 313 0 312 0 311 0 319 0 } -verbose -store
#run_justification -full_sequential -set { n489 0 n485 0 n484 1 n490 0 } -verbose -store
#attempt:36
#current_net:n490
#current_comb_set:n490 n489,0 n485,0 n484,1 n490,0 
run_justification -full_sequential -set { 318 0 311 0 310 1 319 0 } -verbose -store
#run_justification -full_sequential -set { n489 0 n487 0 n484 1 n490 0 } -verbose -store
#attempt:37
#current_net:n490
#current_comb_set:n490 n489,0 n487,0 n484,1 n490,0 
run_justification -full_sequential -set { 318 0 312 0 310 1 319 0 } -verbose -store
#run_justification -full_sequential -set { n489 0 n487 0 n485 0 n490 0 } -verbose -store
#attempt:38
#current_net:n490
#current_comb_set:n490 n489,0 n487,0 n485,0 n490,0 
run_justification -full_sequential -set { 318 0 312 0 311 0 319 0 } -verbose -store
#run_justification -full_sequential -set { n489 0 n708 0 n484 1 n490 0 } -verbose -store
#attempt:39
#current_net:n490
#current_comb_set:n490 n489,0 n708,0 n484,1 n490,0 
run_justification -full_sequential -set { 318 0 313 0 310 1 319 0 } -verbose -store
#run_justification -full_sequential -set { n489 0 n708 0 n485 0 n490 0 } -verbose -store
#attempt:40
#current_net:n490
#current_comb_set:n490 n489,0 n708,0 n485,0 n490,0 
run_justification -full_sequential -set { 318 0 313 0 311 0 319 0 } -verbose -store
#run_justification -full_sequential -set { n489 0 n708 0 n487 0 n490 0 } -verbose -store
#attempt:41
#current_net:n490
#current_comb_set:n490 n489,0 n708,0 n487,0 n490,0 
run_justification -full_sequential -set { 318 0 313 0 312 0 319 0 } -verbose -store
#run_justification -full_sequential -set { n485 0 n484 1 n490 0 } -verbose -store
#attempt:42
#current_net:n490
#current_comb_set:n490 n485,0 n484,1 n490,0 
run_justification -full_sequential -set { 311 0 310 1 319 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 n484 1 n490 0 } -verbose -store
#attempt:43
#current_net:n490
#current_comb_set:n490 n487,0 n484,1 n490,0 
run_justification -full_sequential -set { 312 0 310 1 319 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 n485 0 n490 0 } -verbose -store
#attempt:44
#current_net:n490
#current_comb_set:n490 n487,0 n485,0 n490,0 
run_justification -full_sequential -set { 312 0 311 0 319 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 n484 1 n490 0 } -verbose -store
#attempt:45
#current_net:n490
#current_comb_set:n490 n708,0 n484,1 n490,0 
run_justification -full_sequential -set { 313 0 310 1 319 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 n485 0 n490 0 } -verbose -store
#attempt:46
#current_net:n490
#current_comb_set:n490 n708,0 n485,0 n490,0 
run_justification -full_sequential -set { 313 0 311 0 319 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 n487 0 n490 0 } -verbose -store
#attempt:47
#current_net:n490
#current_comb_set:n490 n708,0 n487,0 n490,0 
run_justification -full_sequential -set { 313 0 312 0 319 0 } -verbose -store
#run_justification -full_sequential -set { n489 0 n484 1 n490 0 } -verbose -store
#attempt:48
#current_net:n490
#current_comb_set:n490 n489,0 n484,1 n490,0 
run_justification -full_sequential -set { 318 0 310 1 319 0 } -verbose -store
#run_justification -full_sequential -set { n489 0 n485 0 n490 0 } -verbose -store
#attempt:49
#current_net:n490
#current_comb_set:n490 n489,0 n485,0 n490,0 
run_justification -full_sequential -set { 318 0 311 0 319 0 } -verbose -store
#run_justification -full_sequential -set { n489 0 n487 0 n490 0 } -verbose -store
#attempt:50
#current_net:n490
#current_comb_set:n490 n489,0 n487,0 n490,0 
run_justification -full_sequential -set { 318 0 312 0 319 0 } -verbose -store
#run_justification -full_sequential -set { n489 0 n708 0 n490 0 } -verbose -store
#attempt:51
#current_net:n490
#current_comb_set:n490 n489,0 n708,0 n490,0 
run_justification -full_sequential -set { 318 0 313 0 319 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n490 0 } -verbose -store
#attempt:52
#current_net:n490
#current_comb_set:n490 n484,1 n490,0 
run_justification -full_sequential -set { 310 1 319 0 } -verbose -store
#run_justification -full_sequential -set { n485 0 n490 0 } -verbose -store
#attempt:53
#current_net:n490
#current_comb_set:n490 n485,0 n490,0 
run_justification -full_sequential -set { 311 0 319 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 n490 0 } -verbose -store
#attempt:54
#current_net:n490
#current_comb_set:n490 n487,0 n490,0 
run_justification -full_sequential -set { 312 0 319 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 n490 0 } -verbose -store
#attempt:55
#current_net:n490
#current_comb_set:n490 n708,0 n490,0 
run_justification -full_sequential -set { 313 0 319 0 } -verbose -store
#run_justification -full_sequential -set { n489 0 n490 0 } -verbose -store
#attempt:56
#current_net:n490
#current_comb_set:n490 n489,0 n490,0 
run_justification -full_sequential -set { 318 0 319 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n561 1 } -verbose -store
#attempt:57
#current_net:n585
#current_comb_set:n585 n585,1 n561,1 
run_justification -full_sequential -set { 534 1 516 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n590 0 n601 1 n605 1 n613 0 } -verbose -store
#attempt:58
#current_net:n613
#current_comb_set:n613 n561,1 n585,1 n590,0 n601,1 n605,1 n613,0 
run_justification -full_sequential -set { 516 1 534 1 554 0 555 1 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n590 0 n601 1 n605 1 n613 0 } -verbose -store
#attempt:59
#current_net:n613
#current_comb_set:n613 n583,1 n585,1 n590,0 n601,1 n605,1 n613,0 
run_justification -full_sequential -set { 531 1 534 1 554 0 555 1 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n590 0 n605 1 n613 0 } -verbose -store
#attempt:60
#current_net:n613
#current_comb_set:n613 n561,1 n583,1 n585,1 n590,0 n605,1 n613,0 
run_justification -full_sequential -set { 516 1 531 1 534 1 554 0 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n590 0 n601 1 n605 1 n613 0 } -verbose -store
#attempt:61
#current_net:n613
#current_comb_set:n613 n561,1 n583,1 n590,0 n601,1 n605,1 n613,0 
run_justification -full_sequential -set { 516 1 531 1 554 0 555 1 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n590 0 n605 1 n613 0 } -verbose -store
#attempt:62
#current_net:n613
#current_comb_set:n613 n561,1 n583,1 n585,1 n590,0 n605,1 n613,0 
run_justification -full_sequential -set { 516 1 531 1 534 1 554 0 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n601 1 n605 1 n613 0 } -verbose -store
#attempt:63
#current_net:n613
#current_comb_set:n613 n561,1 n583,1 n585,1 n601,1 n605,1 n613,0 
run_justification -full_sequential -set { 516 1 531 1 534 1 555 1 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n590 0 n605 1 n613 0 } -verbose -store
#attempt:64
#current_net:n613
#current_comb_set:n613 n583,1 n585,1 n590,0 n605,1 n613,0 
run_justification -full_sequential -set { 531 1 534 1 554 0 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n605 1 n613 0 } -verbose -store
#attempt:65
#current_net:n613
#current_comb_set:n613 n561,1 n583,1 n585,1 n605,1 n613,0 
run_justification -full_sequential -set { 516 1 531 1 534 1 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n601 1 n605 1 n613 0 } -verbose -store
#attempt:66
#current_net:n613
#current_comb_set:n613 n561,1 n590,0 n601,1 n605,1 n613,0 
run_justification -full_sequential -set { 516 1 554 0 555 1 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n590 0 n605 1 n613 0 } -verbose -store
#attempt:67
#current_net:n613
#current_comb_set:n613 n561,1 n583,1 n590,0 n605,1 n613,0 
run_justification -full_sequential -set { 516 1 531 1 554 0 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n590 0 n605 1 n613 0 } -verbose -store
#attempt:68
#current_net:n613
#current_comb_set:n613 n583,1 n585,1 n590,0 n605,1 n613,0 
run_justification -full_sequential -set { 531 1 534 1 554 0 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n590 0 n605 1 n613 0 } -verbose -store
#attempt:69
#current_net:n613
#current_comb_set:n613 n561,1 n583,1 n590,0 n605,1 n613,0 
run_justification -full_sequential -set { 516 1 531 1 554 0 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n601 1 n605 1 n613 0 } -verbose -store
#attempt:70
#current_net:n613
#current_comb_set:n613 n561,1 n590,0 n601,1 n605,1 n613,0 
run_justification -full_sequential -set { 516 1 554 0 555 1 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n590 0 n605 1 n613 0 } -verbose -store
#attempt:71
#current_net:n613
#current_comb_set:n613 n561,1 n585,1 n590,0 n605,1 n613,0 
run_justification -full_sequential -set { 516 1 534 1 554 0 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n601 1 n605 1 n613 0 } -verbose -store
#attempt:72
#current_net:n613
#current_comb_set:n613 n561,1 n590,0 n601,1 n605,1 n613,0 
run_justification -full_sequential -set { 516 1 554 0 555 1 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n605 1 n613 0 } -verbose -store
#attempt:73
#current_net:n613
#current_comb_set:n613 n561,1 n583,1 n585,1 n605,1 n613,0 
run_justification -full_sequential -set { 516 1 531 1 534 1 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n601 1 n605 1 n613 0 } -verbose -store
#attempt:74
#current_net:n613
#current_comb_set:n613 n561,1 n583,1 n601,1 n605,1 n613,0 
run_justification -full_sequential -set { 516 1 531 1 555 1 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n601 1 n605 1 n613 0 } -verbose -store
#attempt:75
#current_net:n613
#current_comb_set:n613 n561,1 n583,1 n601,1 n605,1 n613,0 
run_justification -full_sequential -set { 516 1 531 1 555 1 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n590 0 n601 1 n605 1 n613 0 } -verbose -store
#attempt:76
#current_net:n613
#current_comb_set:n613 n585,1 n590,0 n601,1 n605,1 n613,0 
run_justification -full_sequential -set { 534 1 554 0 555 1 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n590 0 n605 1 n613 0 } -verbose -store
#attempt:77
#current_net:n613
#current_comb_set:n613 n561,1 n585,1 n590,0 n605,1 n613,0 
run_justification -full_sequential -set { 516 1 534 1 554 0 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n601 1 n605 1 n613 0 } -verbose -store
#attempt:78
#current_net:n613
#current_comb_set:n613 n561,1 n583,1 n601,1 n605,1 n613,0 
run_justification -full_sequential -set { 516 1 531 1 555 1 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n613 0 } -verbose -store
#attempt:79
#current_net:n613
#current_comb_set:n613 n561,1 n583,1 n585,1 n613,0 
run_justification -full_sequential -set { 516 1 531 1 534 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n601 1 n605 1 n613 0 } -verbose -store
#attempt:80
#current_net:n613
#current_comb_set:n613 n583,1 n601,1 n605,1 n613,0 
run_justification -full_sequential -set { 531 1 555 1 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n601 1 n605 1 n613 0 } -verbose -store
#attempt:81
#current_net:n613
#current_comb_set:n613 n585,1 n601,1 n605,1 n613,0 
run_justification -full_sequential -set { 534 1 555 1 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n605 1 n613 0 } -verbose -store
#attempt:82
#current_net:n613
#current_comb_set:n613 n561,1 n590,0 n605,1 n613,0 
run_justification -full_sequential -set { 516 1 554 0 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n613 0 } -verbose -store
#attempt:83
#current_net:n613
#current_comb_set:n613 n561,1 n583,1 n585,1 n613,0 
run_justification -full_sequential -set { 516 1 531 1 534 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n601 1 n605 1 n613 0 } -verbose -store
#attempt:84
#current_net:n613
#current_comb_set:n613 n561,1 n601,1 n605,1 n613,0 
run_justification -full_sequential -set { 516 1 555 1 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n590 0 n601 1 n613 0 } -verbose -store
#attempt:85
#current_net:n613
#current_comb_set:n613 n585,1 n590,0 n601,1 n613,0 
run_justification -full_sequential -set { 534 1 554 0 555 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n605 1 n613 0 } -verbose -store
#attempt:86
#current_net:n613
#current_comb_set:n613 n583,1 n585,1 n605,1 n613,0 
run_justification -full_sequential -set { 531 1 534 1 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n601 1 n613 0 } -verbose -store
#attempt:87
#current_net:n613
#current_comb_set:n613 n561,1 n583,1 n601,1 n613,0 
run_justification -full_sequential -set { 516 1 531 1 555 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n605 1 n613 0 } -verbose -store
#attempt:88
#current_net:n613
#current_comb_set:n613 n561,1 n590,0 n605,1 n613,0 
run_justification -full_sequential -set { 516 1 554 0 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n590 0 n613 0 } -verbose -store
#attempt:89
#current_net:n613
#current_comb_set:n613 n561,1 n585,1 n590,0 n613,0 
run_justification -full_sequential -set { 516 1 534 1 554 0 566 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n590 0 n605 1 n613 0 } -verbose -store
#attempt:90
#current_net:n613
#current_comb_set:n613 n585,1 n590,0 n605,1 n613,0 
run_justification -full_sequential -set { 534 1 554 0 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n601 1 n605 1 n613 0 } -verbose -store
#attempt:91
#current_net:n613
#current_comb_set:n613 n561,1 n601,1 n605,1 n613,0 
run_justification -full_sequential -set { 516 1 555 1 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n601 1 n613 0 } -verbose -store
#attempt:92
#current_net:n613
#current_comb_set:n613 n583,1 n585,1 n601,1 n613,0 
run_justification -full_sequential -set { 531 1 534 1 555 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n601 1 n613 0 } -verbose -store
#attempt:93
#current_net:n613
#current_comb_set:n613 n561,1 n590,0 n601,1 n613,0 
run_justification -full_sequential -set { 516 1 554 0 555 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n601 1 n613 0 } -verbose -store
#attempt:94
#current_net:n613
#current_comb_set:n613 n561,1 n583,1 n601,1 n613,0 
run_justification -full_sequential -set { 516 1 531 1 555 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n601 1 n605 1 n613 0 } -verbose -store
#attempt:95
#current_net:n613
#current_comb_set:n613 n561,1 n601,1 n605,1 n613,0 
run_justification -full_sequential -set { 516 1 555 1 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n605 1 n613 0 } -verbose -store
#attempt:96
#current_net:n613
#current_comb_set:n613 n561,1 n590,0 n605,1 n613,0 
run_justification -full_sequential -set { 516 1 554 0 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n605 1 n613 0 } -verbose -store
#attempt:97
#current_net:n613
#current_comb_set:n613 n561,1 n585,1 n605,1 n613,0 
run_justification -full_sequential -set { 516 1 534 1 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n601 1 n613 0 } -verbose -store
#attempt:98
#current_net:n613
#current_comb_set:n613 n561,1 n590,0 n601,1 n613,0 
run_justification -full_sequential -set { 516 1 554 0 555 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n601 1 n605 1 n613 0 } -verbose -store
#attempt:99
#current_net:n613
#current_comb_set:n613 n601,1 n605,1 n613,0 
run_justification -full_sequential -set { 555 1 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n613 0 } -verbose -store
#attempt:100
#current_net:n613
#current_comb_set:n613 n561,1 n583,1 n613,0 
run_justification -full_sequential -set { 516 1 531 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n605 1 n613 0 } -verbose -store
#attempt:101
#current_net:n613
#current_comb_set:n613 n585,1 n605,1 n613,0 
run_justification -full_sequential -set { 534 1 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n601 1 n613 0 } -verbose -store
#attempt:102
#current_net:n613
#current_comb_set:n613 n585,1 n601,1 n613,0 
run_justification -full_sequential -set { 534 1 555 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n601 1 n613 0 } -verbose -store
#attempt:103
#current_net:n613
#current_comb_set:n613 n583,1 n601,1 n613,0 
run_justification -full_sequential -set { 531 1 555 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n601 1 n613 0 } -verbose -store
#attempt:104
#current_net:n613
#current_comb_set:n613 n561,1 n601,1 n613,0 
run_justification -full_sequential -set { 516 1 555 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n605 1 n613 0 } -verbose -store
#attempt:105
#current_net:n613
#current_comb_set:n613 n583,1 n605,1 n613,0 
run_justification -full_sequential -set { 531 1 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n601 1 n613 0 } -verbose -store
#attempt:106
#current_net:n613
#current_comb_set:n613 n585,1 n601,1 n613,0 
run_justification -full_sequential -set { 534 1 555 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n601 1 n613 0 } -verbose -store
#attempt:107
#current_net:n613
#current_comb_set:n613 n585,1 n601,1 n613,0 
run_justification -full_sequential -set { 534 1 555 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n613 0 } -verbose -store
#attempt:108
#current_net:n613
#current_comb_set:n613 n583,1 n585,1 n613,0 
run_justification -full_sequential -set { 531 1 534 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n601 1 n605 1 n613 0 } -verbose -store
#attempt:109
#current_net:n613
#current_comb_set:n613 n601,1 n605,1 n613,0 
run_justification -full_sequential -set { 555 1 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n605 1 n613 0 } -verbose -store
#attempt:110
#current_net:n613
#current_comb_set:n613 n585,1 n605,1 n613,0 
run_justification -full_sequential -set { 534 1 549 1 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n613 0 } -verbose -store
#attempt:111
#current_net:n613
#current_comb_set:n613 n561,1 n590,0 n613,0 
run_justification -full_sequential -set { 516 1 554 0 566 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n590 0 n613 0 } -verbose -store
#attempt:112
#current_net:n613
#current_comb_set:n613 n583,1 n590,0 n613,0 
run_justification -full_sequential -set { 531 1 554 0 566 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n590 0 n613 0 } -verbose -store
#attempt:113
#current_net:n613
#current_comb_set:n613 n585,1 n590,0 n613,0 
run_justification -full_sequential -set { 534 1 554 0 566 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n601 1 n605 1 n613 0 n615 1 } -verbose -store
#attempt:114
#current_net:n615
#current_comb_set:n615 n561,1 n585,1 n601,1 n605,1 n613,0 n615,1 
run_justification -full_sequential -set { 516 1 534 1 555 1 549 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n590 0 n605 1 n615 1 } -verbose -store
#attempt:115
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n585,1 n590,0 n605,1 n615,1 
run_justification -full_sequential -set { 516 1 531 1 534 1 554 0 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n590 0 n601 1 n613 0 n615 1 } -verbose -store
#attempt:116
#current_net:n615
#current_comb_set:n615 n583,1 n585,1 n590,0 n601,1 n613,0 n615,1 
run_justification -full_sequential -set { 531 1 534 1 554 0 555 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n601 1 n605 1 n613 0 n615 1 } -verbose -store
#attempt:117
#current_net:n615
#current_comb_set:n615 n561,1 n590,0 n601,1 n605,1 n613,0 n615,1 
run_justification -full_sequential -set { 516 1 554 0 555 1 549 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n601 1 n613 0 n615 1 } -verbose -store
#attempt:118
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n585,1 n601,1 n613,0 n615,1 
run_justification -full_sequential -set { 516 1 531 1 534 1 555 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n601 1 n605 1 n615 1 } -verbose -store
#attempt:119
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n585,1 n601,1 n605,1 n615,1 
run_justification -full_sequential -set { 516 1 531 1 534 1 555 1 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n590 0 n601 1 n605 1 n615 1 } -verbose -store
#attempt:120
#current_net:n615
#current_comb_set:n615 n561,1 n585,1 n590,0 n601,1 n605,1 n615,1 
run_justification -full_sequential -set { 516 1 534 1 554 0 555 1 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n590 0 n601 1 n605 1 n615 1 } -verbose -store
#attempt:121
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n590,0 n601,1 n605,1 n615,1 
run_justification -full_sequential -set { 516 1 531 1 554 0 555 1 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n601 1 n605 1 n613 0 n615 1 } -verbose -store
#attempt:122
#current_net:n615
#current_comb_set:n615 n561,1 n590,0 n601,1 n605,1 n613,0 n615,1 
run_justification -full_sequential -set { 516 1 554 0 555 1 549 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n601 1 n613 0 n615 1 } -verbose -store
#attempt:123
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n585,1 n601,1 n613,0 n615,1 
run_justification -full_sequential -set { 516 1 531 1 534 1 555 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n601 1 n605 1 n613 0 n615 1 } -verbose -store
#attempt:124
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n601,1 n605,1 n613,0 n615,1 
run_justification -full_sequential -set { 516 1 531 1 555 1 549 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n590 0 n601 1 n605 1 n615 1 } -verbose -store
#attempt:125
#current_net:n615
#current_comb_set:n615 n583,1 n585,1 n590,0 n601,1 n605,1 n615,1 
run_justification -full_sequential -set { 531 1 534 1 554 0 555 1 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n590 0 n605 1 n613 0 n615 1 } -verbose -store
#attempt:126
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n590,0 n605,1 n613,0 n615,1 
run_justification -full_sequential -set { 516 1 531 1 554 0 549 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n590 0 n605 1 n613 0 n615 1 } -verbose -store
#attempt:127
#current_net:n615
#current_comb_set:n615 n561,1 n585,1 n590,0 n605,1 n613,0 n615,1 
run_justification -full_sequential -set { 516 1 534 1 554 0 549 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n601 1 n605 1 n613 0 n615 1 } -verbose -store
#attempt:128
#current_net:n615
#current_comb_set:n615 n583,1 n585,1 n601,1 n605,1 n613,0 n615,1 
run_justification -full_sequential -set { 531 1 534 1 555 1 549 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n590 0 n605 1 n613 0 n615 1 } -verbose -store
#attempt:129
#current_net:n615
#current_comb_set:n615 n583,1 n585,1 n590,0 n605,1 n613,0 n615,1 
run_justification -full_sequential -set { 531 1 534 1 554 0 549 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n590 0 n601 1 n605 1 n615 1 } -verbose -store
#attempt:130
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n590,0 n601,1 n605,1 n615,1 
run_justification -full_sequential -set { 516 1 531 1 554 0 555 1 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n601 1 n605 1 n613 0 n615 1 } -verbose -store
#attempt:131
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n601,1 n605,1 n613,0 n615,1 
run_justification -full_sequential -set { 516 1 531 1 555 1 549 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n601 1 n605 1 n613 0 n615 1 } -verbose -store
#attempt:132
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n601,1 n605,1 n613,0 n615,1 
run_justification -full_sequential -set { 516 1 531 1 555 1 549 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n590 0 n601 1 n605 1 n615 1 } -verbose -store
#attempt:133
#current_net:n615
#current_comb_set:n615 n583,1 n585,1 n590,0 n601,1 n605,1 n615,1 
run_justification -full_sequential -set { 531 1 534 1 554 0 555 1 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n590 0 n601 1 n615 1 } -verbose -store
#attempt:134
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n585,1 n590,0 n601,1 n615,1 
run_justification -full_sequential -set { 516 1 531 1 534 1 554 0 555 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n585 1 n601 1 n605 1 n613 0 n615 1 } -verbose -store
#attempt:135
#current_net:n615
#current_comb_set:n615 n585,1 n601,1 n605,1 n613,0 n615,1 
run_justification -full_sequential -set { 534 1 555 1 549 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n590 0 n601 1 n615 1 } -verbose -store
#attempt:136
#current_net:n615
#current_comb_set:n615 n561,1 n585,1 n590,0 n601,1 n615,1 
run_justification -full_sequential -set { 516 1 534 1 554 0 555 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n585 1 n601 1 n605 1 n613 0 n615 1 } -verbose -store
#attempt:137
#current_net:n615
#current_comb_set:n615 n585,1 n601,1 n605,1 n613,0 n615,1 
run_justification -full_sequential -set { 534 1 555 1 549 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n585 1 n590 0 n601 1 n613 0 n615 1 } -verbose -store
#attempt:138
#current_net:n615
#current_comb_set:n615 n585,1 n590,0 n601,1 n613,0 n615,1 
run_justification -full_sequential -set { 534 1 554 0 555 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n605 1 n613 0 n615 1 } -verbose -store
#attempt:139
#current_net:n615
#current_comb_set:n615 n561,1 n585,1 n605,1 n613,0 n615,1 
run_justification -full_sequential -set { 516 1 534 1 549 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n585 1 n590 0 n601 1 n613 0 n615 1 } -verbose -store
#attempt:140
#current_net:n615
#current_comb_set:n615 n585,1 n590,0 n601,1 n613,0 n615,1 
run_justification -full_sequential -set { 534 1 554 0 555 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n601 1 n605 1 n613 0 n615 1 } -verbose -store
#attempt:141
#current_net:n615
#current_comb_set:n615 n561,1 n601,1 n605,1 n613,0 n615,1 
run_justification -full_sequential -set { 516 1 555 1 549 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n583 1 n590 0 n601 1 n613 0 n615 1 } -verbose -store
#attempt:142
#current_net:n615
#current_comb_set:n615 n583,1 n590,0 n601,1 n613,0 n615,1 
run_justification -full_sequential -set { 531 1 554 0 555 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n590 0 n601 1 n605 1 n613 0 n615 1 } -verbose -store
#attempt:143
#current_net:n615
#current_comb_set:n615 n590,0 n601,1 n605,1 n613,0 n615,1 
run_justification -full_sequential -set { 554 0 555 1 549 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n605 1 n615 1 } -verbose -store
#attempt:144
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n585,1 n605,1 n615,1 
run_justification -full_sequential -set { 516 1 531 1 534 1 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n601 1 n605 1 n615 1 } -verbose -store
#attempt:145
#current_net:n615
#current_comb_set:n615 n561,1 n585,1 n601,1 n605,1 n615,1 
run_justification -full_sequential -set { 516 1 534 1 555 1 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n590 0 n613 0 n615 1 } -verbose -store
#attempt:146
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n590,0 n613,0 n615,1 
run_justification -full_sequential -set { 516 1 531 1 554 0 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n583 1 n590 0 n601 1 n605 1 n615 1 } -verbose -store
#attempt:147
#current_net:n615
#current_comb_set:n615 n583,1 n590,0 n601,1 n605,1 n615,1 
run_justification -full_sequential -set { 531 1 554 0 555 1 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n590 0 n613 0 n615 1 } -verbose -store
#attempt:148
#current_net:n615
#current_comb_set:n615 n561,1 n585,1 n590,0 n613,0 n615,1 
run_justification -full_sequential -set { 516 1 534 1 554 0 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n601 1 n605 1 n615 1 } -verbose -store
#attempt:149
#current_net:n615
#current_comb_set:n615 n561,1 n585,1 n601,1 n605,1 n615,1 
run_justification -full_sequential -set { 516 1 534 1 555 1 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n601 1 n613 0 n615 1 } -verbose -store
#attempt:150
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n601,1 n613,0 n615,1 
run_justification -full_sequential -set { 516 1 531 1 555 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n585 1 n590 0 n601 1 n613 0 n615 1 } -verbose -store
#attempt:151
#current_net:n615
#current_comb_set:n615 n585,1 n590,0 n601,1 n613,0 n615,1 
run_justification -full_sequential -set { 534 1 554 0 555 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n613 0 n615 1 } -verbose -store
#attempt:152
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n585,1 n613,0 n615,1 
run_justification -full_sequential -set { 516 1 531 1 534 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n585 1 n590 0 n601 1 n613 0 n615 1 } -verbose -store
#attempt:153
#current_net:n615
#current_comb_set:n615 n585,1 n590,0 n601,1 n613,0 n615,1 
run_justification -full_sequential -set { 534 1 554 0 555 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n590 0 n601 1 n615 1 } -verbose -store
#attempt:154
#current_net:n615
#current_comb_set:n615 n561,1 n585,1 n590,0 n601,1 n615,1 
run_justification -full_sequential -set { 516 1 534 1 554 0 555 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n601 1 n605 1 n615 1 } -verbose -store
#attempt:155
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n601,1 n605,1 n615,1 
run_justification -full_sequential -set { 516 1 531 1 555 1 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n605 1 n615 1 } -verbose -store
#attempt:156
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n585,1 n605,1 n615,1 
run_justification -full_sequential -set { 516 1 531 1 534 1 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n590 0 n605 1 n615 1 } -verbose -store
#attempt:157
#current_net:n615
#current_comb_set:n615 n583,1 n585,1 n590,0 n605,1 n615,1 
run_justification -full_sequential -set { 531 1 534 1 554 0 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n601 1 n615 1 } -verbose -store
#attempt:158
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n585,1 n601,1 n615,1 
run_justification -full_sequential -set { 516 1 531 1 534 1 555 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n583 1 n590 0 n605 1 n613 0 n615 1 } -verbose -store
#attempt:159
#current_net:n615
#current_comb_set:n615 n583,1 n590,0 n605,1 n613,0 n615,1 
run_justification -full_sequential -set { 531 1 554 0 549 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n590 0 n601 1 n605 1 n613 0 n615 1 } -verbose -store
#attempt:160
#current_net:n615
#current_comb_set:n615 n590,0 n601,1 n605,1 n613,0 n615,1 
run_justification -full_sequential -set { 554 0 555 1 549 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n590 0 n601 1 n615 1 } -verbose -store
#attempt:161
#current_net:n615
#current_comb_set:n615 n561,1 n585,1 n590,0 n601,1 n615,1 
run_justification -full_sequential -set { 516 1 534 1 554 0 555 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n590 0 n613 0 n615 1 } -verbose -store
#attempt:162
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n590,0 n613,0 n615,1 
run_justification -full_sequential -set { 516 1 531 1 554 0 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n601 1 n605 1 n615 1 } -verbose -store
#attempt:163
#current_net:n615
#current_comb_set:n615 n583,1 n585,1 n601,1 n605,1 n615,1 
run_justification -full_sequential -set { 531 1 534 1 555 1 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n601 1 n615 1 } -verbose -store
#attempt:164
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n585,1 n601,1 n615,1 
run_justification -full_sequential -set { 516 1 531 1 534 1 555 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n601 1 n613 0 n615 1 } -verbose -store
#attempt:165
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n601,1 n613,0 n615,1 
run_justification -full_sequential -set { 516 1 531 1 555 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n605 1 n613 0 n615 1 } -verbose -store
#attempt:166
#current_net:n615
#current_comb_set:n615 n561,1 n590,0 n605,1 n613,0 n615,1 
run_justification -full_sequential -set { 516 1 554 0 549 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n590 0 n615 1 } -verbose -store
#attempt:167
#current_net:n615
#current_comb_set:n615 n561,1 n585,1 n590,0 n615,1 
run_justification -full_sequential -set { 516 1 534 1 554 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n590 0 n605 1 n613 0 n615 1 } -verbose -store
#attempt:168
#current_net:n615
#current_comb_set:n615 n590,0 n605,1 n613,0 n615,1 
run_justification -full_sequential -set { 554 0 549 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n601 1 n615 1 } -verbose -store
#attempt:169
#current_net:n615
#current_comb_set:n615 n561,1 n590,0 n601,1 n615,1 
run_justification -full_sequential -set { 516 1 554 0 555 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n585 1 n605 1 n613 0 n615 1 } -verbose -store
#attempt:170
#current_net:n615
#current_comb_set:n615 n585,1 n605,1 n613,0 n615,1 
run_justification -full_sequential -set { 534 1 549 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n583 1 n590 0 n613 0 n615 1 } -verbose -store
#attempt:171
#current_net:n615
#current_comb_set:n615 n583,1 n590,0 n613,0 n615,1 
run_justification -full_sequential -set { 531 1 554 0 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n601 1 n615 1 } -verbose -store
#attempt:172
#current_net:n615
#current_comb_set:n615 n583,1 n585,1 n601,1 n615,1 
run_justification -full_sequential -set { 531 1 534 1 555 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n590 0 n615 1 } -verbose -store
#attempt:173
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n590,0 n615,1 
run_justification -full_sequential -set { 516 1 531 1 554 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n601 1 n615 1 } -verbose -store
#attempt:174
#current_net:n615
#current_comb_set:n615 n583,1 n585,1 n601,1 n615,1 
run_justification -full_sequential -set { 531 1 534 1 555 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n590 0 n605 1 n613 0 n615 1 } -verbose -store
#attempt:175
#current_net:n615
#current_comb_set:n615 n590,0 n605,1 n613,0 n615,1 
run_justification -full_sequential -set { 554 0 549 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n585 1 n590 0 n605 1 n615 1 } -verbose -store
#attempt:176
#current_net:n615
#current_comb_set:n615 n585,1 n590,0 n605,1 n615,1 
run_justification -full_sequential -set { 534 1 554 0 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n583 1 n590 0 n613 0 n615 1 } -verbose -store
#attempt:177
#current_net:n615
#current_comb_set:n615 n583,1 n590,0 n613,0 n615,1 
run_justification -full_sequential -set { 531 1 554 0 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n601 1 n615 1 } -verbose -store
#attempt:178
#current_net:n615
#current_comb_set:n615 n583,1 n585,1 n601,1 n615,1 
run_justification -full_sequential -set { 531 1 534 1 555 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n605 1 n615 1 } -verbose -store
#attempt:179
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n605,1 n615,1 
run_justification -full_sequential -set { 516 1 531 1 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n601 1 n615 1 } -verbose -store
#attempt:180
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n601,1 n615,1 
run_justification -full_sequential -set { 516 1 531 1 555 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n613 0 n615 1 } -verbose -store
#attempt:181
#current_net:n615
#current_comb_set:n615 n583,1 n585,1 n613,0 n615,1 
run_justification -full_sequential -set { 531 1 534 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n601 1 n615 1 } -verbose -store
#attempt:182
#current_net:n615
#current_comb_set:n615 n561,1 n585,1 n601,1 n615,1 
run_justification -full_sequential -set { 516 1 534 1 555 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n585 1 n605 1 n613 0 n615 1 } -verbose -store
#attempt:183
#current_net:n615
#current_comb_set:n615 n585,1 n605,1 n613,0 n615,1 
run_justification -full_sequential -set { 534 1 549 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n585 1 n590 0 n601 1 n615 1 } -verbose -store
#attempt:184
#current_net:n615
#current_comb_set:n615 n585,1 n590,0 n601,1 n615,1 
run_justification -full_sequential -set { 534 1 554 0 555 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n583 1 n601 1 n605 1 n615 1 } -verbose -store
#attempt:185
#current_net:n615
#current_comb_set:n615 n583,1 n601,1 n605,1 n615,1 
run_justification -full_sequential -set { 531 1 555 1 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n585 1 n590 0 n601 1 n615 1 } -verbose -store
#attempt:186
#current_net:n615
#current_comb_set:n615 n585,1 n590,0 n601,1 n615,1 
run_justification -full_sequential -set { 534 1 554 0 555 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n601 1 n615 1 } -verbose -store
#attempt:187
#current_net:n615
#current_comb_set:n615 n561,1 n590,0 n601,1 n615,1 
run_justification -full_sequential -set { 516 1 554 0 555 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n605 1 n615 1 } -verbose -store
#attempt:188
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n605,1 n615,1 
run_justification -full_sequential -set { 516 1 531 1 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n585 1 n590 0 n605 1 n615 1 } -verbose -store
#attempt:189
#current_net:n615
#current_comb_set:n615 n585,1 n590,0 n605,1 n615,1 
run_justification -full_sequential -set { 534 1 554 0 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n590 0 n601 1 n605 1 n615 1 } -verbose -store
#attempt:190
#current_net:n615
#current_comb_set:n615 n590,0 n601,1 n605,1 n615,1 
run_justification -full_sequential -set { 554 0 555 1 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n605 1 n615 1 } -verbose -store
#attempt:191
#current_net:n615
#current_comb_set:n615 n561,1 n590,0 n605,1 n615,1 
run_justification -full_sequential -set { 516 1 554 0 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n585 1 n590 0 n601 1 n615 1 } -verbose -store
#attempt:192
#current_net:n615
#current_comb_set:n615 n585,1 n590,0 n601,1 n615,1 
run_justification -full_sequential -set { 534 1 554 0 555 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n585 1 n590 0 n613 0 n615 1 } -verbose -store
#attempt:193
#current_net:n615
#current_comb_set:n615 n585,1 n590,0 n613,0 n615,1 
run_justification -full_sequential -set { 534 1 554 0 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n605 1 n615 1 } -verbose -store
#attempt:194
#current_net:n615
#current_comb_set:n615 n583,1 n585,1 n605,1 n615,1 
run_justification -full_sequential -set { 531 1 534 1 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n590 0 n601 1 n605 1 n615 1 } -verbose -store
#attempt:195
#current_net:n615
#current_comb_set:n615 n590,0 n601,1 n605,1 n615,1 
run_justification -full_sequential -set { 554 0 555 1 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n613 0 n615 1 } -verbose -store
#attempt:196
#current_net:n615
#current_comb_set:n615 n561,1 n590,0 n613,0 n615,1 
run_justification -full_sequential -set { 516 1 554 0 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n585 1 n601 1 n605 1 n615 1 } -verbose -store
#attempt:197
#current_net:n615
#current_comb_set:n615 n585,1 n601,1 n605,1 n615,1 
run_justification -full_sequential -set { 534 1 555 1 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n613 0 n615 1 } -verbose -store
#attempt:198
#current_net:n615
#current_comb_set:n615 n583,1 n585,1 n613,0 n615,1 
run_justification -full_sequential -set { 531 1 534 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n583 1 n590 0 n615 1 } -verbose -store
#attempt:199
#current_net:n615
#current_comb_set:n615 n583,1 n590,0 n615,1 
run_justification -full_sequential -set { 531 1 554 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n585 1 n590 0 n615 1 } -verbose -store
#attempt:200
#current_net:n615
#current_comb_set:n615 n585,1 n590,0 n615,1 
run_justification -full_sequential -set { 534 1 554 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n583 1 n601 1 n615 1 } -verbose -store
#attempt:201
#current_net:n615
#current_comb_set:n615 n583,1 n601,1 n615,1 
run_justification -full_sequential -set { 531 1 555 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n615 1 } -verbose -store
#attempt:202
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n615,1 
run_justification -full_sequential -set { 516 1 531 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n601 1 n615 1 } -verbose -store
#attempt:203
#current_net:n615
#current_comb_set:n615 n561,1 n601,1 n615,1 
run_justification -full_sequential -set { 516 1 555 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n615 1 } -verbose -store
#attempt:204
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n615,1 
run_justification -full_sequential -set { 516 1 531 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n585 1 n605 1 n615 1 } -verbose -store
#attempt:205
#current_net:n615
#current_comb_set:n615 n585,1 n605,1 n615,1 
run_justification -full_sequential -set { 534 1 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n605 1 n613 0 n615 1 } -verbose -store
#attempt:206
#current_net:n615
#current_comb_set:n615 n605,1 n613,0 n615,1 
run_justification -full_sequential -set { 549 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n585 1 n601 1 n615 1 } -verbose -store
#attempt:207
#current_net:n615
#current_comb_set:n615 n585,1 n601,1 n615,1 
run_justification -full_sequential -set { 534 1 555 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n590 0 n613 0 n615 1 } -verbose -store
#attempt:208
#current_net:n615
#current_comb_set:n615 n590,0 n613,0 n615,1 
run_justification -full_sequential -set { 554 0 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n583 1 n590 0 n615 1 } -verbose -store
#attempt:209
#current_net:n615
#current_comb_set:n615 n583,1 n590,0 n615,1 
run_justification -full_sequential -set { 531 1 554 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n613 0 n615 1 } -verbose -store
#attempt:210
#current_net:n615
#current_comb_set:n615 n561,1 n613,0 n615,1 
run_justification -full_sequential -set { 516 1 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n590 0 n605 1 n615 1 } -verbose -store
#attempt:211
#current_net:n615
#current_comb_set:n615 n590,0 n605,1 n615,1 
run_justification -full_sequential -set { 554 0 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n590 0 n613 0 n615 1 } -verbose -store
#attempt:212
#current_net:n615
#current_comb_set:n615 n590,0 n613,0 n615,1 
run_justification -full_sequential -set { 554 0 566 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n615 1 } -verbose -store
#attempt:213
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n615,1 
run_justification -full_sequential -set { 516 1 531 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n605 1 n615 1 } -verbose -store
#attempt:214
#current_net:n615
#current_comb_set:n615 n561,1 n605,1 n615,1 
run_justification -full_sequential -set { 516 1 549 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n583 1 n590 0 n615 1 } -verbose -store
#attempt:215
#current_net:n615
#current_comb_set:n615 n583,1 n590,0 n615,1 
run_justification -full_sequential -set { 531 1 554 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n615 1 } -verbose -store
#attempt:216
#current_net:n615
#current_comb_set:n615 n561,1 n583,1 n615,1 
run_justification -full_sequential -set { 516 1 531 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n583 1 n601 1 n615 1 } -verbose -store
#attempt:217
#current_net:n615
#current_comb_set:n615 n583,1 n601,1 n615,1 
run_justification -full_sequential -set { 531 1 555 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n615 1 } -verbose -store
#attempt:218
#current_net:n615
#current_comb_set:n615 n561,1 n590,0 n615,1 
run_justification -full_sequential -set { 516 1 554 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n585 1 n601 1 n615 1 } -verbose -store
#attempt:219
#current_net:n615
#current_comb_set:n615 n585,1 n601,1 n615,1 
run_justification -full_sequential -set { 534 1 555 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 n601 1 n605 1 n613 0 n615 1 n619 0 } -verbose -store
#attempt:220
#current_net:n619
#current_comb_set:n619 n561,1 n601,1 n605,1 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 555 1 549 1 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n590 0 n601 1 n613 0 n619 0 } -verbose -store
#attempt:221
#current_net:n619
#current_comb_set:n619 n583,1 n585,1 n590,0 n601,1 n613,0 n619,0 
run_justification -full_sequential -set { 531 1 534 1 554 0 555 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n590 0 n601 1 n605 1 n613 0 n619 0 } -verbose -store
#attempt:222
#current_net:n619
#current_comb_set:n619 n583,1 n590,0 n601,1 n605,1 n613,0 n619,0 
run_justification -full_sequential -set { 531 1 554 0 555 1 549 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n605 1 n613 0 n615 1 n619 0 } -verbose -store
#attempt:223
#current_net:n619
#current_comb_set:n619 n561,1 n590,0 n605,1 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 554 0 549 1 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n605 1 n613 0 n619 0 } -verbose -store
#attempt:224
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n585,1 n605,1 n613,0 n619,0 
run_justification -full_sequential -set { 516 1 531 1 534 1 549 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n590 0 n601 1 n619 0 } -verbose -store
#attempt:225
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n585,1 n590,0 n601,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 534 1 554 0 555 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n590 0 n605 1 n615 1 n619 0 } -verbose -store
#attempt:226
#current_net:n619
#current_comb_set:n619 n583,1 n585,1 n590,0 n605,1 n615,1 n619,0 
run_justification -full_sequential -set { 531 1 534 1 554 0 549 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n605 1 n615 1 n619 0 } -verbose -store
#attempt:227
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n585,1 n605,1 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 534 1 549 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n601 1 n605 1 n613 0 n619 0 } -verbose -store
#attempt:228
#current_net:n619
#current_comb_set:n619 n561,1 n590,0 n601,1 n605,1 n613,0 n619,0 
run_justification -full_sequential -set { 516 1 554 0 555 1 549 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n605 1 n613 0 n615 1 n619 0 } -verbose -store
#attempt:229
#current_net:n619
#current_comb_set:n619 n561,1 n590,0 n605,1 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 554 0 549 1 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n601 1 n613 0 n615 1 n619 0 } -verbose -store
#attempt:230
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n601,1 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 555 1 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n590 0 n601 1 n615 1 n619 0 } -verbose -store
#attempt:231
#current_net:n619
#current_comb_set:n619 n561,1 n585,1 n590,0 n601,1 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 534 1 554 0 555 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n590 0 n601 1 n605 1 n615 1 n619 0 } -verbose -store
#attempt:232
#current_net:n619
#current_comb_set:n619 n583,1 n590,0 n601,1 n605,1 n615,1 n619,0 
run_justification -full_sequential -set { 531 1 554 0 555 1 549 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n590 0 n601 1 n605 1 n619 0 } -verbose -store
#attempt:233
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n590,0 n601,1 n605,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 554 0 555 1 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n601 1 n605 1 n619 0 } -verbose -store
#attempt:234
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n585,1 n601,1 n605,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 534 1 555 1 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n605 1 n613 0 n615 1 n619 0 } -verbose -store
#attempt:235
#current_net:n619
#current_comb_set:n619 n561,1 n585,1 n605,1 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 534 1 549 1 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n590 0 n601 1 n613 0 n615 1 n619 0 } -verbose -store
#attempt:236
#current_net:n619
#current_comb_set:n619 n585,1 n590,0 n601,1 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 534 1 554 0 555 1 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n590 0 n605 1 n615 1 n619 0 } -verbose -store
#attempt:237
#current_net:n619
#current_comb_set:n619 n583,1 n585,1 n590,0 n605,1 n615,1 n619,0 
run_justification -full_sequential -set { 531 1 534 1 554 0 549 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n601 1 n615 1 n619 0 } -verbose -store
#attempt:238
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n585,1 n601,1 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 534 1 555 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n590 0 n601 1 n605 1 n619 0 } -verbose -store
#attempt:239
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n590,0 n601,1 n605,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 554 0 555 1 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n605 1 n613 0 n615 1 n619 0 } -verbose -store
#attempt:240
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n605,1 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 549 1 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n605 1 n613 0 n615 1 n619 0 } -verbose -store
#attempt:241
#current_net:n619
#current_comb_set:n619 n583,1 n585,1 n605,1 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 531 1 534 1 549 1 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n590 0 n601 1 n605 1 n619 0 } -verbose -store
#attempt:242
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n590,0 n601,1 n605,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 554 0 555 1 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n601 1 n605 1 n615 1 n619 0 } -verbose -store
#attempt:243
#current_net:n619
#current_comb_set:n619 n561,1 n585,1 n601,1 n605,1 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 534 1 555 1 549 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n601 1 n615 1 n619 0 } -verbose -store
#attempt:244
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n585,1 n601,1 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 534 1 555 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n590 0 n615 1 n619 0 } -verbose -store
#attempt:245
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n585,1 n590,0 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 534 1 554 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n590 0 n613 0 n615 1 n619 0 } -verbose -store
#attempt:246
#current_net:n619
#current_comb_set:n619 n583,1 n585,1 n590,0 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 531 1 534 1 554 0 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n601 1 n613 0 n615 1 n619 0 } -verbose -store
#attempt:247
#current_net:n619
#current_comb_set:n619 n561,1 n590,0 n601,1 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 554 0 555 1 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n605 1 n613 0 n615 1 n619 0 } -verbose -store
#attempt:248
#current_net:n619
#current_comb_set:n619 n583,1 n585,1 n605,1 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 531 1 534 1 549 1 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n590 0 n605 1 n613 0 n615 1 n619 0 } -verbose -store
#attempt:249
#current_net:n619
#current_comb_set:n619 n585,1 n590,0 n605,1 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 534 1 554 0 549 1 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n601 1 n605 1 n613 0 n619 0 } -verbose -store
#attempt:250
#current_net:n619
#current_comb_set:n619 n561,1 n585,1 n601,1 n605,1 n613,0 n619,0 
run_justification -full_sequential -set { 516 1 534 1 555 1 549 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n590 0 n601 1 n605 1 n615 1 n619 0 } -verbose -store
#attempt:251
#current_net:n619
#current_comb_set:n619 n583,1 n590,0 n601,1 n605,1 n615,1 n619,0 
run_justification -full_sequential -set { 531 1 554 0 555 1 549 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n590 0 n605 1 n615 1 n619 0 } -verbose -store
#attempt:252
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n590,0 n605,1 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 554 0 549 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n590 0 n601 1 n605 1 n613 0 n619 0 } -verbose -store
#attempt:253
#current_net:n619
#current_comb_set:n619 n583,1 n590,0 n601,1 n605,1 n613,0 n619,0 
run_justification -full_sequential -set { 531 1 554 0 555 1 549 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n590 0 n613 0 n615 1 n619 0 } -verbose -store
#attempt:254
#current_net:n619
#current_comb_set:n619 n561,1 n585,1 n590,0 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 534 1 554 0 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n590 0 n601 1 n605 1 n613 0 n619 0 } -verbose -store
#attempt:255
#current_net:n619
#current_comb_set:n619 n585,1 n590,0 n601,1 n605,1 n613,0 n619,0 
run_justification -full_sequential -set { 534 1 554 0 555 1 549 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n590 0 n605 1 n619 0 } -verbose -store
#attempt:256
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n585,1 n590,0 n605,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 534 1 554 0 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n590 0 n601 1 n619 0 } -verbose -store
#attempt:257
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n585,1 n590,0 n601,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 534 1 554 0 555 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n590 0 n605 1 n613 0 n619 0 } -verbose -store
#attempt:258
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n590,0 n605,1 n613,0 n619,0 
run_justification -full_sequential -set { 516 1 531 1 554 0 549 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n590 0 n605 1 n615 1 n619 0 } -verbose -store
#attempt:259
#current_net:n619
#current_comb_set:n619 n561,1 n585,1 n590,0 n605,1 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 534 1 554 0 549 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n601 1 n613 0 n619 0 } -verbose -store
#attempt:260
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n585,1 n601,1 n613,0 n619,0 
run_justification -full_sequential -set { 516 1 531 1 534 1 555 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n601 1 n605 1 n613 0 n619 0 } -verbose -store
#attempt:261
#current_net:n619
#current_comb_set:n619 n561,1 n585,1 n601,1 n605,1 n613,0 n619,0 
run_justification -full_sequential -set { 516 1 534 1 555 1 549 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n590 0 n605 1 n613 0 n619 0 } -verbose -store
#attempt:262
#current_net:n619
#current_comb_set:n619 n561,1 n585,1 n590,0 n605,1 n613,0 n619,0 
run_justification -full_sequential -set { 516 1 534 1 554 0 549 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n601 1 n615 1 n619 0 } -verbose -store
#attempt:263
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n585,1 n601,1 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 534 1 555 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n590 0 n601 1 n605 1 n619 0 } -verbose -store
#attempt:264
#current_net:n619
#current_comb_set:n619 n561,1 n585,1 n590,0 n601,1 n605,1 n619,0 
run_justification -full_sequential -set { 516 1 534 1 554 0 555 1 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n590 0 n601 1 n613 0 n619 0 } -verbose -store
#attempt:265
#current_net:n619
#current_comb_set:n619 n561,1 n585,1 n590,0 n601,1 n613,0 n619,0 
run_justification -full_sequential -set { 516 1 534 1 554 0 555 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n601 1 n605 1 n619 0 } -verbose -store
#attempt:266
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n585,1 n601,1 n605,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 534 1 555 1 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n601 1 n605 1 n613 0 n619 0 } -verbose -store
#attempt:267
#current_net:n619
#current_comb_set:n619 n585,1 n601,1 n605,1 n613,0 n619,0 
run_justification -full_sequential -set { 534 1 555 1 549 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n590 0 n601 1 n613 0 n619 0 } -verbose -store
#attempt:268
#current_net:n619
#current_comb_set:n619 n583,1 n590,0 n601,1 n613,0 n619,0 
run_justification -full_sequential -set { 531 1 554 0 555 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n605 1 n613 0 n615 1 n619 0 } -verbose -store
#attempt:269
#current_net:n619
#current_comb_set:n619 n583,1 n605,1 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 531 1 549 1 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n601 1 n605 1 n619 0 } -verbose -store
#attempt:270
#current_net:n619
#current_comb_set:n619 n583,1 n585,1 n601,1 n605,1 n619,0 
run_justification -full_sequential -set { 531 1 534 1 555 1 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n590 0 n605 1 n619 0 } -verbose -store
#attempt:271
#current_net:n619
#current_comb_set:n619 n561,1 n585,1 n590,0 n605,1 n619,0 
run_justification -full_sequential -set { 516 1 534 1 554 0 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n605 1 n613 0 n619 0 } -verbose -store
#attempt:272
#current_net:n619
#current_comb_set:n619 n561,1 n585,1 n605,1 n613,0 n619,0 
run_justification -full_sequential -set { 516 1 534 1 549 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n601 1 n613 0 n615 1 n619 0 } -verbose -store
#attempt:273
#current_net:n619
#current_comb_set:n619 n585,1 n601,1 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 534 1 555 1 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n590 0 n601 1 n605 1 n613 0 n619 0 } -verbose -store
#attempt:274
#current_net:n619
#current_comb_set:n619 n590,0 n601,1 n605,1 n613,0 n619,0 
run_justification -full_sequential -set { 554 0 555 1 549 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n613 0 n615 1 n619 0 } -verbose -store
#attempt:275
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n590 0 n605 1 n613 0 n615 1 n619 0 } -verbose -store
#attempt:276
#current_net:n619
#current_comb_set:n619 n590,0 n605,1 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 554 0 549 1 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n590 0 n601 1 n605 1 n613 0 n619 0 } -verbose -store
#attempt:277
#current_net:n619
#current_comb_set:n619 n590,0 n601,1 n605,1 n613,0 n619,0 
run_justification -full_sequential -set { 554 0 555 1 549 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n590 0 n601 1 n613 0 n619 0 } -verbose -store
#attempt:278
#current_net:n619
#current_comb_set:n619 n583,1 n590,0 n601,1 n613,0 n619,0 
run_justification -full_sequential -set { 531 1 554 0 555 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n601 1 n615 1 n619 0 } -verbose -store
#attempt:279
#current_net:n619
#current_comb_set:n619 n561,1 n590,0 n601,1 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 554 0 555 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n590 0 n605 1 n619 0 } -verbose -store
#attempt:280
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n590,0 n605,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 554 0 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n590 0 n601 1 n605 1 n619 0 } -verbose -store
#attempt:281
#current_net:n619
#current_comb_set:n619 n583,1 n590,0 n601,1 n605,1 n619,0 
run_justification -full_sequential -set { 531 1 554 0 555 1 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n590 0 n601 1 n605 1 n619 0 } -verbose -store
#attempt:282
#current_net:n619
#current_comb_set:n619 n583,1 n590,0 n601,1 n605,1 n619,0 
run_justification -full_sequential -set { 531 1 554 0 555 1 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n590 0 n601 1 n605 1 n613 0 n619 0 } -verbose -store
#attempt:283
#current_net:n619
#current_comb_set:n619 n590,0 n601,1 n605,1 n613,0 n619,0 
run_justification -full_sequential -set { 554 0 555 1 549 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n601 1 n605 1 n613 0 n619 0 } -verbose -store
#attempt:284
#current_net:n619
#current_comb_set:n619 n585,1 n601,1 n605,1 n613,0 n619,0 
run_justification -full_sequential -set { 534 1 555 1 549 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n605 1 n615 1 n619 0 } -verbose -store
#attempt:285
#current_net:n619
#current_comb_set:n619 n583,1 n585,1 n605,1 n615,1 n619,0 
run_justification -full_sequential -set { 531 1 534 1 549 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n590 0 n613 0 n619 0 } -verbose -store
#attempt:286
#current_net:n619
#current_comb_set:n619 n561,1 n585,1 n590,0 n613,0 n619,0 
run_justification -full_sequential -set { 516 1 534 1 554 0 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n590 0 n601 1 n613 0 n615 1 n619 0 } -verbose -store
#attempt:287
#current_net:n619
#current_comb_set:n619 n590,0 n601,1 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 554 0 555 1 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n601 1 n613 0 n619 0 } -verbose -store
#attempt:288
#current_net:n619
#current_comb_set:n619 n583,1 n585,1 n601,1 n613,0 n619,0 
run_justification -full_sequential -set { 531 1 534 1 555 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n601 1 n605 1 n613 0 n615 1 n619 0 } -verbose -store
#attempt:289
#current_net:n619
#current_comb_set:n619 n601,1 n605,1 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 555 1 549 1 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n601 1 n605 1 n619 0 } -verbose -store
#attempt:290
#current_net:n619
#current_comb_set:n619 n561,1 n590,0 n601,1 n605,1 n619,0 
run_justification -full_sequential -set { 516 1 554 0 555 1 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n605 1 n613 0 n615 1 n619 0 } -verbose -store
#attempt:291
#current_net:n619
#current_comb_set:n619 n561,1 n605,1 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 549 1 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n601 1 n605 1 n613 0 n615 1 n619 0 } -verbose -store
#attempt:292
#current_net:n619
#current_comb_set:n619 n601,1 n605,1 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 555 1 549 1 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n601 1 n605 1 n613 0 n619 0 } -verbose -store
#attempt:293
#current_net:n619
#current_comb_set:n619 n585,1 n601,1 n605,1 n613,0 n619,0 
run_justification -full_sequential -set { 534 1 555 1 549 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n590 0 n605 1 n619 0 } -verbose -store
#attempt:294
#current_net:n619
#current_comb_set:n619 n583,1 n585,1 n590,0 n605,1 n619,0 
run_justification -full_sequential -set { 531 1 534 1 554 0 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n601 1 n615 1 n619 0 } -verbose -store
#attempt:295
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n601,1 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 555 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n601 1 n613 0 n619 0 } -verbose -store
#attempt:296
#current_net:n619
#current_comb_set:n619 n561,1 n585,1 n601,1 n613,0 n619,0 
run_justification -full_sequential -set { 516 1 534 1 555 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n601 1 n619 0 } -verbose -store
#attempt:297
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n585,1 n601,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 534 1 555 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n605 1 n619 0 } -verbose -store
#attempt:298
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n585,1 n605,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 534 1 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n590 0 n601 1 n619 0 } -verbose -store
#attempt:299
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n590,0 n601,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 554 0 555 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n590 0 n605 1 n613 0 n619 0 } -verbose -store
#attempt:300
#current_net:n619
#current_comb_set:n619 n585,1 n590,0 n605,1 n613,0 n619,0 
run_justification -full_sequential -set { 534 1 554 0 549 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n605 1 n613 0 n615 1 n619 0 } -verbose -store
#attempt:301
#current_net:n619
#current_comb_set:n619 n585,1 n605,1 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 534 1 549 1 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n601 1 n605 1 n615 1 n619 0 } -verbose -store
#attempt:302
#current_net:n619
#current_comb_set:n619 n583,1 n601,1 n605,1 n615,1 n619,0 
run_justification -full_sequential -set { 531 1 555 1 549 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n601 1 n613 0 n615 1 n619 0 } -verbose -store
#attempt:303
#current_net:n619
#current_comb_set:n619 n585,1 n601,1 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 534 1 555 1 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n590 0 n613 0 n619 0 } -verbose -store
#attempt:304
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n590,0 n613,0 n619,0 
run_justification -full_sequential -set { 516 1 531 1 554 0 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n590 0 n613 0 n615 1 n619 0 } -verbose -store
#attempt:305
#current_net:n619
#current_comb_set:n619 n583,1 n590,0 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 531 1 554 0 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n590 0 n605 1 n615 1 n619 0 } -verbose -store
#attempt:306
#current_net:n619
#current_comb_set:n619 n585,1 n590,0 n605,1 n615,1 n619,0 
run_justification -full_sequential -set { 534 1 554 0 549 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n605 1 n615 1 n619 0 } -verbose -store
#attempt:307
#current_net:n619
#current_comb_set:n619 n583,1 n585,1 n605,1 n615,1 n619,0 
run_justification -full_sequential -set { 531 1 534 1 549 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n590 0 n601 1 n615 1 n619 0 } -verbose -store
#attempt:308
#current_net:n619
#current_comb_set:n619 n585,1 n590,0 n601,1 n615,1 n619,0 
run_justification -full_sequential -set { 534 1 554 0 555 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n605 1 n613 0 n619 0 } -verbose -store
#attempt:309
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n605,1 n613,0 n619,0 
run_justification -full_sequential -set { 516 1 531 1 549 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n613 0 n619 0 } -verbose -store
#attempt:310
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n585,1 n613,0 n619,0 
run_justification -full_sequential -set { 516 1 531 1 534 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n601 1 n613 0 n619 0 } -verbose -store
#attempt:311
#current_net:n619
#current_comb_set:n619 n561,1 n585,1 n601,1 n613,0 n619,0 
run_justification -full_sequential -set { 516 1 534 1 555 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n605 1 n613 0 n615 1 n619 0 } -verbose -store
#attempt:312
#current_net:n619
#current_comb_set:n619 n561,1 n605,1 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 549 1 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n605 1 n615 1 n619 0 } -verbose -store
#attempt:313
#current_net:n619
#current_comb_set:n619 n561,1 n590,0 n605,1 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 554 0 549 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n590 0 n601 1 n613 0 n619 0 } -verbose -store
#attempt:314
#current_net:n619
#current_comb_set:n619 n583,1 n590,0 n601,1 n613,0 n619,0 
run_justification -full_sequential -set { 531 1 554 0 555 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n601 1 n605 1 n615 1 n619 0 } -verbose -store
#attempt:315
#current_net:n619
#current_comb_set:n619 n561,1 n601,1 n605,1 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 555 1 549 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n601 1 n605 1 n613 0 n619 0 } -verbose -store
#attempt:316
#current_net:n619
#current_comb_set:n619 n585,1 n601,1 n605,1 n613,0 n619,0 
run_justification -full_sequential -set { 534 1 555 1 549 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n601 1 n613 0 n619 0 } -verbose -store
#attempt:317
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n601,1 n613,0 n619,0 
run_justification -full_sequential -set { 516 1 531 1 555 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n601 1 n613 0 n619 0 } -verbose -store
#attempt:318
#current_net:n619
#current_comb_set:n619 n583,1 n601,1 n613,0 n619,0 
run_justification -full_sequential -set { 531 1 555 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n590 0 n619 0 } -verbose -store
#attempt:319
#current_net:n619
#current_comb_set:n619 n583,1 n585,1 n590,0 n619,0 
run_justification -full_sequential -set { 531 1 534 1 554 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n601 1 n615 1 n619 0 } -verbose -store
#attempt:320
#current_net:n619
#current_comb_set:n619 n585,1 n601,1 n615,1 n619,0 
run_justification -full_sequential -set { 534 1 555 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n605 1 n613 0 n619 0 } -verbose -store
#attempt:321
#current_net:n619
#current_comb_set:n619 n583,1 n605,1 n613,0 n619,0 
run_justification -full_sequential -set { 531 1 549 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n615 1 n619 0 } -verbose -store
#attempt:322
#current_net:n619
#current_comb_set:n619 n561,1 n585,1 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 534 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n605 1 n619 0 } -verbose -store
#attempt:323
#current_net:n619
#current_comb_set:n619 n583,1 n585,1 n605,1 n619,0 
run_justification -full_sequential -set { 531 1 534 1 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n590 0 n605 1 n619 0 } -verbose -store
#attempt:324
#current_net:n619
#current_comb_set:n619 n583,1 n590,0 n605,1 n619,0 
run_justification -full_sequential -set { 531 1 554 0 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n605 1 n619 0 } -verbose -store
#attempt:325
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n605,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n613 0 n619 0 } -verbose -store
#attempt:326
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n613,0 n619,0 
run_justification -full_sequential -set { 516 1 531 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n605 1 n613 0 n615 1 n619 0 } -verbose -store
#attempt:327
#current_net:n619
#current_comb_set:n619 n605,1 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 549 1 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n590 0 n601 1 n615 1 n619 0 } -verbose -store
#attempt:328
#current_net:n619
#current_comb_set:n619 n590,0 n601,1 n615,1 n619,0 
run_justification -full_sequential -set { 554 0 555 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n619 0 } -verbose -store
#attempt:329
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n585,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 534 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n613 0 n615 1 n619 0 } -verbose -store
#attempt:330
#current_net:n619
#current_comb_set:n619 n561,1 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n590 0 n613 0 n619 0 } -verbose -store
#attempt:331
#current_net:n619
#current_comb_set:n619 n585,1 n590,0 n613,0 n619,0 
run_justification -full_sequential -set { 534 1 554 0 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n601 1 n613 0 n619 0 } -verbose -store
#attempt:332
#current_net:n619
#current_comb_set:n619 n583,1 n601,1 n613,0 n619,0 
run_justification -full_sequential -set { 531 1 555 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n590 0 n601 1 n613 0 n619 0 } -verbose -store
#attempt:333
#current_net:n619
#current_comb_set:n619 n590,0 n601,1 n613,0 n619,0 
run_justification -full_sequential -set { 554 0 555 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n605 1 n619 0 } -verbose -store
#attempt:334
#current_net:n619
#current_comb_set:n619 n561,1 n590,0 n605,1 n619,0 
run_justification -full_sequential -set { 516 1 554 0 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n605 1 n619 0 } -verbose -store
#attempt:335
#current_net:n619
#current_comb_set:n619 n561,1 n590,0 n605,1 n619,0 
run_justification -full_sequential -set { 516 1 554 0 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n590 0 n619 0 } -verbose -store
#attempt:336
#current_net:n619
#current_comb_set:n619 n583,1 n585,1 n590,0 n619,0 
run_justification -full_sequential -set { 531 1 534 1 554 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n615 1 n619 0 } -verbose -store
#attempt:337
#current_net:n619
#current_comb_set:n619 n561,1 n585,1 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 534 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n590 0 n615 1 n619 0 } -verbose -store
#attempt:338
#current_net:n619
#current_comb_set:n619 n585,1 n590,0 n615,1 n619,0 
run_justification -full_sequential -set { 534 1 554 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n590 0 n605 1 n619 0 } -verbose -store
#attempt:339
#current_net:n619
#current_comb_set:n619 n583,1 n590,0 n605,1 n619,0 
run_justification -full_sequential -set { 531 1 554 0 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n605 1 n619 0 } -verbose -store
#attempt:340
#current_net:n619
#current_comb_set:n619 n561,1 n590,0 n605,1 n619,0 
run_justification -full_sequential -set { 516 1 554 0 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n613 0 n615 1 n619 0 } -verbose -store
#attempt:341
#current_net:n619
#current_comb_set:n619 n585,1 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 534 1 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n590 0 n613 0 n615 1 n619 0 } -verbose -store
#attempt:342
#current_net:n619
#current_comb_set:n619 n590,0 n613,0 n615,1 n619,0 
run_justification -full_sequential -set { 554 0 566 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n605 1 n619 0 } -verbose -store
#attempt:343
#current_net:n619
#current_comb_set:n619 n561,1 n585,1 n605,1 n619,0 
run_justification -full_sequential -set { 516 1 534 1 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n619 0 } -verbose -store
#attempt:344
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n585,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 534 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n605 1 n615 1 n619 0 } -verbose -store
#attempt:345
#current_net:n619
#current_comb_set:n619 n583,1 n605,1 n615,1 n619,0 
run_justification -full_sequential -set { 531 1 549 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n601 1 n615 1 n619 0 } -verbose -store
#attempt:346
#current_net:n619
#current_comb_set:n619 n561,1 n601,1 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 555 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n601 1 n613 0 n619 0 } -verbose -store
#attempt:347
#current_net:n619
#current_comb_set:n619 n585,1 n601,1 n613,0 n619,0 
run_justification -full_sequential -set { 534 1 555 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n585 1 n619 0 } -verbose -store
#attempt:348
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n585,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 534 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n590 0 n619 0 } -verbose -store
#attempt:349
#current_net:n619
#current_comb_set:n619 n561,1 n585,1 n590,0 n619,0 
run_justification -full_sequential -set { 516 1 534 1 554 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n605 1 n613 0 n619 0 } -verbose -store
#attempt:350
#current_net:n619
#current_comb_set:n619 n585,1 n605,1 n613,0 n619,0 
run_justification -full_sequential -set { 534 1 549 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n605 1 n619 0 } -verbose -store
#attempt:351
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n605,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n590 0 n619 0 } -verbose -store
#attempt:352
#current_net:n619
#current_comb_set:n619 n583,1 n585,1 n590,0 n619,0 
run_justification -full_sequential -set { 531 1 534 1 554 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n590 0 n613 0 n619 0 } -verbose -store
#attempt:353
#current_net:n619
#current_comb_set:n619 n585,1 n590,0 n613,0 n619,0 
run_justification -full_sequential -set { 534 1 554 0 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n605 1 n619 0 } -verbose -store
#attempt:354
#current_net:n619
#current_comb_set:n619 n583,1 n585,1 n605,1 n619,0 
run_justification -full_sequential -set { 531 1 534 1 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n601 1 n605 1 n619 0 } -verbose -store
#attempt:355
#current_net:n619
#current_comb_set:n619 n561,1 n601,1 n605,1 n619,0 
run_justification -full_sequential -set { 516 1 555 1 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n601 1 n613 0 n619 0 } -verbose -store
#attempt:356
#current_net:n619
#current_comb_set:n619 n561,1 n601,1 n613,0 n619,0 
run_justification -full_sequential -set { 516 1 555 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n615 1 n619 0 } -verbose -store
#attempt:357
#current_net:n619
#current_comb_set:n619 n561,1 n585,1 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 534 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n605 1 n619 0 } -verbose -store
#attempt:358
#current_net:n619
#current_comb_set:n619 n561,1 n585,1 n605,1 n619,0 
run_justification -full_sequential -set { 516 1 534 1 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n601 1 n615 1 n619 0 } -verbose -store
#attempt:359
#current_net:n619
#current_comb_set:n619 n561,1 n601,1 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 555 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n605 1 n615 1 n619 0 } -verbose -store
#attempt:360
#current_net:n619
#current_comb_set:n619 n561,1 n605,1 n615,1 n619,0 
run_justification -full_sequential -set { 516 1 549 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n590 0 n601 1 n613 0 n619 0 } -verbose -store
#attempt:361
#current_net:n619
#current_comb_set:n619 n590,0 n601,1 n613,0 n619,0 
run_justification -full_sequential -set { 554 0 555 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n590 0 n601 1 n615 1 n619 0 } -verbose -store
#attempt:362
#current_net:n619
#current_comb_set:n619 n590,0 n601,1 n615,1 n619,0 
run_justification -full_sequential -set { 554 0 555 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n590 0 n613 0 n619 0 } -verbose -store
#attempt:363
#current_net:n619
#current_comb_set:n619 n561,1 n590,0 n613,0 n619,0 
run_justification -full_sequential -set { 516 1 554 0 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n605 1 n613 0 n619 0 } -verbose -store
#attempt:364
#current_net:n619
#current_comb_set:n619 n561,1 n605,1 n613,0 n619,0 
run_justification -full_sequential -set { 516 1 549 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n590 0 n615 1 n619 0 } -verbose -store
#attempt:365
#current_net:n619
#current_comb_set:n619 n583,1 n590,0 n615,1 n619,0 
run_justification -full_sequential -set { 531 1 554 0 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n605 1 n613 0 n619 0 } -verbose -store
#attempt:366
#current_net:n619
#current_comb_set:n619 n585,1 n605,1 n613,0 n619,0 
run_justification -full_sequential -set { 534 1 549 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n590 0 n605 1 n619 0 } -verbose -store
#attempt:367
#current_net:n619
#current_comb_set:n619 n590,0 n605,1 n619,0 
run_justification -full_sequential -set { 554 0 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n590 0 n605 1 n619 0 } -verbose -store
#attempt:368
#current_net:n619
#current_comb_set:n619 n590,0 n605,1 n619,0 
run_justification -full_sequential -set { 554 0 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n601 1 n605 1 n619 0 } -verbose -store
#attempt:369
#current_net:n619
#current_comb_set:n619 n601,1 n605,1 n619,0 
run_justification -full_sequential -set { 555 1 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n605 1 n613 0 n619 0 } -verbose -store
#attempt:370
#current_net:n619
#current_comb_set:n619 n605,1 n613,0 n619,0 
run_justification -full_sequential -set { 549 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n605 1 n619 0 } -verbose -store
#attempt:371
#current_net:n619
#current_comb_set:n619 n583,1 n605,1 n619,0 
run_justification -full_sequential -set { 531 1 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n613 0 n619 0 } -verbose -store
#attempt:372
#current_net:n619
#current_comb_set:n619 n585,1 n613,0 n619,0 
run_justification -full_sequential -set { 534 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n601 1 n619 0 } -verbose -store
#attempt:373
#current_net:n619
#current_comb_set:n619 n585,1 n601,1 n619,0 
run_justification -full_sequential -set { 534 1 555 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n601 1 n605 1 n619 0 } -verbose -store
#attempt:374
#current_net:n619
#current_comb_set:n619 n601,1 n605,1 n619,0 
run_justification -full_sequential -set { 555 1 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n605 1 n613 0 n619 0 } -verbose -store
#attempt:375
#current_net:n619
#current_comb_set:n619 n605,1 n613,0 n619,0 
run_justification -full_sequential -set { 549 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n605 1 n613 0 n619 0 } -verbose -store
#attempt:376
#current_net:n619
#current_comb_set:n619 n605,1 n613,0 n619,0 
run_justification -full_sequential -set { 549 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n590 0 n619 0 } -verbose -store
#attempt:377
#current_net:n619
#current_comb_set:n619 n583,1 n590,0 n619,0 
run_justification -full_sequential -set { 531 1 554 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n601 1 n613 0 n619 0 } -verbose -store
#attempt:378
#current_net:n619
#current_comb_set:n619 n601,1 n613,0 n619,0 
run_justification -full_sequential -set { 555 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n590 0 n619 0 } -verbose -store
#attempt:379
#current_net:n619
#current_comb_set:n619 n583,1 n590,0 n619,0 
run_justification -full_sequential -set { 531 1 554 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n605 1 n615 1 n619 0 } -verbose -store
#attempt:380
#current_net:n619
#current_comb_set:n619 n605,1 n615,1 n619,0 
run_justification -full_sequential -set { 549 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n613 0 n619 0 } -verbose -store
#attempt:381
#current_net:n619
#current_comb_set:n619 n583,1 n613,0 n619,0 
run_justification -full_sequential -set { 531 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n619 0 } -verbose -store
#attempt:382
#current_net:n619
#current_comb_set:n619 n561,1 n585,1 n619,0 
run_justification -full_sequential -set { 516 1 534 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n601 1 n619 0 } -verbose -store
#attempt:383
#current_net:n619
#current_comb_set:n619 n561,1 n601,1 n619,0 
run_justification -full_sequential -set { 516 1 555 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n613 0 n619 0 } -verbose -store
#attempt:384
#current_net:n619
#current_comb_set:n619 n561,1 n613,0 n619,0 
run_justification -full_sequential -set { 516 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n605 1 n619 0 } -verbose -store
#attempt:385
#current_net:n619
#current_comb_set:n619 n561,1 n605,1 n619,0 
run_justification -full_sequential -set { 516 1 549 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 n590 0 n619 0 } -verbose -store
#attempt:386
#current_net:n619
#current_comb_set:n619 n585,1 n590,0 n619,0 
run_justification -full_sequential -set { 534 1 554 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n601 1 n615 1 n619 0 } -verbose -store
#attempt:387
#current_net:n619
#current_comb_set:n619 n601,1 n615,1 n619,0 
run_justification -full_sequential -set { 555 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n601 1 n619 0 } -verbose -store
#attempt:388
#current_net:n619
#current_comb_set:n619 n583,1 n601,1 n619,0 
run_justification -full_sequential -set { 531 1 555 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n613 0 n619 0 } -verbose -store
#attempt:389
#current_net:n619
#current_comb_set:n619 n583,1 n613,0 n619,0 
run_justification -full_sequential -set { 531 1 566 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n605 1 n615 1 n619 0 } -verbose -store
#attempt:390
#current_net:n619
#current_comb_set:n619 n605,1 n615,1 n619,0 
run_justification -full_sequential -set { 549 1 567 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n585 1 n619 0 } -verbose -store
#attempt:391
#current_net:n619
#current_comb_set:n619 n561,1 n585,1 n619,0 
run_justification -full_sequential -set { 516 1 534 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 n585 1 n619 0 } -verbose -store
#attempt:392
#current_net:n619
#current_comb_set:n619 n583,1 n585,1 n619,0 
run_justification -full_sequential -set { 531 1 534 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 n583 1 n619 0 } -verbose -store
#attempt:393
#current_net:n619
#current_comb_set:n619 n561,1 n583,1 n619,0 
run_justification -full_sequential -set { 516 1 531 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n643 1 n641 0 } -verbose -store
#attempt:394
#current_net:n643
#current_comb_set:n643 n643,1 n641,0 
run_justification -full_sequential -set { 502 1 501 0 } -verbose -store
#run_justification -full_sequential -set { n643 1 n641 0 n645 0 } -verbose -store
#attempt:395
#current_net:n645
#current_comb_set:n645 n643,1 n641,0 n645,0 
run_justification -full_sequential -set { 502 1 501 0 503 0 } -verbose -store
#run_justification -full_sequential -set { n641 0 n645 0 } -verbose -store
#attempt:396
#current_net:n645
#current_comb_set:n645 n641,0 n645,0 
run_justification -full_sequential -set { 501 0 503 0 } -verbose -store
#run_justification -full_sequential -set { n643 1 n645 0 } -verbose -store
#attempt:397
#current_net:n645
#current_comb_set:n645 n643,1 n645,0 
run_justification -full_sequential -set { 502 1 503 0 } -verbose -store
#run_justification -full_sequential -set { n645 0 n643 1 n641 0 n647 1 } -verbose -store
#attempt:398
#current_net:n647
#current_comb_set:n647 n645,0 n643,1 n641,0 n647,1 
run_justification -full_sequential -set { 503 0 502 1 501 0 504 1 } -verbose -store
#run_justification -full_sequential -set { n643 1 n641 0 n647 1 } -verbose -store
#attempt:399
#current_net:n647
#current_comb_set:n647 n643,1 n641,0 n647,1 
run_justification -full_sequential -set { 502 1 501 0 504 1 } -verbose -store
#run_justification -full_sequential -set { n645 0 n641 0 n647 1 } -verbose -store
#attempt:400
#current_net:n647
#current_comb_set:n647 n645,0 n641,0 n647,1 
run_justification -full_sequential -set { 503 0 501 0 504 1 } -verbose -store
#run_justification -full_sequential -set { n645 0 n643 1 n647 1 } -verbose -store
#attempt:401
#current_net:n647
#current_comb_set:n647 n645,0 n643,1 n647,1 
run_justification -full_sequential -set { 503 0 502 1 504 1 } -verbose -store
#run_justification -full_sequential -set { n641 0 n647 1 } -verbose -store
#attempt:402
#current_net:n647
#current_comb_set:n647 n641,0 n647,1 
run_justification -full_sequential -set { 501 0 504 1 } -verbose -store
#run_justification -full_sequential -set { n643 1 n647 1 } -verbose -store
#attempt:403
#current_net:n647
#current_comb_set:n647 n643,1 n647,1 
run_justification -full_sequential -set { 502 1 504 1 } -verbose -store
#run_justification -full_sequential -set { n645 0 n647 1 } -verbose -store
#attempt:404
#current_net:n647
#current_comb_set:n647 n645,0 n647,1 
run_justification -full_sequential -set { 503 0 504 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n679 0 } -verbose -store
#attempt:405
#current_net:n681
#current_comb_set:n681 n681,1 n679,0 
run_justification -full_sequential -set { 485 1 482 0 } -verbose -store
#run_justification -full_sequential -set { n681 1 n679 0 n683 0 } -verbose -store
#attempt:406
#current_net:n683
#current_comb_set:n683 n681,1 n679,0 n683,0 
run_justification -full_sequential -set { 485 1 482 0 486 0 } -verbose -store
#run_justification -full_sequential -set { n679 0 n683 0 } -verbose -store
#attempt:407
#current_net:n683
#current_comb_set:n683 n679,0 n683,0 
run_justification -full_sequential -set { 482 0 486 0 } -verbose -store
#run_justification -full_sequential -set { n681 1 n683 0 } -verbose -store
#attempt:408
#current_net:n683
#current_comb_set:n683 n681,1 n683,0 
run_justification -full_sequential -set { 485 1 486 0 } -verbose -store
#run_justification -full_sequential -set { n683 0 n681 1 n679 0 n684 1 } -verbose -store
#attempt:409
#current_net:n684
#current_comb_set:n684 n683,0 n681,1 n679,0 n684,1 
run_justification -full_sequential -set { 486 0 485 1 482 0 487 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n679 0 n684 1 } -verbose -store
#attempt:410
#current_net:n684
#current_comb_set:n684 n681,1 n679,0 n684,1 
run_justification -full_sequential -set { 485 1 482 0 487 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n679 0 n684 1 } -verbose -store
#attempt:411
#current_net:n684
#current_comb_set:n684 n683,0 n679,0 n684,1 
run_justification -full_sequential -set { 486 0 482 0 487 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n681 1 n684 1 } -verbose -store
#attempt:412
#current_net:n684
#current_comb_set:n684 n683,0 n681,1 n684,1 
run_justification -full_sequential -set { 486 0 485 1 487 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n684 1 } -verbose -store
#attempt:413
#current_net:n684
#current_comb_set:n684 n679,0 n684,1 
run_justification -full_sequential -set { 482 0 487 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n684 1 } -verbose -store
#attempt:414
#current_net:n684
#current_comb_set:n684 n681,1 n684,1 
run_justification -full_sequential -set { 485 1 487 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n684 1 } -verbose -store
#attempt:415
#current_net:n684
#current_comb_set:n684 n683,0 n684,1 
run_justification -full_sequential -set { 486 0 487 1 } -verbose -store
#run_justification -full_sequential -set { n684 1 n683 0 n681 1 n679 0 n704 0 } -verbose -store
#attempt:416
#current_net:n704
#current_comb_set:n704 n684,1 n683,0 n681,1 n679,0 n704,0 
run_justification -full_sequential -set { 487 1 486 0 485 1 482 0 488 0 } -verbose -store
#run_justification -full_sequential -set { n683 0 n681 1 n679 0 n704 0 } -verbose -store
#attempt:417
#current_net:n704
#current_comb_set:n704 n683,0 n681,1 n679,0 n704,0 
run_justification -full_sequential -set { 486 0 485 1 482 0 488 0 } -verbose -store
#run_justification -full_sequential -set { n684 1 n681 1 n679 0 n704 0 } -verbose -store
#attempt:418
#current_net:n704
#current_comb_set:n704 n684,1 n681,1 n679,0 n704,0 
run_justification -full_sequential -set { 487 1 485 1 482 0 488 0 } -verbose -store
#run_justification -full_sequential -set { n684 1 n683 0 n679 0 n704 0 } -verbose -store
#attempt:419
#current_net:n704
#current_comb_set:n704 n684,1 n683,0 n679,0 n704,0 
run_justification -full_sequential -set { 487 1 486 0 482 0 488 0 } -verbose -store
#run_justification -full_sequential -set { n684 1 n683 0 n681 1 n704 0 } -verbose -store
#attempt:420
#current_net:n704
#current_comb_set:n704 n684,1 n683,0 n681,1 n704,0 
run_justification -full_sequential -set { 487 1 486 0 485 1 488 0 } -verbose -store
#run_justification -full_sequential -set { n681 1 n679 0 n704 0 } -verbose -store
#attempt:421
#current_net:n704
#current_comb_set:n704 n681,1 n679,0 n704,0 
run_justification -full_sequential -set { 485 1 482 0 488 0 } -verbose -store
#run_justification -full_sequential -set { n683 0 n679 0 n704 0 } -verbose -store
#attempt:422
#current_net:n704
#current_comb_set:n704 n683,0 n679,0 n704,0 
run_justification -full_sequential -set { 486 0 482 0 488 0 } -verbose -store
#run_justification -full_sequential -set { n683 0 n681 1 n704 0 } -verbose -store
#attempt:423
#current_net:n704
#current_comb_set:n704 n683,0 n681,1 n704,0 
run_justification -full_sequential -set { 486 0 485 1 488 0 } -verbose -store
#run_justification -full_sequential -set { n684 1 n679 0 n704 0 } -verbose -store
#attempt:424
#current_net:n704
#current_comb_set:n704 n684,1 n679,0 n704,0 
run_justification -full_sequential -set { 487 1 482 0 488 0 } -verbose -store
#run_justification -full_sequential -set { n684 1 n681 1 n704 0 } -verbose -store
#attempt:425
#current_net:n704
#current_comb_set:n704 n684,1 n681,1 n704,0 
run_justification -full_sequential -set { 487 1 485 1 488 0 } -verbose -store
#run_justification -full_sequential -set { n684 1 n683 0 n704 0 } -verbose -store
#attempt:426
#current_net:n704
#current_comb_set:n704 n684,1 n683,0 n704,0 
run_justification -full_sequential -set { 487 1 486 0 488 0 } -verbose -store
#run_justification -full_sequential -set { n679 0 n704 0 } -verbose -store
#attempt:427
#current_net:n704
#current_comb_set:n704 n679,0 n704,0 
run_justification -full_sequential -set { 482 0 488 0 } -verbose -store
#run_justification -full_sequential -set { n681 1 n704 0 } -verbose -store
#attempt:428
#current_net:n704
#current_comb_set:n704 n681,1 n704,0 
run_justification -full_sequential -set { 485 1 488 0 } -verbose -store
#run_justification -full_sequential -set { n683 0 n704 0 } -verbose -store
#attempt:429
#current_net:n704
#current_comb_set:n704 n683,0 n704,0 
run_justification -full_sequential -set { 486 0 488 0 } -verbose -store
#run_justification -full_sequential -set { n684 1 n704 0 } -verbose -store
#attempt:430
#current_net:n704
#current_comb_set:n704 n684,1 n704,0 
run_justification -full_sequential -set { 487 1 488 0 } -verbose -store
#run_justification -full_sequential -set { n702 1 n700 0 } -verbose -store
#attempt:431
#current_net:n702
#current_comb_set:n702 n702,1 n700,0 
run_justification -full_sequential -set { 469 1 447 0 } -verbose -store
#run_justification -full_sequential -set { n702 1 n700 0 n703 0 } -verbose -store
#attempt:432
#current_net:n703
#current_comb_set:n703 n702,1 n700,0 n703,0 
run_justification -full_sequential -set { 469 1 447 0 470 0 } -verbose -store
#run_justification -full_sequential -set { n700 0 n703 0 } -verbose -store
#attempt:433
#current_net:n703
#current_comb_set:n703 n700,0 n703,0 
run_justification -full_sequential -set { 447 0 470 0 } -verbose -store
#run_justification -full_sequential -set { n702 1 n703 0 } -verbose -store
#attempt:434
#current_net:n703
#current_comb_set:n703 n702,1 n703,0 
run_justification -full_sequential -set { 469 1 470 0 } -verbose -store
#run_justification -full_sequential -set { n681 1 n700 0 n702 1 n703 0 n704 0 n705 1 } -verbose -store
#attempt:435
#current_net:n705
#current_comb_set:n705 n681,1 n700,0 n702,1 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 485 1 447 0 469 1 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n683 0 n684 1 n700 0 n705 1 } -verbose -store
#attempt:436
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n683,0 n684,1 n700,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 486 0 487 1 447 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n684 1 n702 1 n703 0 n704 0 n705 1 } -verbose -store
#attempt:437
#current_net:n705
#current_comb_set:n705 n683,0 n684,1 n702,1 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 486 0 487 1 469 1 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n683 0 n684 1 n703 0 n704 0 n705 1 } -verbose -store
#attempt:438
#current_net:n705
#current_comb_set:n705 n679,0 n683,0 n684,1 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 486 0 487 1 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n700 0 n702 1 n703 0 n704 0 n705 1 } -verbose -store
#attempt:439
#current_net:n705
#current_comb_set:n705 n681,1 n700,0 n702,1 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 485 1 447 0 469 1 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n700 0 n703 0 n704 0 n705 1 } -verbose -store
#attempt:440
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n700,0 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 447 0 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n684 1 n702 1 n703 0 n705 1 } -verbose -store
#attempt:441
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n684,1 n702,1 n703,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 487 1 469 1 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n684 1 n700 0 n702 1 n705 1 } -verbose -store
#attempt:442
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n684,1 n700,0 n702,1 n705,1 
run_justification -full_sequential -set { 482 0 485 1 487 1 447 0 469 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n683 0 n684 1 n703 0 n705 1 } -verbose -store
#attempt:443
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n683,0 n684,1 n703,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 486 0 487 1 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n683 0 n684 1 n700 0 n703 0 n705 1 } -verbose -store
#attempt:444
#current_net:n705
#current_comb_set:n705 n681,1 n683,0 n684,1 n700,0 n703,0 n705,1 
run_justification -full_sequential -set { 485 1 486 0 487 1 447 0 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n700 0 n702 1 n704 0 n705 1 } -verbose -store
#attempt:445
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n700,0 n702,1 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 447 0 469 1 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n684 1 n700 0 n702 1 n703 0 n704 0 n705 1 } -verbose -store
#attempt:446
#current_net:n705
#current_comb_set:n705 n684,1 n700,0 n702,1 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 487 1 447 0 469 1 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n683 0 n700 0 n703 0 n704 0 n705 1 } -verbose -store
#attempt:447
#current_net:n705
#current_comb_set:n705 n681,1 n683,0 n700,0 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 485 1 486 0 447 0 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n700 0 n703 0 n704 0 n705 1 } -verbose -store
#attempt:448
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n700,0 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 447 0 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n683 0 n702 1 n703 0 n704 0 n705 1 } -verbose -store
#attempt:449
#current_net:n705
#current_comb_set:n705 n681,1 n683,0 n702,1 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 485 1 486 0 469 1 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n700 0 n703 0 n704 0 n705 1 } -verbose -store
#attempt:450
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n700,0 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 447 0 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n683 0 n703 0 n704 0 n705 1 } -verbose -store
#attempt:451
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n683,0 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 486 0 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n683 0 n684 1 n700 0 n702 1 n705 1 } -verbose -store
#attempt:452
#current_net:n705
#current_comb_set:n705 n679,0 n683,0 n684,1 n700,0 n702,1 n705,1 
run_justification -full_sequential -set { 482 0 486 0 487 1 447 0 469 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n684 1 n700 0 n703 0 n705 1 } -verbose -store
#attempt:453
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n684,1 n700,0 n703,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 487 1 447 0 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n684 1 n700 0 n703 0 n704 0 n705 1 } -verbose -store
#attempt:454
#current_net:n705
#current_comb_set:n705 n681,1 n684,1 n700,0 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 485 1 487 1 447 0 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n700 0 n702 1 n703 0 n704 0 n705 1 } -verbose -store
#attempt:455
#current_net:n705
#current_comb_set:n705 n683,0 n700,0 n702,1 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 486 0 447 0 469 1 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n683 0 n700 0 n702 1 n704 0 n705 1 } -verbose -store
#attempt:456
#current_net:n705
#current_comb_set:n705 n679,0 n683,0 n700,0 n702,1 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 486 0 447 0 469 1 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n684 1 n700 0 n702 1 n705 1 } -verbose -store
#attempt:457
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n684,1 n700,0 n702,1 n705,1 
run_justification -full_sequential -set { 482 0 485 1 487 1 447 0 469 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n700 0 n702 1 n703 0 n704 0 n705 1 } -verbose -store
#attempt:458
#current_net:n705
#current_comb_set:n705 n679,0 n700,0 n702,1 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 447 0 469 1 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n683 0 n702 1 n703 0 n705 1 } -verbose -store
#attempt:459
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n683,0 n702,1 n703,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 486 0 469 1 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n684 1 n700 0 n703 0 n704 0 n705 1 } -verbose -store
#attempt:460
#current_net:n705
#current_comb_set:n705 n679,0 n684,1 n700,0 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 487 1 447 0 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n684 1 n703 0 n704 0 n705 1 } -verbose -store
#attempt:461
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n684,1 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 487 1 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n683 0 n684 1 n700 0 n703 0 n705 1 } -verbose -store
#attempt:462
#current_net:n705
#current_comb_set:n705 n679,0 n683,0 n684,1 n700,0 n703,0 n705,1 
run_justification -full_sequential -set { 482 0 486 0 487 1 447 0 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n683 0 n700 0 n702 1 n704 0 n705 1 } -verbose -store
#attempt:463
#current_net:n705
#current_comb_set:n705 n681,1 n683,0 n700,0 n702,1 n704,0 n705,1 
run_justification -full_sequential -set { 485 1 486 0 447 0 469 1 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n684 1 n700 0 n702 1 n703 0 n705 1 } -verbose -store
#attempt:464
#current_net:n705
#current_comb_set:n705 n681,1 n684,1 n700,0 n702,1 n703,0 n705,1 
run_justification -full_sequential -set { 485 1 487 1 447 0 469 1 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n683 0 n700 0 n702 1 n705 1 } -verbose -store
#attempt:465
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n683,0 n700,0 n702,1 n705,1 
run_justification -full_sequential -set { 482 0 485 1 486 0 447 0 469 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n683 0 n684 1 n703 0 n704 0 n705 1 } -verbose -store
#attempt:466
#current_net:n705
#current_comb_set:n705 n679,0 n683,0 n684,1 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 486 0 487 1 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n683 0 n684 1 n702 1 n704 0 n705 1 } -verbose -store
#attempt:467
#current_net:n705
#current_comb_set:n705 n679,0 n683,0 n684,1 n702,1 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 486 0 487 1 469 1 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n684 1 n702 1 n703 0 n704 0 n705 1 } -verbose -store
#attempt:468
#current_net:n705
#current_comb_set:n705 n679,0 n684,1 n702,1 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 487 1 469 1 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n683 0 n684 1 n702 1 n704 0 n705 1 } -verbose -store
#attempt:469
#current_net:n705
#current_comb_set:n705 n681,1 n683,0 n684,1 n702,1 n704,0 n705,1 
run_justification -full_sequential -set { 485 1 486 0 487 1 469 1 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n684 1 n702 1 n703 0 n705 1 } -verbose -store
#attempt:470
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n684,1 n702,1 n703,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 487 1 469 1 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n700 0 n702 1 n704 0 n705 1 } -verbose -store
#attempt:471
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n700,0 n702,1 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 447 0 469 1 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n683 0 n702 1 n704 0 n705 1 } -verbose -store
#attempt:472
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n683,0 n702,1 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 486 0 469 1 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n683 0 n684 1 n703 0 n704 0 n705 1 } -verbose -store
#attempt:473
#current_net:n705
#current_comb_set:n705 n679,0 n683,0 n684,1 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 486 0 487 1 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n683 0 n684 1 n700 0 n704 0 n705 1 } -verbose -store
#attempt:474
#current_net:n705
#current_comb_set:n705 n679,0 n683,0 n684,1 n700,0 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 486 0 487 1 447 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n684 1 n700 0 n702 1 n704 0 n705 1 } -verbose -store
#attempt:475
#current_net:n705
#current_comb_set:n705 n683,0 n684,1 n700,0 n702,1 n704,0 n705,1 
run_justification -full_sequential -set { 486 0 487 1 447 0 469 1 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n684 1 n700 0 n702 1 n704 0 n705 1 } -verbose -store
#attempt:476
#current_net:n705
#current_comb_set:n705 n679,0 n684,1 n700,0 n702,1 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 487 1 447 0 469 1 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n684 1 n700 0 n702 1 n703 0 n704 0 n705 1 } -verbose -store
#attempt:477
#current_net:n705
#current_comb_set:n705 n684,1 n700,0 n702,1 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 487 1 447 0 469 1 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n683 0 n684 1 n702 1 n703 0 n705 1 } -verbose -store
#attempt:478
#current_net:n705
#current_comb_set:n705 n681,1 n683,0 n684,1 n702,1 n703,0 n705,1 
run_justification -full_sequential -set { 485 1 486 0 487 1 469 1 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n683 0 n684 1 n703 0 n704 0 n705 1 } -verbose -store
#attempt:479
#current_net:n705
#current_comb_set:n705 n679,0 n683,0 n684,1 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 486 0 487 1 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n684 1 n700 0 n703 0 n704 0 n705 1 } -verbose -store
#attempt:480
#current_net:n705
#current_comb_set:n705 n681,1 n684,1 n700,0 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 485 1 487 1 447 0 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n683 0 n702 1 n704 0 n705 1 } -verbose -store
#attempt:481
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n683,0 n702,1 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 486 0 469 1 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n684 1 n702 1 n705 1 } -verbose -store
#attempt:482
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n684,1 n702,1 n705,1 
run_justification -full_sequential -set { 482 0 485 1 487 1 469 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n702 1 n703 0 n704 0 n705 1 } -verbose -store
#attempt:483
#current_net:n705
#current_comb_set:n705 n681,1 n702,1 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 485 1 469 1 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n684 1 n702 1 n704 0 n705 1 } -verbose -store
#attempt:484
#current_net:n705
#current_comb_set:n705 n679,0 n684,1 n702,1 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 487 1 469 1 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n684 1 n700 0 n703 0 n704 0 n705 1 } -verbose -store
#attempt:485
#current_net:n705
#current_comb_set:n705 n684,1 n700,0 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 487 1 447 0 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n683 0 n684 1 n700 0 n705 1 } -verbose -store
#attempt:486
#current_net:n705
#current_comb_set:n705 n681,1 n683,0 n684,1 n700,0 n705,1 
run_justification -full_sequential -set { 485 1 486 0 487 1 447 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n684 1 n700 0 n702 1 n703 0 n705 1 } -verbose -store
#attempt:487
#current_net:n705
#current_comb_set:n705 n684,1 n700,0 n702,1 n703,0 n705,1 
run_justification -full_sequential -set { 487 1 447 0 469 1 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n684 1 n700 0 n703 0 n705 1 } -verbose -store
#attempt:488
#current_net:n705
#current_comb_set:n705 n679,0 n684,1 n700,0 n703,0 n705,1 
run_justification -full_sequential -set { 482 0 487 1 447 0 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n700 0 n702 1 n704 0 n705 1 } -verbose -store
#attempt:489
#current_net:n705
#current_comb_set:n705 n679,0 n700,0 n702,1 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 447 0 469 1 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n703 0 n704 0 n705 1 } -verbose -store
#attempt:490
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n684 1 n700 0 n704 0 n705 1 } -verbose -store
#attempt:491
#current_net:n705
#current_comb_set:n705 n681,1 n684,1 n700,0 n704,0 n705,1 
run_justification -full_sequential -set { 485 1 487 1 447 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n684 1 n700 0 n704 0 n705 1 } -verbose -store
#attempt:492
#current_net:n705
#current_comb_set:n705 n683,0 n684,1 n700,0 n704,0 n705,1 
run_justification -full_sequential -set { 486 0 487 1 447 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n684 1 n700 0 n702 1 n705 1 } -verbose -store
#attempt:493
#current_net:n705
#current_comb_set:n705 n681,1 n684,1 n700,0 n702,1 n705,1 
run_justification -full_sequential -set { 485 1 487 1 447 0 469 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n702 1 n703 0 n704 0 n705 1 } -verbose -store
#attempt:494
#current_net:n705
#current_comb_set:n705 n681,1 n702,1 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 485 1 469 1 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n702 1 n703 0 n704 0 n705 1 } -verbose -store
#attempt:495
#current_net:n705
#current_comb_set:n705 n681,1 n702,1 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 485 1 469 1 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n683 0 n704 0 n705 1 } -verbose -store
#attempt:496
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n683,0 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 486 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n702 1 n703 0 n705 1 } -verbose -store
#attempt:497
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n702,1 n703,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 469 1 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n684 1 n702 1 n705 1 } -verbose -store
#attempt:498
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n684,1 n702,1 n705,1 
run_justification -full_sequential -set { 482 0 485 1 487 1 469 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n683 0 n703 0 n705 1 } -verbose -store
#attempt:499
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n683,0 n703,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 486 0 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n702 1 n703 0 n704 0 n705 1 } -verbose -store
#attempt:500
#current_net:n705
#current_comb_set:n705 n683,0 n702,1 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 486 0 469 1 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n700 0 n703 0 n705 1 } -verbose -store
#attempt:501
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n700,0 n703,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 447 0 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n683 0 n704 0 n705 1 } -verbose -store
#attempt:502
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n683,0 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 486 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n700 0 n702 1 n703 0 n705 1 } -verbose -store
#attempt:503
#current_net:n705
#current_comb_set:n705 n681,1 n700,0 n702,1 n703,0 n705,1 
run_justification -full_sequential -set { 485 1 447 0 469 1 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n684 1 n702 1 n703 0 n705 1 } -verbose -store
#attempt:504
#current_net:n705
#current_comb_set:n705 n681,1 n684,1 n702,1 n703,0 n705,1 
run_justification -full_sequential -set { 485 1 487 1 469 1 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n684 1 n702 1 n703 0 n704 0 n705 1 } -verbose -store
#attempt:505
#current_net:n705
#current_comb_set:n705 n684,1 n702,1 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 487 1 469 1 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n700 0 n703 0 n704 0 n705 1 } -verbose -store
#attempt:506
#current_net:n705
#current_comb_set:n705 n681,1 n700,0 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 485 1 447 0 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n700 0 n703 0 n705 1 } -verbose -store
#attempt:507
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n700,0 n703,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 447 0 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n684 1 n700 0 n703 0 n705 1 } -verbose -store
#attempt:508
#current_net:n705
#current_comb_set:n705 n683,0 n684,1 n700,0 n703,0 n705,1 
run_justification -full_sequential -set { 486 0 487 1 447 0 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n684 1 n702 1 n703 0 n704 0 n705 1 } -verbose -store
#attempt:509
#current_net:n705
#current_comb_set:n705 n684,1 n702,1 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 487 1 469 1 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n684 1 n700 0 n705 1 } -verbose -store
#attempt:510
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n684,1 n700,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 487 1 447 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n684 1 n700 0 n705 1 } -verbose -store
#attempt:511
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n684,1 n700,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 487 1 447 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n684 1 n702 1 n703 0 n705 1 } -verbose -store
#attempt:512
#current_net:n705
#current_comb_set:n705 n679,0 n684,1 n702,1 n703,0 n705,1 
run_justification -full_sequential -set { 482 0 487 1 469 1 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n684 1 n700 0 n702 1 n705 1 } -verbose -store
#attempt:513
#current_net:n705
#current_comb_set:n705 n681,1 n684,1 n700,0 n702,1 n705,1 
run_justification -full_sequential -set { 485 1 487 1 447 0 469 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n684 1 n700 0 n702 1 n703 0 n705 1 } -verbose -store
#attempt:514
#current_net:n705
#current_comb_set:n705 n684,1 n700,0 n702,1 n703,0 n705,1 
run_justification -full_sequential -set { 487 1 447 0 469 1 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n684 1 n700 0 n704 0 n705 1 } -verbose -store
#attempt:515
#current_net:n705
#current_comb_set:n705 n679,0 n684,1 n700,0 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 487 1 447 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n700 0 n703 0 n705 1 } -verbose -store
#attempt:516
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n700,0 n703,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 447 0 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n700 0 n702 1 n703 0 n705 1 } -verbose -store
#attempt:517
#current_net:n705
#current_comb_set:n705 n679,0 n700,0 n702,1 n703,0 n705,1 
run_justification -full_sequential -set { 482 0 447 0 469 1 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n684 1 n702 1 n703 0 n704 0 n705 1 } -verbose -store
#attempt:518
#current_net:n705
#current_comb_set:n705 n684,1 n702,1 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 487 1 469 1 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n702 1 n703 0 n705 1 } -verbose -store
#attempt:519
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n702,1 n703,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 469 1 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n684 1 n702 1 n704 0 n705 1 } -verbose -store
#attempt:520
#current_net:n705
#current_comb_set:n705 n681,1 n684,1 n702,1 n704,0 n705,1 
run_justification -full_sequential -set { 485 1 487 1 469 1 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n683 0 n684 1 n702 1 n705 1 } -verbose -store
#attempt:521
#current_net:n705
#current_comb_set:n705 n681,1 n683,0 n684,1 n702,1 n705,1 
run_justification -full_sequential -set { 485 1 486 0 487 1 469 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n684 1 n700 0 n702 1 n705 1 } -verbose -store
#attempt:522
#current_net:n705
#current_comb_set:n705 n683,0 n684,1 n700,0 n702,1 n705,1 
run_justification -full_sequential -set { 486 0 487 1 447 0 469 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n700 0 n702 1 n704 0 n705 1 } -verbose -store
#attempt:523
#current_net:n705
#current_comb_set:n705 n681,1 n700,0 n702,1 n704,0 n705,1 
run_justification -full_sequential -set { 485 1 447 0 469 1 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n683 0 n702 1 n705 1 } -verbose -store
#attempt:524
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n683,0 n702,1 n705,1 
run_justification -full_sequential -set { 482 0 485 1 486 0 469 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n684 1 n700 0 n702 1 n705 1 } -verbose -store
#attempt:525
#current_net:n705
#current_comb_set:n705 n681,1 n684,1 n700,0 n702,1 n705,1 
run_justification -full_sequential -set { 485 1 487 1 447 0 469 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n702 1 n703 0 n705 1 } -verbose -store
#attempt:526
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n702,1 n703,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 469 1 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n683 0 n700 0 n705 1 } -verbose -store
#attempt:527
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n683,0 n700,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 486 0 447 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n684 1 n704 0 n705 1 } -verbose -store
#attempt:528
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n684,1 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 487 1 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n683 0 n704 0 n705 1 } -verbose -store
#attempt:529
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n683,0 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 486 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n684 1 n702 1 n703 0 n705 1 } -verbose -store
#attempt:530
#current_net:n705
#current_comb_set:n705 n679,0 n684,1 n702,1 n703,0 n705,1 
run_justification -full_sequential -set { 482 0 487 1 469 1 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n700 0 n702 1 n705 1 } -verbose -store
#attempt:531
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n700,0 n702,1 n705,1 
run_justification -full_sequential -set { 482 0 485 1 447 0 469 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n684 1 n703 0 n704 0 n705 1 } -verbose -store
#attempt:532
#current_net:n705
#current_comb_set:n705 n683,0 n684,1 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 486 0 487 1 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n684 1 n702 1 n703 0 n705 1 } -verbose -store
#attempt:533
#current_net:n705
#current_comb_set:n705 n683,0 n684,1 n702,1 n703,0 n705,1 
run_justification -full_sequential -set { 486 0 487 1 469 1 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n683 0 n703 0 n705 1 } -verbose -store
#attempt:534
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n683,0 n703,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 486 0 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n700 0 n702 1 n703 0 n705 1 } -verbose -store
#attempt:535
#current_net:n705
#current_comb_set:n705 n683,0 n700,0 n702,1 n703,0 n705,1 
run_justification -full_sequential -set { 486 0 447 0 469 1 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n700 0 n703 0 n704 0 n705 1 } -verbose -store
#attempt:536
#current_net:n705
#current_comb_set:n705 n679,0 n700,0 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 447 0 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n700 0 n704 0 n705 1 } -verbose -store
#attempt:537
#current_net:n705
#current_comb_set:n705 n683,0 n700,0 n704,0 n705,1 
run_justification -full_sequential -set { 486 0 447 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n702 1 n703 0 n705 1 } -verbose -store
#attempt:538
#current_net:n705
#current_comb_set:n705 n679,0 n702,1 n703,0 n705,1 
run_justification -full_sequential -set { 482 0 469 1 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n703 0 n704 0 n705 1 } -verbose -store
#attempt:539
#current_net:n705
#current_comb_set:n705 n683,0 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 486 0 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n683 0 n704 0 n705 1 } -verbose -store
#attempt:540
#current_net:n705
#current_comb_set:n705 n681,1 n683,0 n704,0 n705,1 
run_justification -full_sequential -set { 485 1 486 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n702 1 n703 0 n705 1 } -verbose -store
#attempt:541
#current_net:n705
#current_comb_set:n705 n681,1 n702,1 n703,0 n705,1 
run_justification -full_sequential -set { 485 1 469 1 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n703 0 n704 0 n705 1 } -verbose -store
#attempt:542
#current_net:n705
#current_comb_set:n705 n681,1 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 485 1 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n700 0 n703 0 n705 1 } -verbose -store
#attempt:543
#current_net:n705
#current_comb_set:n705 n683,0 n700,0 n703,0 n705,1 
run_justification -full_sequential -set { 486 0 447 0 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n683 0 n703 0 n705 1 } -verbose -store
#attempt:544
#current_net:n705
#current_comb_set:n705 n681,1 n683,0 n703,0 n705,1 
run_justification -full_sequential -set { 485 1 486 0 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n683 0 n700 0 n705 1 } -verbose -store
#attempt:545
#current_net:n705
#current_comb_set:n705 n681,1 n683,0 n700,0 n705,1 
run_justification -full_sequential -set { 485 1 486 0 447 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n683 0 n703 0 n705 1 } -verbose -store
#attempt:546
#current_net:n705
#current_comb_set:n705 n681,1 n683,0 n703,0 n705,1 
run_justification -full_sequential -set { 485 1 486 0 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n684 1 n702 1 n705 1 } -verbose -store
#attempt:547
#current_net:n705
#current_comb_set:n705 n681,1 n684,1 n702,1 n705,1 
run_justification -full_sequential -set { 485 1 487 1 469 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n700 0 n703 0 n705 1 } -verbose -store
#attempt:548
#current_net:n705
#current_comb_set:n705 n683,0 n700,0 n703,0 n705,1 
run_justification -full_sequential -set { 486 0 447 0 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n702 1 n703 0 n705 1 } -verbose -store
#attempt:549
#current_net:n705
#current_comb_set:n705 n681,1 n702,1 n703,0 n705,1 
run_justification -full_sequential -set { 485 1 469 1 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n684 1 n704 0 n705 1 } -verbose -store
#attempt:550
#current_net:n705
#current_comb_set:n705 n679,0 n684,1 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 487 1 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n700 0 n702 1 n704 0 n705 1 } -verbose -store
#attempt:551
#current_net:n705
#current_comb_set:n705 n700,0 n702,1 n704,0 n705,1 
run_justification -full_sequential -set { 447 0 469 1 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n684 1 n700 0 n702 1 n705 1 } -verbose -store
#attempt:552
#current_net:n705
#current_comb_set:n705 n684,1 n700,0 n702,1 n705,1 
run_justification -full_sequential -set { 487 1 447 0 469 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n700 0 n702 1 n705 1 } -verbose -store
#attempt:553
#current_net:n705
#current_comb_set:n705 n681,1 n700,0 n702,1 n705,1 
run_justification -full_sequential -set { 485 1 447 0 469 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n700 0 n705 1 } -verbose -store
#attempt:554
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n700,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 447 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n683 0 n704 0 n705 1 } -verbose -store
#attempt:555
#current_net:n705
#current_comb_set:n705 n679,0 n683,0 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 486 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n684 1 n704 0 n705 1 } -verbose -store
#attempt:556
#current_net:n705
#current_comb_set:n705 n679,0 n684,1 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 487 1 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n684 1 n700 0 n703 0 n705 1 } -verbose -store
#attempt:557
#current_net:n705
#current_comb_set:n705 n684,1 n700,0 n703,0 n705,1 
run_justification -full_sequential -set { 487 1 447 0 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n684 1 n702 1 n705 1 } -verbose -store
#attempt:558
#current_net:n705
#current_comb_set:n705 n679,0 n684,1 n702,1 n705,1 
run_justification -full_sequential -set { 482 0 487 1 469 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n684 1 n700 0 n705 1 } -verbose -store
#attempt:559
#current_net:n705
#current_comb_set:n705 n679,0 n684,1 n700,0 n705,1 
run_justification -full_sequential -set { 482 0 487 1 447 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n702 1 n704 0 n705 1 } -verbose -store
#attempt:560
#current_net:n705
#current_comb_set:n705 n679,0 n702,1 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 469 1 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n684 1 n700 0 n705 1 } -verbose -store
#attempt:561
#current_net:n705
#current_comb_set:n705 n683,0 n684,1 n700,0 n705,1 
run_justification -full_sequential -set { 486 0 487 1 447 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n683 0 n702 1 n705 1 } -verbose -store
#attempt:562
#current_net:n705
#current_comb_set:n705 n681,1 n683,0 n702,1 n705,1 
run_justification -full_sequential -set { 485 1 486 0 469 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n684 1 n700 0 n705 1 } -verbose -store
#attempt:563
#current_net:n705
#current_comb_set:n705 n683,0 n684,1 n700,0 n705,1 
run_justification -full_sequential -set { 486 0 487 1 447 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n683 0 n705 1 } -verbose -store
#attempt:564
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n683,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 486 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n684 1 n700 0 n705 1 } -verbose -store
#attempt:565
#current_net:n705
#current_comb_set:n705 n681,1 n684,1 n700,0 n705,1 
run_justification -full_sequential -set { 485 1 487 1 447 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n684 1 n702 1 n705 1 } -verbose -store
#attempt:566
#current_net:n705
#current_comb_set:n705 n681,1 n684,1 n702,1 n705,1 
run_justification -full_sequential -set { 485 1 487 1 469 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n684 1 n703 0 n705 1 } -verbose -store
#attempt:567
#current_net:n705
#current_comb_set:n705 n681,1 n684,1 n703,0 n705,1 
run_justification -full_sequential -set { 485 1 487 1 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n683 0 n700 0 n705 1 } -verbose -store
#attempt:568
#current_net:n705
#current_comb_set:n705 n681,1 n683,0 n700,0 n705,1 
run_justification -full_sequential -set { 485 1 486 0 447 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n683 0 n684 1 n705 1 } -verbose -store
#attempt:569
#current_net:n705
#current_comb_set:n705 n679,0 n683,0 n684,1 n705,1 
run_justification -full_sequential -set { 482 0 486 0 487 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n702 1 n703 0 n705 1 } -verbose -store
#attempt:570
#current_net:n705
#current_comb_set:n705 n679,0 n702,1 n703,0 n705,1 
run_justification -full_sequential -set { 482 0 469 1 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n703 0 n704 0 n705 1 } -verbose -store
#attempt:571
#current_net:n705
#current_comb_set:n705 n681,1 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 485 1 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n700 0 n704 0 n705 1 } -verbose -store
#attempt:572
#current_net:n705
#current_comb_set:n705 n683,0 n700,0 n704,0 n705,1 
run_justification -full_sequential -set { 486 0 447 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n683 0 n703 0 n705 1 } -verbose -store
#attempt:573
#current_net:n705
#current_comb_set:n705 n679,0 n683,0 n703,0 n705,1 
run_justification -full_sequential -set { 482 0 486 0 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n684 1 n702 1 n705 1 } -verbose -store
#attempt:574
#current_net:n705
#current_comb_set:n705 n681,1 n684,1 n702,1 n705,1 
run_justification -full_sequential -set { 485 1 487 1 469 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n703 0 n705 1 } -verbose -store
#attempt:575
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n703,0 n705,1 
run_justification -full_sequential -set { 482 0 485 1 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n700 0 n704 0 n705 1 } -verbose -store
#attempt:576
#current_net:n705
#current_comb_set:n705 n679,0 n700,0 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 447 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n702 1 n703 0 n704 0 n705 1 } -verbose -store
#attempt:577
#current_net:n705
#current_comb_set:n705 n702,1 n703,0 n704,0 n705,1 
run_justification -full_sequential -set { 469 1 470 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n700 0 n703 0 n705 1 } -verbose -store
#attempt:578
#current_net:n705
#current_comb_set:n705 n683,0 n700,0 n703,0 n705,1 
run_justification -full_sequential -set { 486 0 447 0 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n702 1 n703 0 n705 1 } -verbose -store
#attempt:579
#current_net:n705
#current_comb_set:n705 n681,1 n702,1 n703,0 n705,1 
run_justification -full_sequential -set { 485 1 469 1 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n702 1 n705 1 } -verbose -store
#attempt:580
#current_net:n705
#current_comb_set:n705 n681,1 n702,1 n705,1 
run_justification -full_sequential -set { 485 1 469 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n702 1 n705 1 } -verbose -store
#attempt:581
#current_net:n705
#current_comb_set:n705 n683,0 n702,1 n705,1 
run_justification -full_sequential -set { 486 0 469 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n700 0 n704 0 n705 1 } -verbose -store
#attempt:582
#current_net:n705
#current_comb_set:n705 n700,0 n704,0 n705,1 
run_justification -full_sequential -set { 447 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n702 1 n704 0 n705 1 } -verbose -store
#attempt:583
#current_net:n705
#current_comb_set:n705 n702,1 n704,0 n705,1 
run_justification -full_sequential -set { 469 1 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n703 0 n705 1 } -verbose -store
#attempt:584
#current_net:n705
#current_comb_set:n705 n683,0 n703,0 n705,1 
run_justification -full_sequential -set { 486 0 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n684 1 n704 0 n705 1 } -verbose -store
#attempt:585
#current_net:n705
#current_comb_set:n705 n684,1 n704,0 n705,1 
run_justification -full_sequential -set { 487 1 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n683 0 n705 1 } -verbose -store
#attempt:586
#current_net:n705
#current_comb_set:n705 n681,1 n683,0 n705,1 
run_justification -full_sequential -set { 485 1 486 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n702 1 n705 1 } -verbose -store
#attempt:587
#current_net:n705
#current_comb_set:n705 n681,1 n702,1 n705,1 
run_justification -full_sequential -set { 485 1 469 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n700 0 n702 1 n705 1 } -verbose -store
#attempt:588
#current_net:n705
#current_comb_set:n705 n700,0 n702,1 n705,1 
run_justification -full_sequential -set { 447 0 469 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n705 1 } -verbose -store
#attempt:589
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n705,1 
run_justification -full_sequential -set { 482 0 485 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n683 0 n705 1 } -verbose -store
#attempt:590
#current_net:n705
#current_comb_set:n705 n679,0 n683,0 n705,1 
run_justification -full_sequential -set { 482 0 486 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n702 1 n705 1 } -verbose -store
#attempt:591
#current_net:n705
#current_comb_set:n705 n683,0 n702,1 n705,1 
run_justification -full_sequential -set { 486 0 469 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n683 0 n705 1 } -verbose -store
#attempt:592
#current_net:n705
#current_comb_set:n705 n679,0 n683,0 n705,1 
run_justification -full_sequential -set { 482 0 486 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n700 0 n705 1 } -verbose -store
#attempt:593
#current_net:n705
#current_comb_set:n705 n681,1 n700,0 n705,1 
run_justification -full_sequential -set { 485 1 447 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n700 0 n705 1 } -verbose -store
#attempt:594
#current_net:n705
#current_comb_set:n705 n681,1 n700,0 n705,1 
run_justification -full_sequential -set { 485 1 447 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n704 0 n705 1 } -verbose -store
#attempt:595
#current_net:n705
#current_comb_set:n705 n679,0 n704,0 n705,1 
run_justification -full_sequential -set { 482 0 488 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n684 1 n705 1 } -verbose -store
#attempt:596
#current_net:n705
#current_comb_set:n705 n681,1 n684,1 n705,1 
run_justification -full_sequential -set { 485 1 487 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n702 1 n705 1 } -verbose -store
#attempt:597
#current_net:n705
#current_comb_set:n705 n683,0 n702,1 n705,1 
run_justification -full_sequential -set { 486 0 469 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 n681 1 n705 1 } -verbose -store
#attempt:598
#current_net:n705
#current_comb_set:n705 n679,0 n681,1 n705,1 
run_justification -full_sequential -set { 482 0 485 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n703 0 n705 1 } -verbose -store
#attempt:599
#current_net:n705
#current_comb_set:n705 n683,0 n703,0 n705,1 
run_justification -full_sequential -set { 486 0 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n683 0 n705 1 } -verbose -store
#attempt:600
#current_net:n705
#current_comb_set:n705 n681,1 n683,0 n705,1 
run_justification -full_sequential -set { 485 1 486 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n684 1 n700 0 n705 1 } -verbose -store
#attempt:601
#current_net:n705
#current_comb_set:n705 n684,1 n700,0 n705,1 
run_justification -full_sequential -set { 487 1 447 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n700 0 n705 1 } -verbose -store
#attempt:602
#current_net:n705
#current_comb_set:n705 n683,0 n700,0 n705,1 
run_justification -full_sequential -set { 486 0 447 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 n700 0 n705 1 } -verbose -store
#attempt:603
#current_net:n705
#current_comb_set:n705 n681,1 n700,0 n705,1 
run_justification -full_sequential -set { 485 1 447 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 n703 0 n705 1 } -verbose -store
#attempt:604
#current_net:n705
#current_comb_set:n705 n683,0 n703,0 n705,1 
run_justification -full_sequential -set { 486 0 470 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n700 0 n702 1 n705 1 } -verbose -store
#attempt:605
#current_net:n705
#current_comb_set:n705 n700,0 n702,1 n705,1 
run_justification -full_sequential -set { 447 0 469 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n684 1 n700 0 n705 1 } -verbose -store
#attempt:606
#current_net:n705
#current_comb_set:n705 n684,1 n700,0 n705,1 
run_justification -full_sequential -set { 487 1 447 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n487 0 n485 0 n484 1 n709 0 } -verbose -store
#attempt:607
#current_net:n709
#current_comb_set:n709 n708,0 n487,0 n485,0 n484,1 n709,0 
run_justification -full_sequential -set { 313 0 312 0 311 0 310 1 315 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 n485 0 n484 1 n709 0 } -verbose -store
#attempt:608
#current_net:n709
#current_comb_set:n709 n487,0 n485,0 n484,1 n709,0 
run_justification -full_sequential -set { 312 0 311 0 310 1 315 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 n485 0 n484 1 n709 0 } -verbose -store
#attempt:609
#current_net:n709
#current_comb_set:n709 n708,0 n485,0 n484,1 n709,0 
run_justification -full_sequential -set { 313 0 311 0 310 1 315 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 n487 0 n484 1 n709 0 } -verbose -store
#attempt:610
#current_net:n709
#current_comb_set:n709 n708,0 n487,0 n484,1 n709,0 
run_justification -full_sequential -set { 313 0 312 0 310 1 315 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 n487 0 n485 0 n709 0 } -verbose -store
#attempt:611
#current_net:n709
#current_comb_set:n709 n708,0 n487,0 n485,0 n709,0 
run_justification -full_sequential -set { 313 0 312 0 311 0 315 0 } -verbose -store
#run_justification -full_sequential -set { n485 0 n484 1 n709 0 } -verbose -store
#attempt:612
#current_net:n709
#current_comb_set:n709 n485,0 n484,1 n709,0 
run_justification -full_sequential -set { 311 0 310 1 315 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 n484 1 n709 0 } -verbose -store
#attempt:613
#current_net:n709
#current_comb_set:n709 n487,0 n484,1 n709,0 
run_justification -full_sequential -set { 312 0 310 1 315 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 n485 0 n709 0 } -verbose -store
#attempt:614
#current_net:n709
#current_comb_set:n709 n487,0 n485,0 n709,0 
run_justification -full_sequential -set { 312 0 311 0 315 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 n484 1 n709 0 } -verbose -store
#attempt:615
#current_net:n709
#current_comb_set:n709 n708,0 n484,1 n709,0 
run_justification -full_sequential -set { 313 0 310 1 315 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 n485 0 n709 0 } -verbose -store
#attempt:616
#current_net:n709
#current_comb_set:n709 n708,0 n485,0 n709,0 
run_justification -full_sequential -set { 313 0 311 0 315 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 n487 0 n709 0 } -verbose -store
#attempt:617
#current_net:n709
#current_comb_set:n709 n708,0 n487,0 n709,0 
run_justification -full_sequential -set { 313 0 312 0 315 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n709 0 } -verbose -store
#attempt:618
#current_net:n709
#current_comb_set:n709 n484,1 n709,0 
run_justification -full_sequential -set { 310 1 315 0 } -verbose -store
#run_justification -full_sequential -set { n485 0 n709 0 } -verbose -store
#attempt:619
#current_net:n709
#current_comb_set:n709 n485,0 n709,0 
run_justification -full_sequential -set { 311 0 315 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 n709 0 } -verbose -store
#attempt:620
#current_net:n709
#current_comb_set:n709 n487,0 n709,0 
run_justification -full_sequential -set { 312 0 315 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 n709 0 } -verbose -store
#attempt:621
#current_net:n709
#current_comb_set:n709 n708,0 n709,0 
run_justification -full_sequential -set { 313 0 315 0 } -verbose -store
#run_justification -full_sequential -set { n744 1 n740 1 } -verbose -store
#attempt:622
#current_net:n744
#current_comb_set:n744 n744,1 n740,1 
run_justification -full_sequential -set { 429 1 428 1 } -verbose -store
#run_justification -full_sequential -set { n744 1 n740 1 n748 1 } -verbose -store
#attempt:623
#current_net:n748
#current_comb_set:n748 n744,1 n740,1 n748,1 
run_justification -full_sequential -set { 429 1 428 1 430 1 } -verbose -store
#run_justification -full_sequential -set { n740 1 n748 1 } -verbose -store
#attempt:624
#current_net:n748
#current_comb_set:n748 n740,1 n748,1 
run_justification -full_sequential -set { 428 1 430 1 } -verbose -store
#run_justification -full_sequential -set { n744 1 n748 1 } -verbose -store
#attempt:625
#current_net:n748
#current_comb_set:n748 n744,1 n748,1 
run_justification -full_sequential -set { 429 1 430 1 } -verbose -store
#run_justification -full_sequential -set { n748 1 n744 1 n740 1 n749 1 } -verbose -store
#attempt:626
#current_net:n749
#current_comb_set:n749 n748,1 n744,1 n740,1 n749,1 
run_justification -full_sequential -set { 430 1 429 1 428 1 431 1 } -verbose -store
#run_justification -full_sequential -set { n744 1 n740 1 n749 1 } -verbose -store
#attempt:627
#current_net:n749
#current_comb_set:n749 n744,1 n740,1 n749,1 
run_justification -full_sequential -set { 429 1 428 1 431 1 } -verbose -store
#run_justification -full_sequential -set { n748 1 n740 1 n749 1 } -verbose -store
#attempt:628
#current_net:n749
#current_comb_set:n749 n748,1 n740,1 n749,1 
run_justification -full_sequential -set { 430 1 428 1 431 1 } -verbose -store
#run_justification -full_sequential -set { n748 1 n744 1 n749 1 } -verbose -store
#attempt:629
#current_net:n749
#current_comb_set:n749 n748,1 n744,1 n749,1 
run_justification -full_sequential -set { 430 1 429 1 431 1 } -verbose -store
#run_justification -full_sequential -set { n740 1 n749 1 } -verbose -store
#attempt:630
#current_net:n749
#current_comb_set:n749 n740,1 n749,1 
run_justification -full_sequential -set { 428 1 431 1 } -verbose -store
#run_justification -full_sequential -set { n744 1 n749 1 } -verbose -store
#attempt:631
#current_net:n749
#current_comb_set:n749 n744,1 n749,1 
run_justification -full_sequential -set { 429 1 431 1 } -verbose -store
#run_justification -full_sequential -set { n748 1 n749 1 } -verbose -store
#attempt:632
#current_net:n749
#current_comb_set:n749 n748,1 n749,1 
run_justification -full_sequential -set { 430 1 431 1 } -verbose -store
#run_justification -full_sequential -set { n758 1 n757 1 } -verbose -store
#attempt:633
#current_net:n758
#current_comb_set:n758 n758,1 n757,1 
run_justification -full_sequential -set { 185 1 184 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n708 0 n709 0 n759 1 n760 0 } -verbose -store
#attempt:634
#current_net:n760
#current_comb_set:n760 n484,1 n485,0 n708,0 n709,0 n759,1 n760,0 
run_justification -full_sequential -set { 310 1 311 0 313 0 315 0 433 1 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n708 0 n709 0 n759 1 n760 0 } -verbose -store
#attempt:635
#current_net:n760
#current_comb_set:n760 n484,1 n485,0 n708,0 n709,0 n759,1 n760,0 
run_justification -full_sequential -set { 310 1 311 0 313 0 315 0 433 1 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n487 0 n708 0 n759 1 n760 0 } -verbose -store
#attempt:636
#current_net:n760
#current_comb_set:n760 n484,1 n485,0 n487,0 n708,0 n759,1 n760,0 
run_justification -full_sequential -set { 310 1 311 0 312 0 313 0 433 1 434 0 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n708 0 n709 0 n759 1 n760 0 } -verbose -store
#attempt:637
#current_net:n760
#current_comb_set:n760 n485,0 n487,0 n708,0 n709,0 n759,1 n760,0 
run_justification -full_sequential -set { 311 0 312 0 313 0 315 0 433 1 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n487 0 n708 0 n759 1 n760 0 } -verbose -store
#attempt:638
#current_net:n760
#current_comb_set:n760 n484,1 n485,0 n487,0 n708,0 n759,1 n760,0 
run_justification -full_sequential -set { 310 1 311 0 312 0 313 0 433 1 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n708 0 n709 0 n759 1 n760 0 } -verbose -store
#attempt:639
#current_net:n760
#current_comb_set:n760 n484,1 n487,0 n708,0 n709,0 n759,1 n760,0 
run_justification -full_sequential -set { 310 1 312 0 313 0 315 0 433 1 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n708 0 n709 0 n760 0 } -verbose -store
#attempt:640
#current_net:n760
#current_comb_set:n760 n484,1 n487,0 n708,0 n709,0 n760,0 
run_justification -full_sequential -set { 310 1 312 0 313 0 315 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n487 0 n709 0 n760 0 } -verbose -store
#attempt:641
#current_net:n760
#current_comb_set:n760 n484,1 n485,0 n487,0 n709,0 n760,0 
run_justification -full_sequential -set { 310 1 311 0 312 0 315 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n487 0 n708 0 n760 0 } -verbose -store
#attempt:642
#current_net:n760
#current_comb_set:n760 n484,1 n485,0 n487,0 n708,0 n760,0 
run_justification -full_sequential -set { 310 1 311 0 312 0 313 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n487 0 n759 1 n760 0 } -verbose -store
#attempt:643
#current_net:n760
#current_comb_set:n760 n484,1 n485,0 n487,0 n759,1 n760,0 
run_justification -full_sequential -set { 310 1 311 0 312 0 433 1 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n487 0 n709 0 n760 0 } -verbose -store
#attempt:644
#current_net:n760
#current_comb_set:n760 n484,1 n485,0 n487,0 n709,0 n760,0 
run_justification -full_sequential -set { 310 1 311 0 312 0 315 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n708 0 n709 0 n760 0 } -verbose -store
#attempt:645
#current_net:n760
#current_comb_set:n760 n484,1 n487,0 n708,0 n709,0 n760,0 
run_justification -full_sequential -set { 310 1 312 0 313 0 315 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n709 0 n759 1 n760 0 } -verbose -store
#attempt:646
#current_net:n760
#current_comb_set:n760 n485,0 n708,0 n709,0 n759,1 n760,0 
run_justification -full_sequential -set { 311 0 313 0 315 0 433 1 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n709 0 n759 1 n760 0 } -verbose -store
#attempt:647
#current_net:n760
#current_comb_set:n760 n484,1 n487,0 n709,0 n759,1 n760,0 
run_justification -full_sequential -set { 310 1 312 0 315 0 433 1 434 0 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n708 0 n759 1 n760 0 } -verbose -store
#attempt:648
#current_net:n760
#current_comb_set:n760 n485,0 n487,0 n708,0 n759,1 n760,0 
run_justification -full_sequential -set { 311 0 312 0 313 0 433 1 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n709 0 n759 1 n760 0 } -verbose -store
#attempt:649
#current_net:n760
#current_comb_set:n760 n484,1 n485,0 n709,0 n759,1 n760,0 
run_justification -full_sequential -set { 310 1 311 0 315 0 433 1 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n708 0 n709 0 n760 0 } -verbose -store
#attempt:650
#current_net:n760
#current_comb_set:n760 n484,1 n487,0 n708,0 n709,0 n760,0 
run_justification -full_sequential -set { 310 1 312 0 313 0 315 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n487 0 n709 0 n760 0 } -verbose -store
#attempt:651
#current_net:n760
#current_comb_set:n760 n484,1 n485,0 n487,0 n709,0 n760,0 
run_justification -full_sequential -set { 310 1 311 0 312 0 315 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n708 0 n709 0 n760 0 } -verbose -store
#attempt:652
#current_net:n760
#current_comb_set:n760 n484,1 n487,0 n708,0 n709,0 n760,0 
run_justification -full_sequential -set { 310 1 312 0 313 0 315 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n709 0 n759 1 n760 0 } -verbose -store
#attempt:653
#current_net:n760
#current_comb_set:n760 n485,0 n708,0 n709,0 n759,1 n760,0 
run_justification -full_sequential -set { 311 0 313 0 315 0 433 1 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n709 0 n759 1 n760 0 } -verbose -store
#attempt:654
#current_net:n760
#current_comb_set:n760 n484,1 n485,0 n709,0 n759,1 n760,0 
run_justification -full_sequential -set { 310 1 311 0 315 0 433 1 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n708 0 n759 1 n760 0 } -verbose -store
#attempt:655
#current_net:n760
#current_comb_set:n760 n484,1 n708,0 n759,1 n760,0 
run_justification -full_sequential -set { 310 1 313 0 433 1 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n709 0 n759 1 n760 0 } -verbose -store
#attempt:656
#current_net:n760
#current_comb_set:n760 n484,1 n709,0 n759,1 n760,0 
run_justification -full_sequential -set { 310 1 315 0 433 1 434 0 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n709 0 n760 0 } -verbose -store
#attempt:657
#current_net:n760
#current_comb_set:n760 n485,0 n708,0 n709,0 n760,0 
run_justification -full_sequential -set { 311 0 313 0 315 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n709 0 n760 0 } -verbose -store
#attempt:658
#current_net:n760
#current_comb_set:n760 n485,0 n708,0 n709,0 n760,0 
run_justification -full_sequential -set { 311 0 313 0 315 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 n709 0 n759 1 n760 0 } -verbose -store
#attempt:659
#current_net:n760
#current_comb_set:n760 n708,0 n709,0 n759,1 n760,0 
run_justification -full_sequential -set { 313 0 315 0 433 1 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n709 0 n760 0 } -verbose -store
#attempt:660
#current_net:n760
#current_comb_set:n760 n484,1 n485,0 n709,0 n760,0 
run_justification -full_sequential -set { 310 1 311 0 315 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n709 0 n760 0 } -verbose -store
#attempt:661
#current_net:n760
#current_comb_set:n760 n485,0 n487,0 n709,0 n760,0 
run_justification -full_sequential -set { 311 0 312 0 315 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 n709 0 n759 1 n760 0 } -verbose -store
#attempt:662
#current_net:n760
#current_comb_set:n760 n487,0 n709,0 n759,1 n760,0 
run_justification -full_sequential -set { 312 0 315 0 433 1 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n487 0 n760 0 } -verbose -store
#attempt:663
#current_net:n760
#current_comb_set:n760 n484,1 n485,0 n487,0 n760,0 
run_justification -full_sequential -set { 310 1 311 0 312 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n708 0 n760 0 } -verbose -store
#attempt:664
#current_net:n760
#current_comb_set:n760 n484,1 n487,0 n708,0 n760,0 
run_justification -full_sequential -set { 310 1 312 0 313 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n708 0 n760 0 } -verbose -store
#attempt:665
#current_net:n760
#current_comb_set:n760 n485,0 n487,0 n708,0 n760,0 
run_justification -full_sequential -set { 311 0 312 0 313 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n709 0 n759 1 n760 0 } -verbose -store
#attempt:666
#current_net:n760
#current_comb_set:n760 n484,1 n709,0 n759,1 n760,0 
run_justification -full_sequential -set { 310 1 315 0 433 1 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n708 0 n760 0 } -verbose -store
#attempt:667
#current_net:n760
#current_comb_set:n760 n484,1 n487,0 n708,0 n760,0 
run_justification -full_sequential -set { 310 1 312 0 313 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n708 0 n709 0 n760 0 } -verbose -store
#attempt:668
#current_net:n760
#current_comb_set:n760 n484,1 n708,0 n709,0 n760,0 
run_justification -full_sequential -set { 310 1 313 0 315 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n709 0 n760 0 } -verbose -store
#attempt:669
#current_net:n760
#current_comb_set:n760 n484,1 n487,0 n709,0 n760,0 
run_justification -full_sequential -set { 310 1 312 0 315 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n708 0 n760 0 } -verbose -store
#attempt:670
#current_net:n760
#current_comb_set:n760 n484,1 n487,0 n708,0 n760,0 
run_justification -full_sequential -set { 310 1 312 0 313 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n709 0 n760 0 } -verbose -store
#attempt:671
#current_net:n760
#current_comb_set:n760 n484,1 n485,0 n709,0 n760,0 
run_justification -full_sequential -set { 310 1 311 0 315 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n709 0 n760 0 } -verbose -store
#attempt:672
#current_net:n760
#current_comb_set:n760 n485,0 n487,0 n709,0 n760,0 
run_justification -full_sequential -set { 311 0 312 0 315 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n709 0 n759 1 n760 0 } -verbose -store
#attempt:673
#current_net:n760
#current_comb_set:n760 n484,1 n709,0 n759,1 n760,0 
run_justification -full_sequential -set { 310 1 315 0 433 1 434 0 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n709 0 n760 0 } -verbose -store
#attempt:674
#current_net:n760
#current_comb_set:n760 n485,0 n487,0 n709,0 n760,0 
run_justification -full_sequential -set { 311 0 312 0 315 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n485 0 n709 0 n760 0 } -verbose -store
#attempt:675
#current_net:n760
#current_comb_set:n760 n485,0 n709,0 n760,0 
run_justification -full_sequential -set { 311 0 315 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 n709 0 n760 0 } -verbose -store
#attempt:676
#current_net:n760
#current_comb_set:n760 n487,0 n709,0 n760,0 
run_justification -full_sequential -set { 312 0 315 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 n759 1 n760 0 } -verbose -store
#attempt:677
#current_net:n760
#current_comb_set:n760 n487,0 n759,1 n760,0 
run_justification -full_sequential -set { 312 0 433 1 434 0 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n760 0 } -verbose -store
#attempt:678
#current_net:n760
#current_comb_set:n760 n485,0 n487,0 n760,0 
run_justification -full_sequential -set { 311 0 312 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 n708 0 n760 0 } -verbose -store
#attempt:679
#current_net:n760
#current_comb_set:n760 n487,0 n708,0 n760,0 
run_justification -full_sequential -set { 312 0 313 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n760 0 } -verbose -store
#attempt:680
#current_net:n760
#current_comb_set:n760 n485,0 n708,0 n760,0 
run_justification -full_sequential -set { 311 0 313 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n760 0 } -verbose -store
#attempt:681
#current_net:n760
#current_comb_set:n760 n484,1 n485,0 n760,0 
run_justification -full_sequential -set { 310 1 311 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 n759 1 n760 0 } -verbose -store
#attempt:682
#current_net:n760
#current_comb_set:n760 n487,0 n759,1 n760,0 
run_justification -full_sequential -set { 312 0 433 1 434 0 } -verbose -store
#run_justification -full_sequential -set { n709 0 n759 1 n760 0 } -verbose -store
#attempt:683
#current_net:n760
#current_comb_set:n760 n709,0 n759,1 n760,0 
run_justification -full_sequential -set { 315 0 433 1 434 0 } -verbose -store
#run_justification -full_sequential -set { n709 0 n759 1 n760 0 } -verbose -store
#attempt:684
#current_net:n760
#current_comb_set:n760 n709,0 n759,1 n760,0 
run_justification -full_sequential -set { 315 0 433 1 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n708 0 n760 0 } -verbose -store
#attempt:685
#current_net:n760
#current_comb_set:n760 n484,1 n708,0 n760,0 
run_justification -full_sequential -set { 310 1 313 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n760 0 } -verbose -store
#attempt:686
#current_net:n760
#current_comb_set:n760 n485,0 n487,0 n760,0 
run_justification -full_sequential -set { 311 0 312 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 n708 0 n760 0 } -verbose -store
#attempt:687
#current_net:n760
#current_comb_set:n760 n487,0 n708,0 n760,0 
run_justification -full_sequential -set { 312 0 313 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 n708 0 n760 0 } -verbose -store
#attempt:688
#current_net:n760
#current_comb_set:n760 n487,0 n708,0 n760,0 
run_justification -full_sequential -set { 312 0 313 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 n708 0 n760 0 } -verbose -store
#attempt:689
#current_net:n760
#current_comb_set:n760 n487,0 n708,0 n760,0 
run_justification -full_sequential -set { 312 0 313 0 434 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n487 0 n708 0 n759 1 n761 1 } -verbose -store
#attempt:690
#current_net:n761
#current_comb_set:n761 n484,1 n485,0 n487,0 n708,0 n759,1 n761,1 
run_justification -full_sequential -set { 310 1 311 0 312 0 313 0 433 1 435 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n708 0 n709 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:691
#current_net:n761
#current_comb_set:n761 n487,0 n708,0 n709,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 312 0 313 0 315 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n708 0 n709 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:692
#current_net:n761
#current_comb_set:n761 n487,0 n708,0 n709,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 312 0 313 0 315 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n708 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:693
#current_net:n761
#current_comb_set:n761 n484,1 n487,0 n708,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 310 1 312 0 313 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n708 0 n709 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:694
#current_net:n761
#current_comb_set:n761 n484,1 n708,0 n709,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 310 1 313 0 315 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n487 0 n708 0 n760 0 n761 1 } -verbose -store
#attempt:695
#current_net:n761
#current_comb_set:n761 n484,1 n485,0 n487,0 n708,0 n760,0 n761,1 
run_justification -full_sequential -set { 310 1 311 0 312 0 313 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n487 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:696
#current_net:n761
#current_comb_set:n761 n484,1 n485,0 n487,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 310 1 311 0 312 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n708 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:697
#current_net:n761
#current_comb_set:n761 n484,1 n487,0 n708,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 310 1 312 0 313 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n487 0 n708 0 n759 1 n761 1 } -verbose -store
#attempt:698
#current_net:n761
#current_comb_set:n761 n484,1 n485,0 n487,0 n708,0 n759,1 n761,1 
run_justification -full_sequential -set { 310 1 311 0 312 0 313 0 433 1 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n708 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:699
#current_net:n761
#current_comb_set:n761 n485,0 n487,0 n708,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 311 0 312 0 313 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n487 0 n708 0 n709 0 n761 1 } -verbose -store
#attempt:700
#current_net:n761
#current_comb_set:n761 n484,1 n485,0 n487,0 n708,0 n709,0 n761,1 
run_justification -full_sequential -set { 310 1 311 0 312 0 313 0 315 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n708 0 n709 0 n760 0 n761 1 } -verbose -store
#attempt:701
#current_net:n761
#current_comb_set:n761 n484,1 n487,0 n708,0 n709,0 n760,0 n761,1 
run_justification -full_sequential -set { 310 1 312 0 313 0 315 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n708 0 n709 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:702
#current_net:n761
#current_comb_set:n761 n484,1 n708,0 n709,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 310 1 313 0 315 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n708 0 n709 0 n759 1 n761 1 } -verbose -store
#attempt:703
#current_net:n761
#current_comb_set:n761 n484,1 n487,0 n708,0 n709,0 n759,1 n761,1 
run_justification -full_sequential -set { 310 1 312 0 313 0 315 0 433 1 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n487 0 n709 0 n759 1 n761 1 } -verbose -store
#attempt:704
#current_net:n761
#current_comb_set:n761 n484,1 n485,0 n487,0 n709,0 n759,1 n761,1 
run_justification -full_sequential -set { 310 1 311 0 312 0 315 0 433 1 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n709 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:705
#current_net:n761
#current_comb_set:n761 n485,0 n487,0 n709,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 311 0 312 0 315 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n708 0 n709 0 n759 1 n761 1 } -verbose -store
#attempt:706
#current_net:n761
#current_comb_set:n761 n484,1 n487,0 n708,0 n709,0 n759,1 n761,1 
run_justification -full_sequential -set { 310 1 312 0 313 0 315 0 433 1 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n708 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:707
#current_net:n761
#current_comb_set:n761 n484,1 n487,0 n708,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 310 1 312 0 313 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n709 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:708
#current_net:n761
#current_comb_set:n761 n485,0 n487,0 n709,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 311 0 312 0 315 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n708 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:709
#current_net:n761
#current_comb_set:n761 n484,1 n485,0 n708,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 310 1 311 0 313 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n708 0 n709 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:710
#current_net:n761
#current_comb_set:n761 n484,1 n708,0 n709,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 310 1 313 0 315 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n708 0 n760 0 n761 1 } -verbose -store
#attempt:711
#current_net:n761
#current_comb_set:n761 n484,1 n487,0 n708,0 n760,0 n761,1 
run_justification -full_sequential -set { 310 1 312 0 313 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:712
#current_net:n761
#current_comb_set:n761 n485,0 n708,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 311 0 313 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n708 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:713
#current_net:n761
#current_comb_set:n761 n487,0 n708,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 312 0 313 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n708 0 n709 0 n760 0 n761 1 } -verbose -store
#attempt:714
#current_net:n761
#current_comb_set:n761 n487,0 n708,0 n709,0 n760,0 n761,1 
run_justification -full_sequential -set { 312 0 313 0 315 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n708 0 n759 1 n761 1 } -verbose -store
#attempt:715
#current_net:n761
#current_comb_set:n761 n484,1 n487,0 n708,0 n759,1 n761,1 
run_justification -full_sequential -set { 310 1 312 0 313 0 433 1 435 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n709 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:716
#current_net:n761
#current_comb_set:n761 n708,0 n709,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 313 0 315 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n708 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:717
#current_net:n761
#current_comb_set:n761 n484,1 n708,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 310 1 313 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:718
#current_net:n761
#current_comb_set:n761 n484,1 n487,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 310 1 312 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n709 0 n760 0 n761 1 } -verbose -store
#attempt:719
#current_net:n761
#current_comb_set:n761 n484,1 n485,0 n709,0 n760,0 n761,1 
run_justification -full_sequential -set { 310 1 311 0 315 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n709 0 n760 0 n761 1 } -verbose -store
#attempt:720
#current_net:n761
#current_comb_set:n761 n484,1 n485,0 n709,0 n760,0 n761,1 
run_justification -full_sequential -set { 310 1 311 0 315 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n708 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:721
#current_net:n761
#current_comb_set:n761 n487,0 n708,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 312 0 313 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n709 0 n760 0 n761 1 } -verbose -store
#attempt:722
#current_net:n761
#current_comb_set:n761 n485,0 n708,0 n709,0 n760,0 n761,1 
run_justification -full_sequential -set { 311 0 313 0 315 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n708 0 n760 0 n761 1 } -verbose -store
#attempt:723
#current_net:n761
#current_comb_set:n761 n485,0 n487,0 n708,0 n760,0 n761,1 
run_justification -full_sequential -set { 311 0 312 0 313 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n487 0 n760 0 n761 1 } -verbose -store
#attempt:724
#current_net:n761
#current_comb_set:n761 n484,1 n485,0 n487,0 n760,0 n761,1 
run_justification -full_sequential -set { 310 1 311 0 312 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n709 0 n760 0 n761 1 } -verbose -store
#attempt:725
#current_net:n761
#current_comb_set:n761 n485,0 n487,0 n709,0 n760,0 n761,1 
run_justification -full_sequential -set { 311 0 312 0 315 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n709 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:726
#current_net:n761
#current_comb_set:n761 n708,0 n709,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 313 0 315 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n709 0 n759 1 n761 1 } -verbose -store
#attempt:727
#current_net:n761
#current_comb_set:n761 n485,0 n708,0 n709,0 n759,1 n761,1 
run_justification -full_sequential -set { 311 0 313 0 315 0 433 1 435 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n709 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:728
#current_net:n761
#current_comb_set:n761 n708,0 n709,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 313 0 315 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n709 0 n759 1 n761 1 } -verbose -store
#attempt:729
#current_net:n761
#current_comb_set:n761 n484,1 n485,0 n709,0 n759,1 n761,1 
run_justification -full_sequential -set { 310 1 311 0 315 0 433 1 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n487 0 n709 0 n761 1 } -verbose -store
#attempt:730
#current_net:n761
#current_comb_set:n761 n484,1 n485,0 n487,0 n709,0 n761,1 
run_justification -full_sequential -set { 310 1 311 0 312 0 315 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n709 0 n759 1 n761 1 } -verbose -store
#attempt:731
#current_net:n761
#current_comb_set:n761 n485,0 n708,0 n709,0 n759,1 n761,1 
run_justification -full_sequential -set { 311 0 313 0 315 0 433 1 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n709 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:732
#current_net:n761
#current_comb_set:n761 n485,0 n709,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 311 0 315 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n709 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:733
#current_net:n761
#current_comb_set:n761 n708,0 n709,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 313 0 315 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:734
#current_net:n761
#current_comb_set:n761 n484,1 n487,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 310 1 312 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n709 0 n760 0 n761 1 } -verbose -store
#attempt:735
#current_net:n761
#current_comb_set:n761 n485,0 n487,0 n709,0 n760,0 n761,1 
run_justification -full_sequential -set { 311 0 312 0 315 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n709 0 n760 0 n761 1 } -verbose -store
#attempt:736
#current_net:n761
#current_comb_set:n761 n485,0 n708,0 n709,0 n760,0 n761,1 
run_justification -full_sequential -set { 311 0 313 0 315 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n708 0 n760 0 n761 1 } -verbose -store
#attempt:737
#current_net:n761
#current_comb_set:n761 n484,1 n485,0 n708,0 n760,0 n761,1 
run_justification -full_sequential -set { 310 1 311 0 313 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n709 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:738
#current_net:n761
#current_comb_set:n761 n708,0 n709,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 313 0 315 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n709 0 n759 1 n761 1 } -verbose -store
#attempt:739
#current_net:n761
#current_comb_set:n761 n485,0 n487,0 n709,0 n759,1 n761,1 
run_justification -full_sequential -set { 311 0 312 0 315 0 433 1 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n708 0 n709 0 n760 0 n761 1 } -verbose -store
#attempt:740
#current_net:n761
#current_comb_set:n761 n484,1 n708,0 n709,0 n760,0 n761,1 
run_justification -full_sequential -set { 310 1 313 0 315 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n708 0 n709 0 n759 1 n761 1 } -verbose -store
#attempt:741
#current_net:n761
#current_comb_set:n761 n484,1 n708,0 n709,0 n759,1 n761,1 
run_justification -full_sequential -set { 310 1 313 0 315 0 433 1 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n709 0 n760 0 n761 1 } -verbose -store
#attempt:742
#current_net:n761
#current_comb_set:n761 n485,0 n708,0 n709,0 n760,0 n761,1 
run_justification -full_sequential -set { 311 0 313 0 315 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n709 0 n759 1 n761 1 } -verbose -store
#attempt:743
#current_net:n761
#current_comb_set:n761 n485,0 n708,0 n709,0 n759,1 n761,1 
run_justification -full_sequential -set { 311 0 313 0 315 0 433 1 435 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:744
#current_net:n761
#current_comb_set:n761 n709,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 315 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n708 0 n759 1 n761 1 } -verbose -store
#attempt:745
#current_net:n761
#current_comb_set:n761 n484,1 n708,0 n759,1 n761,1 
run_justification -full_sequential -set { 310 1 313 0 433 1 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n760 0 n761 1 } -verbose -store
#attempt:746
#current_net:n761
#current_comb_set:n761 n484,1 n487,0 n760,0 n761,1 
run_justification -full_sequential -set { 310 1 312 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n759 1 n761 1 } -verbose -store
#attempt:747
#current_net:n761
#current_comb_set:n761 n485,0 n487,0 n759,1 n761,1 
run_justification -full_sequential -set { 311 0 312 0 433 1 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n708 0 n761 1 } -verbose -store
#attempt:748
#current_net:n761
#current_comb_set:n761 n484,1 n487,0 n708,0 n761,1 
run_justification -full_sequential -set { 310 1 312 0 313 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n760 0 n761 1 } -verbose -store
#attempt:749
#current_net:n761
#current_comb_set:n761 n484,1 n487,0 n760,0 n761,1 
run_justification -full_sequential -set { 310 1 312 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n709 0 n760 0 n761 1 } -verbose -store
#attempt:750
#current_net:n761
#current_comb_set:n761 n487,0 n709,0 n760,0 n761,1 
run_justification -full_sequential -set { 312 0 315 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n708 0 n761 1 } -verbose -store
#attempt:751
#current_net:n761
#current_comb_set:n761 n485,0 n487,0 n708,0 n761,1 
run_justification -full_sequential -set { 311 0 312 0 313 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n708 0 n761 1 } -verbose -store
#attempt:752
#current_net:n761
#current_comb_set:n761 n485,0 n487,0 n708,0 n761,1 
run_justification -full_sequential -set { 311 0 312 0 313 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n760 0 n761 1 } -verbose -store
#attempt:753
#current_net:n761
#current_comb_set:n761 n484,1 n487,0 n760,0 n761,1 
run_justification -full_sequential -set { 310 1 312 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n708 0 n761 1 } -verbose -store
#attempt:754
#current_net:n761
#current_comb_set:n761 n484,1 n487,0 n708,0 n761,1 
run_justification -full_sequential -set { 310 1 312 0 313 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n709 0 n760 0 n761 1 } -verbose -store
#attempt:755
#current_net:n761
#current_comb_set:n761 n708,0 n709,0 n760,0 n761,1 
run_justification -full_sequential -set { 313 0 315 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n760 0 n761 1 } -verbose -store
#attempt:756
#current_net:n761
#current_comb_set:n761 n484,1 n487,0 n760,0 n761,1 
run_justification -full_sequential -set { 310 1 312 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n709 0 n759 1 n761 1 } -verbose -store
#attempt:757
#current_net:n761
#current_comb_set:n761 n708,0 n709,0 n759,1 n761,1 
run_justification -full_sequential -set { 313 0 315 0 433 1 435 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n708 0 n759 1 n761 1 } -verbose -store
#attempt:758
#current_net:n761
#current_comb_set:n761 n487,0 n708,0 n759,1 n761,1 
run_justification -full_sequential -set { 312 0 313 0 433 1 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n759 1 n761 1 } -verbose -store
#attempt:759
#current_net:n761
#current_comb_set:n761 n485,0 n708,0 n759,1 n761,1 
run_justification -full_sequential -set { 311 0 313 0 433 1 435 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n709 0 n760 0 n761 1 } -verbose -store
#attempt:760
#current_net:n761
#current_comb_set:n761 n708,0 n709,0 n760,0 n761,1 
run_justification -full_sequential -set { 313 0 315 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n708 0 n759 1 n761 1 } -verbose -store
#attempt:761
#current_net:n761
#current_comb_set:n761 n487,0 n708,0 n759,1 n761,1 
run_justification -full_sequential -set { 312 0 313 0 433 1 435 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n709 0 n760 0 n761 1 } -verbose -store
#attempt:762
#current_net:n761
#current_comb_set:n761 n708,0 n709,0 n760,0 n761,1 
run_justification -full_sequential -set { 313 0 315 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n760 0 n761 1 } -verbose -store
#attempt:763
#current_net:n761
#current_comb_set:n761 n485,0 n487,0 n760,0 n761,1 
run_justification -full_sequential -set { 311 0 312 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:764
#current_net:n761
#current_comb_set:n761 n485,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 311 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n708 0 n759 1 n761 1 } -verbose -store
#attempt:765
#current_net:n761
#current_comb_set:n761 n484,1 n708,0 n759,1 n761,1 
run_justification -full_sequential -set { 310 1 313 0 433 1 435 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n708 0 n760 0 n761 1 } -verbose -store
#attempt:766
#current_net:n761
#current_comb_set:n761 n487,0 n708,0 n760,0 n761,1 
run_justification -full_sequential -set { 312 0 313 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:767
#current_net:n761
#current_comb_set:n761 n708,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 313 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n708 0 n761 1 } -verbose -store
#attempt:768
#current_net:n761
#current_comb_set:n761 n484,1 n485,0 n708,0 n761,1 
run_justification -full_sequential -set { 310 1 311 0 313 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n708 0 n761 1 } -verbose -store
#attempt:769
#current_net:n761
#current_comb_set:n761 n484,1 n485,0 n708,0 n761,1 
run_justification -full_sequential -set { 310 1 311 0 313 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n709 0 n759 1 n761 1 } -verbose -store
#attempt:770
#current_net:n761
#current_comb_set:n761 n484,1 n709,0 n759,1 n761,1 
run_justification -full_sequential -set { 310 1 315 0 433 1 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n759 1 n761 1 } -verbose -store
#attempt:771
#current_net:n761
#current_comb_set:n761 n484,1 n485,0 n759,1 n761,1 
run_justification -full_sequential -set { 310 1 311 0 433 1 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n760 0 n761 1 } -verbose -store
#attempt:772
#current_net:n761
#current_comb_set:n761 n484,1 n487,0 n760,0 n761,1 
run_justification -full_sequential -set { 310 1 312 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n708 0 n761 1 } -verbose -store
#attempt:773
#current_net:n761
#current_comb_set:n761 n485,0 n487,0 n708,0 n761,1 
run_justification -full_sequential -set { 311 0 312 0 313 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n708 0 n760 0 n761 1 } -verbose -store
#attempt:774
#current_net:n761
#current_comb_set:n761 n484,1 n708,0 n760,0 n761,1 
run_justification -full_sequential -set { 310 1 313 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n709 0 n761 1 } -verbose -store
#attempt:775
#current_net:n761
#current_comb_set:n761 n484,1 n487,0 n709,0 n761,1 
run_justification -full_sequential -set { 310 1 312 0 315 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n760 0 n761 1 } -verbose -store
#attempt:776
#current_net:n761
#current_comb_set:n761 n484,1 n487,0 n760,0 n761,1 
run_justification -full_sequential -set { 310 1 312 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n759 1 n760 0 n761 1 } -verbose -store
#attempt:777
#current_net:n761
#current_comb_set:n761 n485,0 n759,1 n760,0 n761,1 
run_justification -full_sequential -set { 311 0 433 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n761 1 } -verbose -store
#attempt:778
#current_net:n761
#current_comb_set:n761 n484,1 n485,0 n761,1 
run_justification -full_sequential -set { 310 1 311 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n709 0 n761 1 } -verbose -store
#attempt:779
#current_net:n761
#current_comb_set:n761 n485,0 n709,0 n761,1 
run_justification -full_sequential -set { 311 0 315 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n761 1 } -verbose -store
#attempt:780
#current_net:n761
#current_comb_set:n761 n484,1 n485,0 n761,1 
run_justification -full_sequential -set { 310 1 311 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n760 0 n761 1 } -verbose -store
#attempt:781
#current_net:n761
#current_comb_set:n761 n484,1 n760,0 n761,1 
run_justification -full_sequential -set { 310 1 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n709 0 n761 1 } -verbose -store
#attempt:782
#current_net:n761
#current_comb_set:n761 n708,0 n709,0 n761,1 
run_justification -full_sequential -set { 313 0 315 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n759 1 n761 1 } -verbose -store
#attempt:783
#current_net:n761
#current_comb_set:n761 n708,0 n759,1 n761,1 
run_justification -full_sequential -set { 313 0 433 1 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n760 0 n761 1 } -verbose -store
#attempt:784
#current_net:n761
#current_comb_set:n761 n485,0 n760,0 n761,1 
run_justification -full_sequential -set { 311 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n709 0 n761 1 } -verbose -store
#attempt:785
#current_net:n761
#current_comb_set:n761 n485,0 n709,0 n761,1 
run_justification -full_sequential -set { 311 0 315 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n709 0 n761 1 } -verbose -store
#attempt:786
#current_net:n761
#current_comb_set:n761 n484,1 n709,0 n761,1 
run_justification -full_sequential -set { 310 1 315 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n709 0 n761 1 } -verbose -store
#attempt:787
#current_net:n761
#current_comb_set:n761 n708,0 n709,0 n761,1 
run_justification -full_sequential -set { 313 0 315 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n760 0 n761 1 } -verbose -store
#attempt:788
#current_net:n761
#current_comb_set:n761 n485,0 n760,0 n761,1 
run_justification -full_sequential -set { 311 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n708 0 n761 1 } -verbose -store
#attempt:789
#current_net:n761
#current_comb_set:n761 n487,0 n708,0 n761,1 
run_justification -full_sequential -set { 312 0 313 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n759 1 n761 1 } -verbose -store
#attempt:790
#current_net:n761
#current_comb_set:n761 n487,0 n759,1 n761,1 
run_justification -full_sequential -set { 312 0 433 1 435 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n761 1 } -verbose -store
#attempt:791
#current_net:n761
#current_comb_set:n761 n485,0 n708,0 n761,1 
run_justification -full_sequential -set { 311 0 313 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n761 1 } -verbose -store
#attempt:792
#current_net:n761
#current_comb_set:n761 n484,1 n485,0 n761,1 
run_justification -full_sequential -set { 310 1 311 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n760 0 n761 1 } -verbose -store
#attempt:793
#current_net:n761
#current_comb_set:n761 n487,0 n760,0 n761,1 
run_justification -full_sequential -set { 312 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n708 0 n761 1 } -verbose -store
#attempt:794
#current_net:n761
#current_comb_set:n761 n484,1 n708,0 n761,1 
run_justification -full_sequential -set { 310 1 313 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n709 0 n761 1 } -verbose -store
#attempt:795
#current_net:n761
#current_comb_set:n761 n487,0 n709,0 n761,1 
run_justification -full_sequential -set { 312 0 315 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n759 1 n761 1 } -verbose -store
#attempt:796
#current_net:n761
#current_comb_set:n761 n709,0 n759,1 n761,1 
run_justification -full_sequential -set { 315 0 433 1 435 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n760 0 n761 1 } -verbose -store
#attempt:797
#current_net:n761
#current_comb_set:n761 n487,0 n760,0 n761,1 
run_justification -full_sequential -set { 312 0 434 0 435 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n709 0 n748 1 n759 1 n762 1 } -verbose -store
#attempt:798
#current_net:n762
#current_comb_set:n762 n484,1 n487,0 n709,0 n748,1 n759,1 n762,1 
run_justification -full_sequential -set { 310 1 312 0 315 0 430 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n708 0 n748 1 n749 1 n761 1 n762 1 } -verbose -store
#attempt:799
#current_net:n762
#current_comb_set:n762 n487,0 n708,0 n748,1 n749,1 n761,1 n762,1 
run_justification -full_sequential -set { 312 0 313 0 430 1 431 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n709 0 n748 1 n760 0 n761 1 n762 1 } -verbose -store
#attempt:800
#current_net:n762
#current_comb_set:n762 n708,0 n709,0 n748,1 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 313 0 315 0 430 1 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n744 1 n749 1 n759 1 n760 0 n762 1 } -verbose -store
#attempt:801
#current_net:n762
#current_comb_set:n762 n484,1 n744,1 n749,1 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 310 1 429 1 431 1 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n708 0 n740 1 n744 1 n762 1 } -verbose -store
#attempt:802
#current_net:n762
#current_comb_set:n762 n484,1 n487,0 n708,0 n740,1 n744,1 n762,1 
run_justification -full_sequential -set { 310 1 312 0 313 0 428 1 429 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n709 0 n740 1 n744 1 n748 1 n762 1 } -verbose -store
#attempt:803
#current_net:n762
#current_comb_set:n762 n708,0 n709,0 n740,1 n744,1 n748,1 n762,1 
run_justification -full_sequential -set { 313 0 315 0 428 1 429 1 430 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n709 0 n748 1 n760 0 n761 1 n762 1 } -verbose -store
#attempt:804
#current_net:n762
#current_comb_set:n762 n484,1 n709,0 n748,1 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 310 1 315 0 430 1 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n749 1 n760 0 n761 1 n762 1 } -verbose -store
#attempt:805
#current_net:n762
#current_comb_set:n762 n484,1 n487,0 n749,1 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 310 1 312 0 431 1 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n744 1 n748 1 n760 0 n762 1 } -verbose -store
#attempt:806
#current_net:n762
#current_comb_set:n762 n484,1 n487,0 n744,1 n748,1 n760,0 n762,1 
run_justification -full_sequential -set { 310 1 312 0 429 1 430 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n740 1 n748 1 n749 1 n760 0 n762 1 } -verbose -store
#attempt:807
#current_net:n762
#current_comb_set:n762 n487,0 n740,1 n748,1 n749,1 n760,0 n762,1 
run_justification -full_sequential -set { 312 0 428 1 430 1 431 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n708 0 n759 1 n760 0 n761 1 n762 1 } -verbose -store
#attempt:808
#current_net:n762
#current_comb_set:n762 n484,1 n708,0 n759,1 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 310 1 313 0 433 1 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n709 0 n749 1 n761 1 n762 1 } -verbose -store
#attempt:809
#current_net:n762
#current_comb_set:n762 n485,0 n708,0 n709,0 n749,1 n761,1 n762,1 
run_justification -full_sequential -set { 311 0 313 0 315 0 431 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n708 0 n740 1 n748 1 n760 0 n762 1 } -verbose -store
#attempt:810
#current_net:n762
#current_comb_set:n762 n487,0 n708,0 n740,1 n748,1 n760,0 n762,1 
run_justification -full_sequential -set { 312 0 313 0 428 1 430 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n709 0 n744 1 n760 0 n761 1 n762 1 } -verbose -store
#attempt:811
#current_net:n762
#current_comb_set:n762 n484,1 n709,0 n744,1 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 310 1 315 0 429 1 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n748 1 n759 1 n760 0 n761 1 n762 1 } -verbose -store
#attempt:812
#current_net:n762
#current_comb_set:n762 n485,0 n748,1 n759,1 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 311 0 430 1 433 1 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n708 0 n744 1 n760 0 n762 1 } -verbose -store
#attempt:813
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n708,0 n744,1 n760,0 n762,1 
run_justification -full_sequential -set { 310 1 311 0 313 0 429 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n744 1 n748 1 n749 1 n759 1 n762 1 } -verbose -store
#attempt:814
#current_net:n762
#current_comb_set:n762 n708,0 n744,1 n748,1 n749,1 n759,1 n762,1 
run_justification -full_sequential -set { 313 0 429 1 430 1 431 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n748 1 n749 1 n760 0 n761 1 n762 1 } -verbose -store
#attempt:815
#current_net:n762
#current_comb_set:n762 n708,0 n748,1 n749,1 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 313 0 430 1 431 1 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n744 1 n749 1 n759 1 n760 0 n762 1 } -verbose -store
#attempt:816
#current_net:n762
#current_comb_set:n762 n484,1 n744,1 n749,1 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 310 1 429 1 431 1 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n744 1 n748 1 n761 1 n762 1 } -verbose -store
#attempt:817
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n744,1 n748,1 n761,1 n762,1 
run_justification -full_sequential -set { 310 1 311 0 429 1 430 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n709 0 n759 1 n760 0 n761 1 n762 1 } -verbose -store
#attempt:818
#current_net:n762
#current_comb_set:n762 n485,0 n709,0 n759,1 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 311 0 315 0 433 1 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n740 1 n748 1 n760 0 n761 1 n762 1 } -verbose -store
#attempt:819
#current_net:n762
#current_comb_set:n762 n487,0 n740,1 n748,1 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 312 0 428 1 430 1 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n709 0 n744 1 n759 1 n760 0 n762 1 } -verbose -store
#attempt:820
#current_net:n762
#current_comb_set:n762 n708,0 n709,0 n744,1 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 313 0 315 0 429 1 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n708 0 n740 1 n748 1 n759 1 n762 1 } -verbose -store
#attempt:821
#current_net:n762
#current_comb_set:n762 n487,0 n708,0 n740,1 n748,1 n759,1 n762,1 
run_justification -full_sequential -set { 312 0 313 0 428 1 430 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n744 1 n748 1 n760 0 n762 1 } -verbose -store
#attempt:822
#current_net:n762
#current_comb_set:n762 n485,0 n487,0 n744,1 n748,1 n760,0 n762,1 
run_justification -full_sequential -set { 311 0 312 0 429 1 430 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n708 0 n748 1 n759 1 n762 1 } -verbose -store
#attempt:823
#current_net:n762
#current_comb_set:n762 n485,0 n487,0 n708,0 n748,1 n759,1 n762,1 
run_justification -full_sequential -set { 311 0 312 0 313 0 430 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n740 1 n744 1 n748 1 n759 1 n762 1 } -verbose -store
#attempt:824
#current_net:n762
#current_comb_set:n762 n484,1 n740,1 n744,1 n748,1 n759,1 n762,1 
run_justification -full_sequential -set { 310 1 428 1 429 1 430 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n709 0 n759 1 n760 0 n761 1 n762 1 } -verbose -store
#attempt:825
#current_net:n762
#current_comb_set:n762 n708,0 n709,0 n759,1 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 313 0 315 0 433 1 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n708 0 n740 1 n759 1 n762 1 } -verbose -store
#attempt:826
#current_net:n762
#current_comb_set:n762 n485,0 n487,0 n708,0 n740,1 n759,1 n762,1 
run_justification -full_sequential -set { 311 0 312 0 313 0 428 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n740 1 n744 1 n759 1 n762 1 } -verbose -store
#attempt:827
#current_net:n762
#current_comb_set:n762 n485,0 n487,0 n740,1 n744,1 n759,1 n762,1 
run_justification -full_sequential -set { 311 0 312 0 428 1 429 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n708 0 n759 1 n760 0 n761 1 n762 1 } -verbose -store
#attempt:828
#current_net:n762
#current_comb_set:n762 n487,0 n708,0 n759,1 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 312 0 313 0 433 1 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n487 0 n740 1 n761 1 n762 1 } -verbose -store
#attempt:829
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n487,0 n740,1 n761,1 n762,1 
run_justification -full_sequential -set { 310 1 311 0 312 0 428 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n709 0 n740 1 n760 0 n762 1 } -verbose -store
#attempt:830
#current_net:n762
#current_comb_set:n762 n485,0 n487,0 n709,0 n740,1 n760,0 n762,1 
run_justification -full_sequential -set { 311 0 312 0 315 0 428 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n709 0 n759 1 n760 0 n761 1 n762 1 } -verbose -store
#attempt:831
#current_net:n762
#current_comb_set:n762 n708,0 n709,0 n759,1 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 313 0 315 0 433 1 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n744 1 n748 1 n760 0 n762 1 } -verbose -store
#attempt:832
#current_net:n762
#current_comb_set:n762 n485,0 n708,0 n744,1 n748,1 n760,0 n762,1 
run_justification -full_sequential -set { 311 0 313 0 429 1 430 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n708 0 n709 0 n749 1 n762 1 } -verbose -store
#attempt:833
#current_net:n762
#current_comb_set:n762 n485,0 n487,0 n708,0 n709,0 n749,1 n762,1 
run_justification -full_sequential -set { 311 0 312 0 313 0 315 0 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n487 0 n709 0 n759 1 n762 1 } -verbose -store
#attempt:834
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n487,0 n709,0 n759,1 n762,1 
run_justification -full_sequential -set { 310 1 311 0 312 0 315 0 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n744 1 n749 1 n759 1 n760 0 n762 1 } -verbose -store
#attempt:835
#current_net:n762
#current_comb_set:n762 n709,0 n744,1 n749,1 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 315 0 429 1 431 1 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n744 1 n749 1 n760 0 n761 1 n762 1 } -verbose -store
#attempt:836
#current_net:n762
#current_comb_set:n762 n484,1 n744,1 n749,1 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 310 1 429 1 431 1 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n708 0 n709 0 n744 1 n762 1 } -verbose -store
#attempt:837
#current_net:n762
#current_comb_set:n762 n484,1 n487,0 n708,0 n709,0 n744,1 n762,1 
run_justification -full_sequential -set { 310 1 312 0 313 0 315 0 429 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n748 1 n749 1 n759 1 n761 1 n762 1 } -verbose -store
#attempt:838
#current_net:n762
#current_comb_set:n762 n484,1 n748,1 n749,1 n759,1 n761,1 n762,1 
run_justification -full_sequential -set { 310 1 430 1 431 1 433 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n487 0 n740 1 n760 0 n762 1 } -verbose -store
#attempt:839
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n487,0 n740,1 n760,0 n762,1 
run_justification -full_sequential -set { 310 1 311 0 312 0 428 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n708 0 n744 1 n748 1 n762 1 } -verbose -store
#attempt:840
#current_net:n762
#current_comb_set:n762 n485,0 n487,0 n708,0 n744,1 n748,1 n762,1 
run_justification -full_sequential -set { 311 0 312 0 313 0 429 1 430 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n740 1 n744 1 n748 1 n749 1 n762 1 } -verbose -store
#attempt:841
#current_net:n762
#current_comb_set:n762 n487,0 n740,1 n744,1 n748,1 n749,1 n762,1 
run_justification -full_sequential -set { 312 0 428 1 429 1 430 1 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n709 0 n744 1 n748 1 n761 1 n762 1 } -verbose -store
#attempt:842
#current_net:n762
#current_comb_set:n762 n487,0 n709,0 n744,1 n748,1 n761,1 n762,1 
run_justification -full_sequential -set { 312 0 315 0 429 1 430 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n749 1 n759 1 n760 0 n762 1 } -verbose -store
#attempt:843
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n749,1 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 310 1 311 0 431 1 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n487 0 n748 1 n759 1 n762 1 } -verbose -store
#attempt:844
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n487,0 n748,1 n759,1 n762,1 
run_justification -full_sequential -set { 310 1 311 0 312 0 430 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n487 0 n708 0 n748 1 n762 1 } -verbose -store
#attempt:845
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n487,0 n708,0 n748,1 n762,1 
run_justification -full_sequential -set { 310 1 311 0 312 0 313 0 430 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n709 0 n749 1 n760 0 n761 1 n762 1 } -verbose -store
#attempt:846
#current_net:n762
#current_comb_set:n762 n484,1 n709,0 n749,1 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 310 1 315 0 431 1 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n709 0 n744 1 n760 0 n761 1 n762 1 } -verbose -store
#attempt:847
#current_net:n762
#current_comb_set:n762 n485,0 n709,0 n744,1 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 311 0 315 0 429 1 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n709 0 n744 1 n748 1 n761 1 n762 1 } -verbose -store
#attempt:848
#current_net:n762
#current_comb_set:n762 n708,0 n709,0 n744,1 n748,1 n761,1 n762,1 
run_justification -full_sequential -set { 313 0 315 0 429 1 430 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n487 0 n759 1 n760 0 n762 1 } -verbose -store
#attempt:849
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n487,0 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 310 1 311 0 312 0 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n709 0 n740 1 n744 1 n749 1 n762 1 } -verbose -store
#attempt:850
#current_net:n762
#current_comb_set:n762 n484,1 n709,0 n740,1 n744,1 n749,1 n762,1 
run_justification -full_sequential -set { 310 1 315 0 428 1 429 1 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n740 1 n744 1 n760 0 n762 1 } -verbose -store
#attempt:851
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n740,1 n744,1 n760,0 n762,1 
run_justification -full_sequential -set { 310 1 311 0 428 1 429 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n740 1 n748 1 n749 1 n759 1 n760 0 n762 1 } -verbose -store
#attempt:852
#current_net:n762
#current_comb_set:n762 n740,1 n748,1 n749,1 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 428 1 430 1 431 1 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n709 0 n740 1 n760 0 n762 1 } -verbose -store
#attempt:853
#current_net:n762
#current_comb_set:n762 n484,1 n487,0 n709,0 n740,1 n760,0 n762,1 
run_justification -full_sequential -set { 310 1 312 0 315 0 428 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n708 0 n749 1 n759 1 n762 1 } -verbose -store
#attempt:854
#current_net:n762
#current_comb_set:n762 n485,0 n487,0 n708,0 n749,1 n759,1 n762,1 
run_justification -full_sequential -set { 311 0 312 0 313 0 431 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n748 1 n749 1 n760 0 n762 1 } -verbose -store
#attempt:855
#current_net:n762
#current_comb_set:n762 n485,0 n708,0 n748,1 n749,1 n760,0 n762,1 
run_justification -full_sequential -set { 311 0 313 0 430 1 431 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n709 0 n740 1 n759 1 n762 1 } -verbose -store
#attempt:856
#current_net:n762
#current_comb_set:n762 n485,0 n487,0 n709,0 n740,1 n759,1 n762,1 
run_justification -full_sequential -set { 311 0 312 0 315 0 428 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n749 1 n759 1 n760 0 n761 1 n762 1 } -verbose -store
#attempt:857
#current_net:n762
#current_comb_set:n762 n485,0 n749,1 n759,1 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 311 0 431 1 433 1 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n708 0 n709 0 n740 1 n762 1 } -verbose -store
#attempt:858
#current_net:n762
#current_comb_set:n762 n485,0 n487,0 n708,0 n709,0 n740,1 n762,1 
run_justification -full_sequential -set { 311 0 312 0 313 0 315 0 428 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n709 0 n749 1 n760 0 n762 1 } -verbose -store
#attempt:859
#current_net:n762
#current_comb_set:n762 n485,0 n708,0 n709,0 n749,1 n760,0 n762,1 
run_justification -full_sequential -set { 311 0 313 0 315 0 431 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n708 0 n749 1 n760 0 n762 1 } -verbose -store
#attempt:860
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n708,0 n749,1 n760,0 n762,1 
run_justification -full_sequential -set { 310 1 311 0 313 0 431 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n740 1 n744 1 n748 1 n761 1 n762 1 } -verbose -store
#attempt:861
#current_net:n762
#current_comb_set:n762 n484,1 n740,1 n744,1 n748,1 n761,1 n762,1 
run_justification -full_sequential -set { 310 1 428 1 429 1 430 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n708 0 n748 1 n749 1 n762 1 } -verbose -store
#attempt:862
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n708,0 n748,1 n749,1 n762,1 
run_justification -full_sequential -set { 310 1 311 0 313 0 430 1 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n708 0 n749 1 n760 0 n762 1 } -verbose -store
#attempt:863
#current_net:n762
#current_comb_set:n762 n485,0 n487,0 n708,0 n749,1 n760,0 n762,1 
run_justification -full_sequential -set { 311 0 312 0 313 0 431 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n740 1 n744 1 n759 1 n760 0 n762 1 } -verbose -store
#attempt:864
#current_net:n762
#current_comb_set:n762 n485,0 n740,1 n744,1 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 311 0 428 1 429 1 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n740 1 n744 1 n749 1 n760 0 n762 1 } -verbose -store
#attempt:865
#current_net:n762
#current_comb_set:n762 n487,0 n740,1 n744,1 n749,1 n760,0 n762,1 
run_justification -full_sequential -set { 312 0 428 1 429 1 431 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n708 0 n740 1 n760 0 n761 1 n762 1 } -verbose -store
#attempt:866
#current_net:n762
#current_comb_set:n762 n487,0 n708,0 n740,1 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 312 0 313 0 428 1 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n740 1 n759 1 n760 0 n761 1 n762 1 } -verbose -store
#attempt:867
#current_net:n762
#current_comb_set:n762 n485,0 n740,1 n759,1 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 311 0 428 1 433 1 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n748 1 n749 1 n759 1 n760 0 n762 1 } -verbose -store
#attempt:868
#current_net:n762
#current_comb_set:n762 n484,1 n748,1 n749,1 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 310 1 430 1 431 1 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n740 1 n748 1 n760 0 n762 1 } -verbose -store
#attempt:869
#current_net:n762
#current_comb_set:n762 n485,0 n487,0 n740,1 n748,1 n760,0 n762,1 
run_justification -full_sequential -set { 311 0 312 0 428 1 430 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n709 0 n740 1 n759 1 n760 0 n762 1 } -verbose -store
#attempt:870
#current_net:n762
#current_comb_set:n762 n487,0 n709,0 n740,1 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 312 0 315 0 428 1 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n740 1 n744 1 n748 1 n749 1 n759 1 n762 1 } -verbose -store
#attempt:871
#current_net:n762
#current_comb_set:n762 n740,1 n744,1 n748,1 n749,1 n759,1 n762,1 
run_justification -full_sequential -set { 428 1 429 1 430 1 431 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n744 1 n759 1 n761 1 n762 1 } -verbose -store
#attempt:872
#current_net:n762
#current_comb_set:n762 n485,0 n708,0 n744,1 n759,1 n761,1 n762,1 
run_justification -full_sequential -set { 311 0 313 0 429 1 433 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n740 1 n744 1 n759 1 n760 0 n762 1 } -verbose -store
#attempt:873
#current_net:n762
#current_comb_set:n762 n709,0 n740,1 n744,1 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 315 0 428 1 429 1 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n709 0 n740 1 n748 1 n761 1 n762 1 } -verbose -store
#attempt:874
#current_net:n762
#current_comb_set:n762 n708,0 n709,0 n740,1 n748,1 n761,1 n762,1 
run_justification -full_sequential -set { 313 0 315 0 428 1 430 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n709 0 n740 1 n744 1 n759 1 n762 1 } -verbose -store
#attempt:875
#current_net:n762
#current_comb_set:n762 n708,0 n709,0 n740,1 n744,1 n759,1 n762,1 
run_justification -full_sequential -set { 313 0 315 0 428 1 429 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n740 1 n744 1 n749 1 n759 1 n762 1 } -verbose -store
#attempt:876
#current_net:n762
#current_comb_set:n762 n484,1 n740,1 n744,1 n749,1 n759,1 n762,1 
run_justification -full_sequential -set { 310 1 428 1 429 1 431 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n709 0 n740 1 n760 0 n761 1 n762 1 } -verbose -store
#attempt:877
#current_net:n762
#current_comb_set:n762 n708,0 n709,0 n740,1 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 313 0 315 0 428 1 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n744 1 n748 1 n749 1 n760 0 n761 1 n762 1 } -verbose -store
#attempt:878
#current_net:n762
#current_comb_set:n762 n744,1 n748,1 n749,1 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 429 1 430 1 431 1 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n740 1 n748 1 n749 1 n761 1 n762 1 } -verbose -store
#attempt:879
#current_net:n762
#current_comb_set:n762 n485,0 n740,1 n748,1 n749,1 n761,1 n762,1 
run_justification -full_sequential -set { 311 0 428 1 430 1 431 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n709 0 n760 0 n761 1 n762 1 } -verbose -store
#attempt:880
#current_net:n762
#current_comb_set:n762 n485,0 n708,0 n709,0 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 311 0 313 0 315 0 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n744 1 n748 1 n759 1 n762 1 } -verbose -store
#attempt:881
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n744,1 n748,1 n759,1 n762,1 
run_justification -full_sequential -set { 310 1 311 0 429 1 430 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n487 0 n740 1 n748 1 n762 1 } -verbose -store
#attempt:882
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n487,0 n740,1 n748,1 n762,1 
run_justification -full_sequential -set { 310 1 311 0 312 0 428 1 430 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n708 0 n709 0 n748 1 n761 1 n762 1 } -verbose -store
#attempt:883
#current_net:n762
#current_comb_set:n762 n487,0 n708,0 n709,0 n748,1 n761,1 n762,1 
run_justification -full_sequential -set { 312 0 313 0 315 0 430 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n487 0 n740 1 n749 1 n762 1 } -verbose -store
#attempt:884
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n487,0 n740,1 n749,1 n762,1 
run_justification -full_sequential -set { 310 1 311 0 312 0 428 1 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n744 1 n749 1 n759 1 n760 0 n762 1 } -verbose -store
#attempt:885
#current_net:n762
#current_comb_set:n762 n484,1 n744,1 n749,1 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 310 1 429 1 431 1 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n740 1 n749 1 n759 1 n760 0 n762 1 } -verbose -store
#attempt:886
#current_net:n762
#current_comb_set:n762 n487,0 n740,1 n749,1 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 312 0 428 1 431 1 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n708 0 n740 1 n748 1 n762 1 } -verbose -store
#attempt:887
#current_net:n762
#current_comb_set:n762 n485,0 n487,0 n708,0 n740,1 n748,1 n762,1 
run_justification -full_sequential -set { 311 0 312 0 313 0 428 1 430 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n709 0 n749 1 n759 1 n761 1 n762 1 } -verbose -store
#attempt:888
#current_net:n762
#current_comb_set:n762 n487,0 n709,0 n749,1 n759,1 n761,1 n762,1 
run_justification -full_sequential -set { 312 0 315 0 431 1 433 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n709 0 n740 1 n748 1 n762 1 } -verbose -store
#attempt:889
#current_net:n762
#current_comb_set:n762 n484,1 n487,0 n709,0 n740,1 n748,1 n762,1 
run_justification -full_sequential -set { 310 1 312 0 315 0 428 1 430 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n709 0 n740 1 n744 1 n761 1 n762 1 } -verbose -store
#attempt:890
#current_net:n762
#current_comb_set:n762 n485,0 n709,0 n740,1 n744,1 n761,1 n762,1 
run_justification -full_sequential -set { 311 0 315 0 428 1 429 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n708 0 n740 1 n748 1 n762 1 } -verbose -store
#attempt:891
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n708,0 n740,1 n748,1 n762,1 
run_justification -full_sequential -set { 310 1 311 0 313 0 428 1 430 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n709 0 n748 1 n759 1 n760 0 n762 1 } -verbose -store
#attempt:892
#current_net:n762
#current_comb_set:n762 n708,0 n709,0 n748,1 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 313 0 315 0 430 1 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n740 1 n749 1 n759 1 n760 0 n762 1 } -verbose -store
#attempt:893
#current_net:n762
#current_comb_set:n762 n740,1 n749,1 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 428 1 431 1 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n709 0 n740 1 n760 0 n762 1 } -verbose -store
#attempt:894
#current_net:n762
#current_comb_set:n762 n484,1 n709,0 n740,1 n760,0 n762,1 
run_justification -full_sequential -set { 310 1 315 0 428 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n749 1 n761 1 n762 1 } -verbose -store
#attempt:895
#current_net:n762
#current_comb_set:n762 n484,1 n487,0 n749,1 n761,1 n762,1 
run_justification -full_sequential -set { 310 1 312 0 431 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n749 1 n761 1 n762 1 } -verbose -store
#attempt:896
#current_net:n762
#current_comb_set:n762 n484,1 n487,0 n749,1 n761,1 n762,1 
run_justification -full_sequential -set { 310 1 312 0 431 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n709 0 n740 1 n749 1 n762 1 } -verbose -store
#attempt:897
#current_net:n762
#current_comb_set:n762 n487,0 n709,0 n740,1 n749,1 n762,1 
run_justification -full_sequential -set { 312 0 315 0 428 1 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n749 1 n760 0 n762 1 } -verbose -store
#attempt:898
#current_net:n762
#current_comb_set:n762 n485,0 n708,0 n749,1 n760,0 n762,1 
run_justification -full_sequential -set { 311 0 313 0 431 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n748 1 n759 1 n761 1 n762 1 } -verbose -store
#attempt:899
#current_net:n762
#current_comb_set:n762 n708,0 n748,1 n759,1 n761,1 n762,1 
run_justification -full_sequential -set { 313 0 430 1 433 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n740 1 n759 1 n760 0 n762 1 } -verbose -store
#attempt:900
#current_net:n762
#current_comb_set:n762 n484,1 n740,1 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 310 1 428 1 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n709 0 n749 1 n760 0 n762 1 } -verbose -store
#attempt:901
#current_net:n762
#current_comb_set:n762 n484,1 n709,0 n749,1 n760,0 n762,1 
run_justification -full_sequential -set { 310 1 315 0 431 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n744 1 n759 1 n762 1 } -verbose -store
#attempt:902
#current_net:n762
#current_comb_set:n762 n485,0 n487,0 n744,1 n759,1 n762,1 
run_justification -full_sequential -set { 311 0 312 0 429 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n709 0 n740 1 n762 1 } -verbose -store
#attempt:903
#current_net:n762
#current_comb_set:n762 n485,0 n487,0 n709,0 n740,1 n762,1 
run_justification -full_sequential -set { 311 0 312 0 315 0 428 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n759 1 n760 0 n761 1 n762 1 } -verbose -store
#attempt:904
#current_net:n762
#current_comb_set:n762 n708,0 n759,1 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 313 0 433 1 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n709 0 n760 0 n762 1 } -verbose -store
#attempt:905
#current_net:n762
#current_comb_set:n762 n485,0 n487,0 n709,0 n760,0 n762,1 
run_justification -full_sequential -set { 311 0 312 0 315 0 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n749 1 n759 1 n762 1 } -verbose -store
#attempt:906
#current_net:n762
#current_comb_set:n762 n485,0 n487,0 n749,1 n759,1 n762,1 
run_justification -full_sequential -set { 311 0 312 0 431 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n708 0 n759 1 n762 1 } -verbose -store
#attempt:907
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n708,0 n759,1 n762,1 
run_justification -full_sequential -set { 310 1 311 0 313 0 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n749 1 n759 1 n762 1 } -verbose -store
#attempt:908
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n749,1 n759,1 n762,1 
run_justification -full_sequential -set { 310 1 311 0 431 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n740 1 n748 1 n760 0 n762 1 } -verbose -store
#attempt:909
#current_net:n762
#current_comb_set:n762 n485,0 n740,1 n748,1 n760,0 n762,1 
run_justification -full_sequential -set { 311 0 428 1 430 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n748 1 n749 1 n762 1 } -verbose -store
#attempt:910
#current_net:n762
#current_comb_set:n762 n485,0 n487,0 n748,1 n749,1 n762,1 
run_justification -full_sequential -set { 311 0 312 0 430 1 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n749 1 n761 1 n762 1 } -verbose -store
#attempt:911
#current_net:n762
#current_comb_set:n762 n485,0 n708,0 n749,1 n761,1 n762,1 
run_justification -full_sequential -set { 311 0 313 0 431 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n709 0 n744 1 n759 1 n762 1 } -verbose -store
#attempt:912
#current_net:n762
#current_comb_set:n762 n484,1 n709,0 n744,1 n759,1 n762,1 
run_justification -full_sequential -set { 310 1 315 0 429 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n740 1 n760 0 n762 1 } -verbose -store
#attempt:913
#current_net:n762
#current_comb_set:n762 n485,0 n708,0 n740,1 n760,0 n762,1 
run_justification -full_sequential -set { 311 0 313 0 428 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n744 1 n748 1 n761 1 n762 1 } -verbose -store
#attempt:914
#current_net:n762
#current_comb_set:n762 n709,0 n744,1 n748,1 n761,1 n762,1 
run_justification -full_sequential -set { 315 0 429 1 430 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n744 1 n749 1 n760 0 n762 1 } -verbose -store
#attempt:915
#current_net:n762
#current_comb_set:n762 n708,0 n744,1 n749,1 n760,0 n762,1 
run_justification -full_sequential -set { 313 0 429 1 431 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n740 1 n748 1 n762 1 } -verbose -store
#attempt:916
#current_net:n762
#current_comb_set:n762 n485,0 n487,0 n740,1 n748,1 n762,1 
run_justification -full_sequential -set { 311 0 312 0 428 1 430 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n708 0 n759 1 n761 1 n762 1 } -verbose -store
#attempt:917
#current_net:n762
#current_comb_set:n762 n484,1 n708,0 n759,1 n761,1 n762,1 
run_justification -full_sequential -set { 310 1 313 0 433 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n708 0 n744 1 n760 0 n762 1 } -verbose -store
#attempt:918
#current_net:n762
#current_comb_set:n762 n484,1 n708,0 n744,1 n760,0 n762,1 
run_justification -full_sequential -set { 310 1 313 0 429 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n740 1 n759 1 n762 1 } -verbose -store
#attempt:919
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n740,1 n759,1 n762,1 
run_justification -full_sequential -set { 310 1 311 0 428 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n487 0 n749 1 n762 1 } -verbose -store
#attempt:920
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n487,0 n749,1 n762,1 
run_justification -full_sequential -set { 310 1 311 0 312 0 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n740 1 n748 1 n749 1 n759 1 n762 1 } -verbose -store
#attempt:921
#current_net:n762
#current_comb_set:n762 n740,1 n748,1 n749,1 n759,1 n762,1 
run_justification -full_sequential -set { 428 1 430 1 431 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n749 1 n759 1 n762 1 } -verbose -store
#attempt:922
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n749,1 n759,1 n762,1 
run_justification -full_sequential -set { 310 1 311 0 431 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n744 1 n759 1 n762 1 } -verbose -store
#attempt:923
#current_net:n762
#current_comb_set:n762 n485,0 n487,0 n744,1 n759,1 n762,1 
run_justification -full_sequential -set { 311 0 312 0 429 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n740 1 n749 1 n759 1 n762 1 } -verbose -store
#attempt:924
#current_net:n762
#current_comb_set:n762 n487,0 n740,1 n749,1 n759,1 n762,1 
run_justification -full_sequential -set { 312 0 428 1 431 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n744 1 n748 1 n761 1 n762 1 } -verbose -store
#attempt:925
#current_net:n762
#current_comb_set:n762 n484,1 n744,1 n748,1 n761,1 n762,1 
run_justification -full_sequential -set { 310 1 429 1 430 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n708 0 n744 1 n762 1 } -verbose -store
#attempt:926
#current_net:n762
#current_comb_set:n762 n485,0 n487,0 n708,0 n744,1 n762,1 
run_justification -full_sequential -set { 311 0 312 0 313 0 429 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n744 1 n748 1 n749 1 n762 1 } -verbose -store
#attempt:927
#current_net:n762
#current_comb_set:n762 n709,0 n744,1 n748,1 n749,1 n762,1 
run_justification -full_sequential -set { 315 0 429 1 430 1 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n709 0 n740 1 n760 0 n762 1 } -verbose -store
#attempt:928
#current_net:n762
#current_comb_set:n762 n484,1 n709,0 n740,1 n760,0 n762,1 
run_justification -full_sequential -set { 310 1 315 0 428 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n744 1 n749 1 n759 1 n760 0 n762 1 } -verbose -store
#attempt:929
#current_net:n762
#current_comb_set:n762 n744,1 n749,1 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 429 1 431 1 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n740 1 n744 1 n749 1 n761 1 n762 1 } -verbose -store
#attempt:930
#current_net:n762
#current_comb_set:n762 n740,1 n744,1 n749,1 n761,1 n762,1 
run_justification -full_sequential -set { 428 1 429 1 431 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n708 0 n749 1 n762 1 } -verbose -store
#attempt:931
#current_net:n762
#current_comb_set:n762 n484,1 n487,0 n708,0 n749,1 n762,1 
run_justification -full_sequential -set { 310 1 312 0 313 0 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n740 1 n748 1 n759 1 n762 1 } -verbose -store
#attempt:932
#current_net:n762
#current_comb_set:n762 n484,1 n740,1 n748,1 n759,1 n762,1 
run_justification -full_sequential -set { 310 1 428 1 430 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n740 1 n760 0 n762 1 } -verbose -store
#attempt:933
#current_net:n762
#current_comb_set:n762 n484,1 n487,0 n740,1 n760,0 n762,1 
run_justification -full_sequential -set { 310 1 312 0 428 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n740 1 n759 1 n760 0 n761 1 n762 1 } -verbose -store
#attempt:934
#current_net:n762
#current_comb_set:n762 n740,1 n759,1 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 428 1 433 1 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n748 1 n749 1 n762 1 } -verbose -store
#attempt:935
#current_net:n762
#current_comb_set:n762 n484,1 n487,0 n748,1 n749,1 n762,1 
run_justification -full_sequential -set { 310 1 312 0 430 1 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n748 1 n749 1 n761 1 n762 1 } -verbose -store
#attempt:936
#current_net:n762
#current_comb_set:n762 n484,1 n748,1 n749,1 n761,1 n762,1 
run_justification -full_sequential -set { 310 1 430 1 431 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n749 1 n761 1 n762 1 } -verbose -store
#attempt:937
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n749,1 n761,1 n762,1 
run_justification -full_sequential -set { 310 1 311 0 431 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n708 0 n709 0 n759 1 n762 1 } -verbose -store
#attempt:938
#current_net:n762
#current_comb_set:n762 n484,1 n708,0 n709,0 n759,1 n762,1 
run_justification -full_sequential -set { 310 1 313 0 315 0 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n759 1 n760 0 n762 1 } -verbose -store
#attempt:939
#current_net:n762
#current_comb_set:n762 n484,1 n487,0 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 310 1 312 0 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n708 0 n709 0 n744 1 n762 1 } -verbose -store
#attempt:940
#current_net:n762
#current_comb_set:n762 n487,0 n708,0 n709,0 n744,1 n762,1 
run_justification -full_sequential -set { 312 0 313 0 315 0 429 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n740 1 n748 1 n760 0 n762 1 } -verbose -store
#attempt:941
#current_net:n762
#current_comb_set:n762 n485,0 n740,1 n748,1 n760,0 n762,1 
run_justification -full_sequential -set { 311 0 428 1 430 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n744 1 n749 1 n759 1 n760 0 n762 1 } -verbose -store
#attempt:942
#current_net:n762
#current_comb_set:n762 n744,1 n749,1 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 429 1 431 1 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n744 1 n759 1 n762 1 } -verbose -store
#attempt:943
#current_net:n762
#current_comb_set:n762 n484,1 n487,0 n744,1 n759,1 n762,1 
run_justification -full_sequential -set { 310 1 312 0 429 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n748 1 n749 1 n761 1 n762 1 } -verbose -store
#attempt:944
#current_net:n762
#current_comb_set:n762 n709,0 n748,1 n749,1 n761,1 n762,1 
run_justification -full_sequential -set { 315 0 430 1 431 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n709 0 n759 1 n760 0 n762 1 } -verbose -store
#attempt:945
#current_net:n762
#current_comb_set:n762 n487,0 n709,0 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 312 0 315 0 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n744 1 n759 1 n762 1 } -verbose -store
#attempt:946
#current_net:n762
#current_comb_set:n762 n485,0 n487,0 n744,1 n759,1 n762,1 
run_justification -full_sequential -set { 311 0 312 0 429 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n709 0 n744 1 n761 1 n762 1 } -verbose -store
#attempt:947
#current_net:n762
#current_comb_set:n762 n484,1 n709,0 n744,1 n761,1 n762,1 
run_justification -full_sequential -set { 310 1 315 0 429 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n748 1 n760 0 n761 1 n762 1 } -verbose -store
#attempt:948
#current_net:n762
#current_comb_set:n762 n485,0 n748,1 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 311 0 430 1 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n740 1 n744 1 n760 0 n762 1 } -verbose -store
#attempt:949
#current_net:n762
#current_comb_set:n762 n484,1 n740,1 n744,1 n760,0 n762,1 
run_justification -full_sequential -set { 310 1 428 1 429 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n740 1 n744 1 n749 1 n759 1 n762 1 } -verbose -store
#attempt:950
#current_net:n762
#current_comb_set:n762 n740,1 n744,1 n749,1 n759,1 n762,1 
run_justification -full_sequential -set { 428 1 429 1 431 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n748 1 n749 1 n762 1 } -verbose -store
#attempt:951
#current_net:n762
#current_comb_set:n762 n484,1 n487,0 n748,1 n749,1 n762,1 
run_justification -full_sequential -set { 310 1 312 0 430 1 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n744 1 n759 1 n760 0 n762 1 } -verbose -store
#attempt:952
#current_net:n762
#current_comb_set:n762 n485,0 n744,1 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 311 0 429 1 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n744 1 n748 1 n759 1 n762 1 } -verbose -store
#attempt:953
#current_net:n762
#current_comb_set:n762 n484,1 n744,1 n748,1 n759,1 n762,1 
run_justification -full_sequential -set { 310 1 429 1 430 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n744 1 n748 1 n760 0 n762 1 } -verbose -store
#attempt:954
#current_net:n762
#current_comb_set:n762 n708,0 n744,1 n748,1 n760,0 n762,1 
run_justification -full_sequential -set { 313 0 429 1 430 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n709 0 n744 1 n761 1 n762 1 } -verbose -store
#attempt:955
#current_net:n762
#current_comb_set:n762 n485,0 n709,0 n744,1 n761,1 n762,1 
run_justification -full_sequential -set { 311 0 315 0 429 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n748 1 n759 1 n761 1 n762 1 } -verbose -store
#attempt:956
#current_net:n762
#current_comb_set:n762 n484,1 n748,1 n759,1 n761,1 n762,1 
run_justification -full_sequential -set { 310 1 430 1 433 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n744 1 n759 1 n760 0 n762 1 } -verbose -store
#attempt:957
#current_net:n762
#current_comb_set:n762 n485,0 n744,1 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 311 0 429 1 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n708 0 n709 0 n744 1 n762 1 } -verbose -store
#attempt:958
#current_net:n762
#current_comb_set:n762 n484,1 n708,0 n709,0 n744,1 n762,1 
run_justification -full_sequential -set { 310 1 313 0 315 0 429 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n487 0 n748 1 n762 1 } -verbose -store
#attempt:959
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n487,0 n748,1 n762,1 
run_justification -full_sequential -set { 310 1 311 0 312 0 430 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n744 1 n748 1 n762 1 } -verbose -store
#attempt:960
#current_net:n762
#current_comb_set:n762 n484,1 n487,0 n744,1 n748,1 n762,1 
run_justification -full_sequential -set { 310 1 312 0 429 1 430 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n708 0 n709 0 n762 1 } -verbose -store
#attempt:961
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n708,0 n709,0 n762,1 
run_justification -full_sequential -set { 310 1 311 0 313 0 315 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n708 0 n749 1 n759 1 n762 1 } -verbose -store
#attempt:962
#current_net:n762
#current_comb_set:n762 n487,0 n708,0 n749,1 n759,1 n762,1 
run_justification -full_sequential -set { 312 0 313 0 431 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n740 1 n749 1 n759 1 n762 1 } -verbose -store
#attempt:963
#current_net:n762
#current_comb_set:n762 n708,0 n740,1 n749,1 n759,1 n762,1 
run_justification -full_sequential -set { 313 0 428 1 431 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n740 1 n744 1 n749 1 n760 0 n762 1 } -verbose -store
#attempt:964
#current_net:n762
#current_comb_set:n762 n740,1 n744,1 n749,1 n760,0 n762,1 
run_justification -full_sequential -set { 428 1 429 1 431 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n744 1 n759 1 n760 0 n762 1 } -verbose -store
#attempt:965
#current_net:n762
#current_comb_set:n762 n709,0 n744,1 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 315 0 429 1 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n744 1 n760 0 n761 1 n762 1 } -verbose -store
#attempt:966
#current_net:n762
#current_comb_set:n762 n709,0 n744,1 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 315 0 429 1 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n744 1 n749 1 n760 0 n762 1 } -verbose -store
#attempt:967
#current_net:n762
#current_comb_set:n762 n484,1 n744,1 n749,1 n760,0 n762,1 
run_justification -full_sequential -set { 310 1 429 1 431 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n744 1 n749 1 n759 1 n762 1 } -verbose -store
#attempt:968
#current_net:n762
#current_comb_set:n762 n709,0 n744,1 n749,1 n759,1 n762,1 
run_justification -full_sequential -set { 315 0 429 1 431 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n709 0 n759 1 n761 1 n762 1 } -verbose -store
#attempt:969
#current_net:n762
#current_comb_set:n762 n708,0 n709,0 n759,1 n761,1 n762,1 
run_justification -full_sequential -set { 313 0 315 0 433 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n740 1 n744 1 n749 1 n762 1 } -verbose -store
#attempt:970
#current_net:n762
#current_comb_set:n762 n708,0 n740,1 n744,1 n749,1 n762,1 
run_justification -full_sequential -set { 313 0 428 1 429 1 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n744 1 n749 1 n760 0 n762 1 } -verbose -store
#attempt:971
#current_net:n762
#current_comb_set:n762 n485,0 n744,1 n749,1 n760,0 n762,1 
run_justification -full_sequential -set { 311 0 429 1 431 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n744 1 n748 1 n749 1 n762 1 } -verbose -store
#attempt:972
#current_net:n762
#current_comb_set:n762 n485,0 n744,1 n748,1 n749,1 n762,1 
run_justification -full_sequential -set { 311 0 429 1 430 1 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n709 0 n740 1 n749 1 n762 1 } -verbose -store
#attempt:973
#current_net:n762
#current_comb_set:n762 n708,0 n709,0 n740,1 n749,1 n762,1 
run_justification -full_sequential -set { 313 0 315 0 428 1 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n744 1 n749 1 n762 1 } -verbose -store
#attempt:974
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n744,1 n749,1 n762,1 
run_justification -full_sequential -set { 310 1 311 0 429 1 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n749 1 n759 1 n760 0 n762 1 } -verbose -store
#attempt:975
#current_net:n762
#current_comb_set:n762 n708,0 n749,1 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 313 0 431 1 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n740 1 n744 1 n749 1 n762 1 } -verbose -store
#attempt:976
#current_net:n762
#current_comb_set:n762 n708,0 n740,1 n744,1 n749,1 n762,1 
run_justification -full_sequential -set { 313 0 428 1 429 1 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n740 1 n748 1 n762 1 } -verbose -store
#attempt:977
#current_net:n762
#current_comb_set:n762 n485,0 n708,0 n740,1 n748,1 n762,1 
run_justification -full_sequential -set { 311 0 313 0 428 1 430 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n740 1 n744 1 n748 1 n762 1 } -verbose -store
#attempt:978
#current_net:n762
#current_comb_set:n762 n487,0 n740,1 n744,1 n748,1 n762,1 
run_justification -full_sequential -set { 312 0 428 1 429 1 430 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n740 1 n748 1 n759 1 n762 1 } -verbose -store
#attempt:979
#current_net:n762
#current_comb_set:n762 n487,0 n740,1 n748,1 n759,1 n762,1 
run_justification -full_sequential -set { 312 0 428 1 430 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n740 1 n749 1 n761 1 n762 1 } -verbose -store
#attempt:980
#current_net:n762
#current_comb_set:n762 n487,0 n740,1 n749,1 n761,1 n762,1 
run_justification -full_sequential -set { 312 0 428 1 431 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n748 1 n761 1 n762 1 } -verbose -store
#attempt:981
#current_net:n762
#current_comb_set:n762 n709,0 n748,1 n761,1 n762,1 
run_justification -full_sequential -set { 315 0 430 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n748 1 n759 1 n760 0 n762 1 } -verbose -store
#attempt:982
#current_net:n762
#current_comb_set:n762 n748,1 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 430 1 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n744 1 n760 0 n762 1 } -verbose -store
#attempt:983
#current_net:n762
#current_comb_set:n762 n709,0 n744,1 n760,0 n762,1 
run_justification -full_sequential -set { 315 0 429 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n709 0 n760 0 n762 1 } -verbose -store
#attempt:984
#current_net:n762
#current_comb_set:n762 n484,1 n709,0 n760,0 n762,1 
run_justification -full_sequential -set { 310 1 315 0 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n740 1 n748 1 n762 1 } -verbose -store
#attempt:985
#current_net:n762
#current_comb_set:n762 n487,0 n740,1 n748,1 n762,1 
run_justification -full_sequential -set { 312 0 428 1 430 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n760 0 n762 1 } -verbose -store
#attempt:986
#current_net:n762
#current_comb_set:n762 n485,0 n708,0 n760,0 n762,1 
run_justification -full_sequential -set { 311 0 313 0 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n744 1 n749 1 n760 0 n762 1 } -verbose -store
#attempt:987
#current_net:n762
#current_comb_set:n762 n744,1 n749,1 n760,0 n762,1 
run_justification -full_sequential -set { 429 1 431 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n740 1 n744 1 n762 1 } -verbose -store
#attempt:988
#current_net:n762
#current_comb_set:n762 n485,0 n740,1 n744,1 n762,1 
run_justification -full_sequential -set { 311 0 428 1 429 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n740 1 n762 1 } -verbose -store
#attempt:989
#current_net:n762
#current_comb_set:n762 n484,1 n487,0 n740,1 n762,1 
run_justification -full_sequential -set { 310 1 312 0 428 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n708 0 n761 1 n762 1 } -verbose -store
#attempt:990
#current_net:n762
#current_comb_set:n762 n487,0 n708,0 n761,1 n762,1 
run_justification -full_sequential -set { 312 0 313 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n748 1 n749 1 n762 1 } -verbose -store
#attempt:991
#current_net:n762
#current_comb_set:n762 n487,0 n748,1 n749,1 n762,1 
run_justification -full_sequential -set { 312 0 430 1 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n708 0 n762 1 } -verbose -store
#attempt:992
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n708,0 n762,1 
run_justification -full_sequential -set { 310 1 311 0 313 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n709 0 n740 1 n762 1 } -verbose -store
#attempt:993
#current_net:n762
#current_comb_set:n762 n487,0 n709,0 n740,1 n762,1 
run_justification -full_sequential -set { 312 0 315 0 428 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n708 0 n709 0 n762 1 } -verbose -store
#attempt:994
#current_net:n762
#current_comb_set:n762 n484,1 n708,0 n709,0 n762,1 
run_justification -full_sequential -set { 310 1 313 0 315 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n744 1 n749 1 n761 1 n762 1 } -verbose -store
#attempt:995
#current_net:n762
#current_comb_set:n762 n744,1 n749,1 n761,1 n762,1 
run_justification -full_sequential -set { 429 1 431 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n740 1 n762 1 } -verbose -store
#attempt:996
#current_net:n762
#current_comb_set:n762 n485,0 n708,0 n740,1 n762,1 
run_justification -full_sequential -set { 311 0 313 0 428 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n744 1 n760 0 n762 1 } -verbose -store
#attempt:997
#current_net:n762
#current_comb_set:n762 n709,0 n744,1 n760,0 n762,1 
run_justification -full_sequential -set { 315 0 429 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n760 0 n761 1 n762 1 } -verbose -store
#attempt:998
#current_net:n762
#current_comb_set:n762 n709,0 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 315 0 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n740 1 n761 1 n762 1 } -verbose -store
#attempt:999
#current_net:n762
#current_comb_set:n762 n709,0 n740,1 n761,1 n762,1 
run_justification -full_sequential -set { 315 0 428 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n709 0 n744 1 n762 1 } -verbose -store
#attempt:1000
#current_net:n762
#current_comb_set:n762 n487,0 n709,0 n744,1 n762,1 
run_justification -full_sequential -set { 312 0 315 0 429 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n744 1 n760 0 n762 1 } -verbose -store
#attempt:1001
#current_net:n762
#current_comb_set:n762 n484,1 n744,1 n760,0 n762,1 
run_justification -full_sequential -set { 310 1 429 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n748 1 n749 1 n762 1 } -verbose -store
#attempt:1002
#current_net:n762
#current_comb_set:n762 n485,0 n748,1 n749,1 n762,1 
run_justification -full_sequential -set { 311 0 430 1 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n740 1 n749 1 n760 0 n762 1 } -verbose -store
#attempt:1003
#current_net:n762
#current_comb_set:n762 n740,1 n749,1 n760,0 n762,1 
run_justification -full_sequential -set { 428 1 431 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n740 1 n761 1 n762 1 } -verbose -store
#attempt:1004
#current_net:n762
#current_comb_set:n762 n485,0 n740,1 n761,1 n762,1 
run_justification -full_sequential -set { 311 0 428 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n749 1 n759 1 n762 1 } -verbose -store
#attempt:1005
#current_net:n762
#current_comb_set:n762 n709,0 n749,1 n759,1 n762,1 
run_justification -full_sequential -set { 315 0 431 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n709 0 n740 1 n762 1 } -verbose -store
#attempt:1006
#current_net:n762
#current_comb_set:n762 n708,0 n709,0 n740,1 n762,1 
run_justification -full_sequential -set { 313 0 315 0 428 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n748 1 n761 1 n762 1 } -verbose -store
#attempt:1007
#current_net:n762
#current_comb_set:n762 n708,0 n748,1 n761,1 n762,1 
run_justification -full_sequential -set { 313 0 430 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n748 1 n762 1 } -verbose -store
#attempt:1008
#current_net:n762
#current_comb_set:n762 n485,0 n487,0 n748,1 n762,1 
run_justification -full_sequential -set { 311 0 312 0 430 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n709 0 n760 0 n762 1 } -verbose -store
#attempt:1009
#current_net:n762
#current_comb_set:n762 n485,0 n709,0 n760,0 n762,1 
run_justification -full_sequential -set { 311 0 315 0 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n744 1 n748 1 n762 1 } -verbose -store
#attempt:1010
#current_net:n762
#current_comb_set:n762 n484,1 n744,1 n748,1 n762,1 
run_justification -full_sequential -set { 310 1 429 1 430 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n709 0 n749 1 n762 1 } -verbose -store
#attempt:1011
#current_net:n762
#current_comb_set:n762 n485,0 n709,0 n749,1 n762,1 
run_justification -full_sequential -set { 311 0 315 0 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n709 0 n744 1 n762 1 } -verbose -store
#attempt:1012
#current_net:n762
#current_comb_set:n762 n485,0 n709,0 n744,1 n762,1 
run_justification -full_sequential -set { 311 0 315 0 429 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n760 0 n761 1 n762 1 } -verbose -store
#attempt:1013
#current_net:n762
#current_comb_set:n762 n485,0 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 311 0 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n740 1 n749 1 n762 1 } -verbose -store
#attempt:1014
#current_net:n762
#current_comb_set:n762 n487,0 n740,1 n749,1 n762,1 
run_justification -full_sequential -set { 312 0 428 1 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n740 1 n744 1 n762 1 } -verbose -store
#attempt:1015
#current_net:n762
#current_comb_set:n762 n709,0 n740,1 n744,1 n762,1 
run_justification -full_sequential -set { 315 0 428 1 429 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n709 0 n762 1 } -verbose -store
#attempt:1016
#current_net:n762
#current_comb_set:n762 n485,0 n708,0 n709,0 n762,1 
run_justification -full_sequential -set { 311 0 313 0 315 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n744 1 n761 1 n762 1 } -verbose -store
#attempt:1017
#current_net:n762
#current_comb_set:n762 n485,0 n744,1 n761,1 n762,1 
run_justification -full_sequential -set { 311 0 429 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n740 1 n762 1 } -verbose -store
#attempt:1018
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n740,1 n762,1 
run_justification -full_sequential -set { 310 1 311 0 428 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n748 1 n762 1 } -verbose -store
#attempt:1019
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n748,1 n762,1 
run_justification -full_sequential -set { 310 1 311 0 430 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n749 1 n759 1 n762 1 } -verbose -store
#attempt:1020
#current_net:n762
#current_comb_set:n762 n487,0 n749,1 n759,1 n762,1 
run_justification -full_sequential -set { 312 0 431 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n740 1 n760 0 n761 1 n762 1 } -verbose -store
#attempt:1021
#current_net:n762
#current_comb_set:n762 n740,1 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 428 1 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n748 1 n759 1 n762 1 } -verbose -store
#attempt:1022
#current_net:n762
#current_comb_set:n762 n485,0 n748,1 n759,1 n762,1 
run_justification -full_sequential -set { 311 0 430 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n748 1 n760 0 n762 1 } -verbose -store
#attempt:1023
#current_net:n762
#current_comb_set:n762 n484,1 n748,1 n760,0 n762,1 
run_justification -full_sequential -set { 310 1 430 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n761 1 n762 1 } -verbose -store
#attempt:1024
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n761,1 n762,1 
run_justification -full_sequential -set { 310 1 311 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n740 1 n749 1 n762 1 } -verbose -store
#attempt:1025
#current_net:n762
#current_comb_set:n762 n487,0 n740,1 n749,1 n762,1 
run_justification -full_sequential -set { 312 0 428 1 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n749 1 n759 1 n762 1 } -verbose -store
#attempt:1026
#current_net:n762
#current_comb_set:n762 n708,0 n749,1 n759,1 n762,1 
run_justification -full_sequential -set { 313 0 431 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n709 0 n744 1 n762 1 } -verbose -store
#attempt:1027
#current_net:n762
#current_comb_set:n762 n485,0 n709,0 n744,1 n762,1 
run_justification -full_sequential -set { 311 0 315 0 429 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n709 0 n762 1 } -verbose -store
#attempt:1028
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n709,0 n762,1 
run_justification -full_sequential -set { 310 1 311 0 315 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n487 0 n740 1 n762 1 } -verbose -store
#attempt:1029
#current_net:n762
#current_comb_set:n762 n484,1 n487,0 n740,1 n762,1 
run_justification -full_sequential -set { 310 1 312 0 428 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n744 1 n748 1 n762 1 } -verbose -store
#attempt:1030
#current_net:n762
#current_comb_set:n762 n708,0 n744,1 n748,1 n762,1 
run_justification -full_sequential -set { 313 0 429 1 430 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n708 0 n744 1 n762 1 } -verbose -store
#attempt:1031
#current_net:n762
#current_comb_set:n762 n484,1 n708,0 n744,1 n762,1 
run_justification -full_sequential -set { 310 1 313 0 429 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n749 1 n759 1 n762 1 } -verbose -store
#attempt:1032
#current_net:n762
#current_comb_set:n762 n708,0 n749,1 n759,1 n762,1 
run_justification -full_sequential -set { 313 0 431 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n709 0 n760 0 n762 1 } -verbose -store
#attempt:1033
#current_net:n762
#current_comb_set:n762 n484,1 n709,0 n760,0 n762,1 
run_justification -full_sequential -set { 310 1 315 0 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n740 1 n748 1 n749 1 n762 1 } -verbose -store
#attempt:1034
#current_net:n762
#current_comb_set:n762 n740,1 n748,1 n749,1 n762,1 
run_justification -full_sequential -set { 428 1 430 1 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n759 1 n762 1 } -verbose -store
#attempt:1035
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n759,1 n762,1 
run_justification -full_sequential -set { 310 1 311 0 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n487 0 n740 1 n762 1 } -verbose -store
#attempt:1036
#current_net:n762
#current_comb_set:n762 n485,0 n487,0 n740,1 n762,1 
run_justification -full_sequential -set { 311 0 312 0 428 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n744 1 n759 1 n760 0 n762 1 } -verbose -store
#attempt:1037
#current_net:n762
#current_comb_set:n762 n744,1 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 429 1 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n744 1 n748 1 n762 1 } -verbose -store
#attempt:1038
#current_net:n762
#current_comb_set:n762 n708,0 n744,1 n748,1 n762,1 
run_justification -full_sequential -set { 313 0 429 1 430 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n744 1 n762 1 } -verbose -store
#attempt:1039
#current_net:n762
#current_comb_set:n762 n485,0 n708,0 n744,1 n762,1 
run_justification -full_sequential -set { 311 0 313 0 429 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n759 1 n760 0 n761 1 n762 1 } -verbose -store
#attempt:1040
#current_net:n762
#current_comb_set:n762 n759,1 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 433 1 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n748 1 n749 1 n762 1 } -verbose -store
#attempt:1041
#current_net:n762
#current_comb_set:n762 n487,0 n748,1 n749,1 n762,1 
run_justification -full_sequential -set { 312 0 430 1 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n740 1 n760 0 n761 1 n762 1 } -verbose -store
#attempt:1042
#current_net:n762
#current_comb_set:n762 n740,1 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 428 1 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n749 1 n761 1 n762 1 } -verbose -store
#attempt:1043
#current_net:n762
#current_comb_set:n762 n709,0 n749,1 n761,1 n762,1 
run_justification -full_sequential -set { 315 0 431 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n740 1 n760 0 n762 1 } -verbose -store
#attempt:1044
#current_net:n762
#current_comb_set:n762 n709,0 n740,1 n760,0 n762,1 
run_justification -full_sequential -set { 315 0 428 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n740 1 n759 1 n762 1 } -verbose -store
#attempt:1045
#current_net:n762
#current_comb_set:n762 n709,0 n740,1 n759,1 n762,1 
run_justification -full_sequential -set { 315 0 428 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n748 1 n762 1 } -verbose -store
#attempt:1046
#current_net:n762
#current_comb_set:n762 n485,0 n708,0 n748,1 n762,1 
run_justification -full_sequential -set { 311 0 313 0 430 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n749 1 n760 0 n762 1 } -verbose -store
#attempt:1047
#current_net:n762
#current_comb_set:n762 n485,0 n749,1 n760,0 n762,1 
run_justification -full_sequential -set { 311 0 431 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n740 1 n749 1 n762 1 } -verbose -store
#attempt:1048
#current_net:n762
#current_comb_set:n762 n708,0 n740,1 n749,1 n762,1 
run_justification -full_sequential -set { 313 0 428 1 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n749 1 n761 1 n762 1 } -verbose -store
#attempt:1049
#current_net:n762
#current_comb_set:n762 n487,0 n749,1 n761,1 n762,1 
run_justification -full_sequential -set { 312 0 431 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n748 1 n759 1 n762 1 } -verbose -store
#attempt:1050
#current_net:n762
#current_comb_set:n762 n484,1 n748,1 n759,1 n762,1 
run_justification -full_sequential -set { 310 1 430 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n748 1 n749 1 n760 0 n762 1 } -verbose -store
#attempt:1051
#current_net:n762
#current_comb_set:n762 n748,1 n749,1 n760,0 n762,1 
run_justification -full_sequential -set { 430 1 431 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n744 1 n761 1 n762 1 } -verbose -store
#attempt:1052
#current_net:n762
#current_comb_set:n762 n485,0 n744,1 n761,1 n762,1 
run_justification -full_sequential -set { 311 0 429 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n709 0 n740 1 n762 1 } -verbose -store
#attempt:1053
#current_net:n762
#current_comb_set:n762 n708,0 n709,0 n740,1 n762,1 
run_justification -full_sequential -set { 313 0 315 0 428 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n709 0 n759 1 n762 1 } -verbose -store
#attempt:1054
#current_net:n762
#current_comb_set:n762 n484,1 n709,0 n759,1 n762,1 
run_justification -full_sequential -set { 310 1 315 0 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n740 1 n759 1 n762 1 } -verbose -store
#attempt:1055
#current_net:n762
#current_comb_set:n762 n485,0 n740,1 n759,1 n762,1 
run_justification -full_sequential -set { 311 0 428 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n709 0 n749 1 n762 1 } -verbose -store
#attempt:1056
#current_net:n762
#current_comb_set:n762 n487,0 n709,0 n749,1 n762,1 
run_justification -full_sequential -set { 312 0 315 0 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n709 0 n744 1 n762 1 } -verbose -store
#attempt:1057
#current_net:n762
#current_comb_set:n762 n485,0 n709,0 n744,1 n762,1 
run_justification -full_sequential -set { 311 0 315 0 429 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n744 1 n761 1 n762 1 } -verbose -store
#attempt:1058
#current_net:n762
#current_comb_set:n762 n487,0 n744,1 n761,1 n762,1 
run_justification -full_sequential -set { 312 0 429 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n740 1 n749 1 n762 1 } -verbose -store
#attempt:1059
#current_net:n762
#current_comb_set:n762 n485,0 n740,1 n749,1 n762,1 
run_justification -full_sequential -set { 311 0 428 1 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n759 1 n760 0 n762 1 } -verbose -store
#attempt:1060
#current_net:n762
#current_comb_set:n762 n487,0 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 312 0 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n748 1 n762 1 } -verbose -store
#attempt:1061
#current_net:n762
#current_comb_set:n762 n708,0 n748,1 n762,1 
run_justification -full_sequential -set { 313 0 430 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n744 1 n762 1 } -verbose -store
#attempt:1062
#current_net:n762
#current_comb_set:n762 n484,1 n744,1 n762,1 
run_justification -full_sequential -set { 310 1 429 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n740 1 n760 0 n762 1 } -verbose -store
#attempt:1063
#current_net:n762
#current_comb_set:n762 n740,1 n760,0 n762,1 
run_justification -full_sequential -set { 428 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n748 1 n760 0 n762 1 } -verbose -store
#attempt:1064
#current_net:n762
#current_comb_set:n762 n748,1 n760,0 n762,1 
run_justification -full_sequential -set { 430 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n708 0 n762 1 } -verbose -store
#attempt:1065
#current_net:n762
#current_comb_set:n762 n487,0 n708,0 n762,1 
run_justification -full_sequential -set { 312 0 313 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n740 1 n762 1 } -verbose -store
#attempt:1066
#current_net:n762
#current_comb_set:n762 n484,1 n740,1 n762,1 
run_justification -full_sequential -set { 310 1 428 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n744 1 n762 1 } -verbose -store
#attempt:1067
#current_net:n762
#current_comb_set:n762 n487,0 n744,1 n762,1 
run_justification -full_sequential -set { 312 0 429 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n760 0 n762 1 } -verbose -store
#attempt:1068
#current_net:n762
#current_comb_set:n762 n708,0 n760,0 n762,1 
run_justification -full_sequential -set { 313 0 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n749 1 n762 1 } -verbose -store
#attempt:1069
#current_net:n762
#current_comb_set:n762 n484,1 n749,1 n762,1 
run_justification -full_sequential -set { 310 1 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n709 0 n762 1 } -verbose -store
#attempt:1070
#current_net:n762
#current_comb_set:n762 n485,0 n709,0 n762,1 
run_justification -full_sequential -set { 311 0 315 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n759 1 n762 1 } -verbose -store
#attempt:1071
#current_net:n762
#current_comb_set:n762 n487,0 n759,1 n762,1 
run_justification -full_sequential -set { 312 0 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n744 1 n749 1 n762 1 } -verbose -store
#attempt:1072
#current_net:n762
#current_comb_set:n762 n744,1 n749,1 n762,1 
run_justification -full_sequential -set { 429 1 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n760 0 n762 1 } -verbose -store
#attempt:1073
#current_net:n762
#current_comb_set:n762 n485,0 n760,0 n762,1 
run_justification -full_sequential -set { 311 0 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n749 1 n760 0 n762 1 } -verbose -store
#attempt:1074
#current_net:n762
#current_comb_set:n762 n749,1 n760,0 n762,1 
run_justification -full_sequential -set { 431 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n744 1 n749 1 n762 1 } -verbose -store
#attempt:1075
#current_net:n762
#current_comb_set:n762 n744,1 n749,1 n762,1 
run_justification -full_sequential -set { 429 1 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n748 1 n762 1 } -verbose -store
#attempt:1076
#current_net:n762
#current_comb_set:n762 n487,0 n748,1 n762,1 
run_justification -full_sequential -set { 312 0 430 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n762 1 } -verbose -store
#attempt:1077
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n762,1 
run_justification -full_sequential -set { 310 1 311 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n759 1 n760 0 n762 1 } -verbose -store
#attempt:1078
#current_net:n762
#current_comb_set:n762 n759,1 n760,0 n762,1 
run_justification -full_sequential -set { 433 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n748 1 n760 0 n762 1 } -verbose -store
#attempt:1079
#current_net:n762
#current_comb_set:n762 n748,1 n760,0 n762,1 
run_justification -full_sequential -set { 430 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n744 1 n759 1 n762 1 } -verbose -store
#attempt:1080
#current_net:n762
#current_comb_set:n762 n744,1 n759,1 n762,1 
run_justification -full_sequential -set { 429 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n760 0 n762 1 } -verbose -store
#attempt:1081
#current_net:n762
#current_comb_set:n762 n487,0 n760,0 n762,1 
run_justification -full_sequential -set { 312 0 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n759 1 n762 1 } -verbose -store
#attempt:1082
#current_net:n762
#current_comb_set:n762 n487,0 n759,1 n762,1 
run_justification -full_sequential -set { 312 0 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n740 1 n759 1 n762 1 } -verbose -store
#attempt:1083
#current_net:n762
#current_comb_set:n762 n740,1 n759,1 n762,1 
run_justification -full_sequential -set { 428 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n740 1 n762 1 } -verbose -store
#attempt:1084
#current_net:n762
#current_comb_set:n762 n709,0 n740,1 n762,1 
run_justification -full_sequential -set { 315 0 428 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n744 1 n761 1 n762 1 } -verbose -store
#attempt:1085
#current_net:n762
#current_comb_set:n762 n744,1 n761,1 n762,1 
run_justification -full_sequential -set { 429 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n762 1 } -verbose -store
#attempt:1086
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n762,1 
run_justification -full_sequential -set { 310 1 311 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n744 1 n762 1 } -verbose -store
#attempt:1087
#current_net:n762
#current_comb_set:n762 n708,0 n744,1 n762,1 
run_justification -full_sequential -set { 313 0 429 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n744 1 n762 1 } -verbose -store
#attempt:1088
#current_net:n762
#current_comb_set:n762 n487,0 n744,1 n762,1 
run_justification -full_sequential -set { 312 0 429 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n749 1 n760 0 n762 1 } -verbose -store
#attempt:1089
#current_net:n762
#current_comb_set:n762 n749,1 n760,0 n762,1 
run_justification -full_sequential -set { 431 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n760 0 n762 1 } -verbose -store
#attempt:1090
#current_net:n762
#current_comb_set:n762 n709,0 n760,0 n762,1 
run_justification -full_sequential -set { 315 0 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n762 1 } -verbose -store
#attempt:1091
#current_net:n762
#current_comb_set:n762 n485,0 n708,0 n762,1 
run_justification -full_sequential -set { 311 0 313 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n740 1 n761 1 n762 1 } -verbose -store
#attempt:1092
#current_net:n762
#current_comb_set:n762 n740,1 n761,1 n762,1 
run_justification -full_sequential -set { 428 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n759 1 n762 1 } -verbose -store
#attempt:1093
#current_net:n762
#current_comb_set:n762 n709,0 n759,1 n762,1 
run_justification -full_sequential -set { 315 0 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n740 1 n749 1 n762 1 } -verbose -store
#attempt:1094
#current_net:n762
#current_comb_set:n762 n740,1 n749,1 n762,1 
run_justification -full_sequential -set { 428 1 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n740 1 n762 1 } -verbose -store
#attempt:1095
#current_net:n762
#current_comb_set:n762 n485,0 n740,1 n762,1 
run_justification -full_sequential -set { 311 0 428 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n748 1 n761 1 n762 1 } -verbose -store
#attempt:1096
#current_net:n762
#current_comb_set:n762 n748,1 n761,1 n762,1 
run_justification -full_sequential -set { 430 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n744 1 n759 1 n762 1 } -verbose -store
#attempt:1097
#current_net:n762
#current_comb_set:n762 n744,1 n759,1 n762,1 
run_justification -full_sequential -set { 429 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n744 1 n748 1 n762 1 } -verbose -store
#attempt:1098
#current_net:n762
#current_comb_set:n762 n744,1 n748,1 n762,1 
run_justification -full_sequential -set { 429 1 430 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n760 0 n762 1 } -verbose -store
#attempt:1099
#current_net:n762
#current_comb_set:n762 n484,1 n760,0 n762,1 
run_justification -full_sequential -set { 310 1 434 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n759 1 n761 1 n762 1 } -verbose -store
#attempt:1100
#current_net:n762
#current_comb_set:n762 n759,1 n761,1 n762,1 
run_justification -full_sequential -set { 433 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n740 1 n759 1 n762 1 } -verbose -store
#attempt:1101
#current_net:n762
#current_comb_set:n762 n740,1 n759,1 n762,1 
run_justification -full_sequential -set { 428 1 433 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 n744 1 n762 1 } -verbose -store
#attempt:1102
#current_net:n762
#current_comb_set:n762 n708,0 n744,1 n762,1 
run_justification -full_sequential -set { 313 0 429 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n487 0 n749 1 n762 1 } -verbose -store
#attempt:1103
#current_net:n762
#current_comb_set:n762 n487,0 n749,1 n762,1 
run_justification -full_sequential -set { 312 0 431 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n760 0 n761 1 n762 1 } -verbose -store
#attempt:1104
#current_net:n762
#current_comb_set:n762 n760,0 n761,1 n762,1 
run_justification -full_sequential -set { 434 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n748 1 n761 1 n762 1 } -verbose -store
#attempt:1105
#current_net:n762
#current_comb_set:n762 n748,1 n761,1 n762,1 
run_justification -full_sequential -set { 430 1 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n748 1 n762 1 } -verbose -store
#attempt:1106
#current_net:n762
#current_comb_set:n762 n484,1 n748,1 n762,1 
run_justification -full_sequential -set { 310 1 430 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n748 1 n762 1 } -verbose -store
#attempt:1107
#current_net:n762
#current_comb_set:n762 n485,0 n748,1 n762,1 
run_justification -full_sequential -set { 311 0 430 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 n485 0 n762 1 } -verbose -store
#attempt:1108
#current_net:n762
#current_comb_set:n762 n484,1 n485,0 n762,1 
run_justification -full_sequential -set { 310 1 311 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 n708 0 n762 1 } -verbose -store
#attempt:1109
#current_net:n762
#current_comb_set:n762 n485,0 n708,0 n762,1 
run_justification -full_sequential -set { 311 0 313 0 436 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n761 1 n762 1 } -verbose -store
#attempt:1110
#current_net:n762
#current_comb_set:n762 n709,0 n761,1 n762,1 
run_justification -full_sequential -set { 315 0 435 1 436 1 } -verbose -store
#run_justification -full_sequential -set { n740 1 n748 1 n762 1 } -verbose -store
#attempt:1111
#current_net:n762
#current_comb_set:n762 n740,1 n748,1 n762,1 
run_justification -full_sequential -set { 428 1 430 1 436 1 } -verbose -store
report_patterns -internal -all
exit
