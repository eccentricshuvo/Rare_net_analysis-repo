read_netlist /home/UFAD/sudiptaparia/Downloads/mero_v2_1/src//lec25dscc25.v -library
read_netlist /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn/c2670_syn.v
set_build -nodelete_unused_gates -merge noglobal_tie_propagate
run_build_model c2670
drc 
test 
set pindata seq_sim_data 
#run_justification -full_sequential -set { n484 1 } -verbose -store
#current_net:n484
run_justification -full_sequential -set { 310 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 } -verbose -store
#current_net:n485
run_justification -full_sequential -set { 311 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 } -verbose -store
#current_net:n487
run_justification -full_sequential -set { 312 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 } -verbose -store
#current_net:n708
run_justification -full_sequential -set { 313 0 } -verbose -store
#run_justification -full_sequential -set { n489 0 } -verbose -store
#current_net:n489
run_justification -full_sequential -set { 318 0 } -verbose -store
#run_justification -full_sequential -set { n490 0 } -verbose -store
#current_net:n490
run_justification -full_sequential -set { 319 0 } -verbose -store
#run_justification -full_sequential -set { n601 1 } -verbose -store
#current_net:n601
run_justification -full_sequential -set { 555 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 } -verbose -store
#current_net:n561
run_justification -full_sequential -set { 516 1 } -verbose -store
#run_justification -full_sequential -set { n585 1 } -verbose -store
#current_net:n585
run_justification -full_sequential -set { 534 1 } -verbose -store
#run_justification -full_sequential -set { n583 1 } -verbose -store
#current_net:n583
run_justification -full_sequential -set { 531 1 } -verbose -store
#run_justification -full_sequential -set { n590 0 } -verbose -store
#current_net:n590
run_justification -full_sequential -set { 554 0 } -verbose -store
#run_justification -full_sequential -set { n605 1 } -verbose -store
#current_net:n605
run_justification -full_sequential -set { 549 1 } -verbose -store
#run_justification -full_sequential -set { n613 0 } -verbose -store
#current_net:n613
run_justification -full_sequential -set { 566 0 } -verbose -store
#run_justification -full_sequential -set { n615 1 } -verbose -store
#current_net:n615
run_justification -full_sequential -set { 567 1 } -verbose -store
#run_justification -full_sequential -set { n619 0 } -verbose -store
#current_net:n619
run_justification -full_sequential -set { 568 0 } -verbose -store
#run_justification -full_sequential -set { n618 0 } -verbose -store
#current_net:n618
run_justification -full_sequential -set { 548 0 } -verbose -store
#run_justification -full_sequential -set { n641 0 } -verbose -store
#current_net:n641
run_justification -full_sequential -set { 501 0 } -verbose -store
#run_justification -full_sequential -set { n643 1 } -verbose -store
#current_net:n643
run_justification -full_sequential -set { 502 1 } -verbose -store
#run_justification -full_sequential -set { n645 0 } -verbose -store
#current_net:n645
run_justification -full_sequential -set { 503 0 } -verbose -store
#run_justification -full_sequential -set { n647 1 } -verbose -store
#current_net:n647
run_justification -full_sequential -set { 504 1 } -verbose -store
#run_justification -full_sequential -set { n661 0 } -verbose -store
#current_net:n661
run_justification -full_sequential -set { 461 0 } -verbose -store
#run_justification -full_sequential -set { n679 0 } -verbose -store
#current_net:n679
run_justification -full_sequential -set { 482 0 } -verbose -store
#run_justification -full_sequential -set { n681 1 } -verbose -store
#current_net:n681
run_justification -full_sequential -set { 485 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 } -verbose -store
#current_net:n683
run_justification -full_sequential -set { 486 0 } -verbose -store
#run_justification -full_sequential -set { n684 1 } -verbose -store
#current_net:n684
run_justification -full_sequential -set { 487 1 } -verbose -store
#run_justification -full_sequential -set { n704 0 } -verbose -store
#current_net:n704
run_justification -full_sequential -set { 488 0 } -verbose -store
#run_justification -full_sequential -set { n700 0 } -verbose -store
#current_net:n700
run_justification -full_sequential -set { 447 0 } -verbose -store
#run_justification -full_sequential -set { n702 1 } -verbose -store
#current_net:n702
run_justification -full_sequential -set { 469 1 } -verbose -store
#run_justification -full_sequential -set { n703 0 } -verbose -store
#current_net:n703
run_justification -full_sequential -set { 470 0 } -verbose -store
#run_justification -full_sequential -set { n705 1 } -verbose -store
#current_net:n705
run_justification -full_sequential -set { 489 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 } -verbose -store
#current_net:n709
run_justification -full_sequential -set { 315 0 } -verbose -store
#run_justification -full_sequential -set { n740 1 } -verbose -store
#current_net:n740
run_justification -full_sequential -set { 428 1 } -verbose -store
#run_justification -full_sequential -set { n744 1 } -verbose -store
#current_net:n744
run_justification -full_sequential -set { 429 1 } -verbose -store
#run_justification -full_sequential -set { n748 1 } -verbose -store
#current_net:n748
run_justification -full_sequential -set { 430 1 } -verbose -store
#run_justification -full_sequential -set { n749 1 } -verbose -store
#current_net:n749
run_justification -full_sequential -set { 431 1 } -verbose -store
#run_justification -full_sequential -set { n757 1 } -verbose -store
#current_net:n757
run_justification -full_sequential -set { 184 1 } -verbose -store
#run_justification -full_sequential -set { n758 1 } -verbose -store
#current_net:n758
run_justification -full_sequential -set { 185 1 } -verbose -store
#run_justification -full_sequential -set { n759 1 } -verbose -store
#current_net:n759
run_justification -full_sequential -set { 433 1 } -verbose -store
#run_justification -full_sequential -set { n760 0 } -verbose -store
#current_net:n760
run_justification -full_sequential -set { 434 0 } -verbose -store
#run_justification -full_sequential -set { n761 1 } -verbose -store
#current_net:n761
run_justification -full_sequential -set { 435 1 } -verbose -store
#run_justification -full_sequential -set { n762 1 } -verbose -store
#current_net:n762
run_justification -full_sequential -set { 436 1 } -verbose -store
report_patterns -internal -all 
report_primitives -pis > /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//tmax_pi.txt
exit 
