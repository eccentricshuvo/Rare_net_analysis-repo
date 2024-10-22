read_netlist /home/UFAD/sudiptaparia/Downloads/mero_v2_1/src/lec25dscc25.v -library
read_netlist /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn/c2670_syn.v
set_build -nodelete_unused_gates -merge noglobal_tie_propagate 
run_build_model c2670
drc
test
set pindata seq_sim_data 
#run_justification -full_sequential -set { n484 1 G65 0 } -verbose -store
#attempt:0
#current_net:n484
#current_comb:n484 n484,1 G65,0 
run_justification -full_sequential -set { 310 1 119 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 G117 0 } -verbose -store
#attempt:1
#current_net:n484
#current_comb:n484 n484,1 G117,0 
run_justification -full_sequential -set { 310 1 20 0 } -verbose -store
#run_justification -full_sequential -set { n484 1 G36 1 } -verbose -store
#attempt:2
#current_net:n484
#current_comb:n484 n484,1 G36,1 
run_justification -full_sequential -set { 310 1 87 1 } -verbose -store
#run_justification -full_sequential -set { n484 1 G68 1 } -verbose -store
#attempt:3
#current_net:n484
#current_comb:n484 n484,1 G68,1 
run_justification -full_sequential -set { 310 1 122 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 G117 1 } -verbose -store
#attempt:4
#current_net:n485
#current_comb:n485 n485,0 G117,1 
run_justification -full_sequential -set { 311 0 20 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 G67 1 } -verbose -store
#attempt:5
#current_net:n485
#current_comb:n485 n485,0 G67,1 
run_justification -full_sequential -set { 311 0 121 1 } -verbose -store
#run_justification -full_sequential -set { n485 0 G36 0 } -verbose -store
#attempt:6
#current_net:n485
#current_comb:n485 n485,0 G36,0 
run_justification -full_sequential -set { 311 0 87 0 } -verbose -store
#run_justification -full_sequential -set { n485 0 G33 0 } -verbose -store
#attempt:7
#current_net:n485
#current_comb:n485 n485,0 G33,0 
run_justification -full_sequential -set { 311 0 84 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 G65 0 } -verbose -store
#attempt:8
#current_net:n487
#current_comb:n487 n487,0 G65,0 
run_justification -full_sequential -set { 312 0 119 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 G68 0 } -verbose -store
#attempt:9
#current_net:n487
#current_comb:n487 n487,0 G68,0 
run_justification -full_sequential -set { 312 0 122 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 G67 0 } -verbose -store
#attempt:10
#current_net:n487
#current_comb:n487 n487,0 G67,0 
run_justification -full_sequential -set { 312 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n487 0 G117 0 } -verbose -store
#attempt:11
#current_net:n487
#current_comb:n487 n487,0 G117,0 
run_justification -full_sequential -set { 312 0 20 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 G117 1 } -verbose -store
#attempt:12
#current_net:n708
#current_comb:n708 n708,0 G117,1 
run_justification -full_sequential -set { 313 0 20 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 G67 1 } -verbose -store
#attempt:13
#current_net:n708
#current_comb:n708 n708,0 G67,1 
run_justification -full_sequential -set { 313 0 121 1 } -verbose -store
#run_justification -full_sequential -set { n708 0 G36 0 } -verbose -store
#attempt:14
#current_net:n708
#current_comb:n708 n708,0 G36,0 
run_justification -full_sequential -set { 313 0 87 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 G33 0 } -verbose -store
#attempt:15
#current_net:n708
#current_comb:n708 n708,0 G33,0 
run_justification -full_sequential -set { 313 0 84 0 } -verbose -store
#run_justification -full_sequential -set { n708 0 G34 0 } -verbose -store
#attempt:16
#current_net:n708
#current_comb:n708 n708,0 G34,0 
run_justification -full_sequential -set { 313 0 85 0 } -verbose -store
#run_justification -full_sequential -set { n489 0 G117 1 } -verbose -store
#attempt:17
#current_net:n489
#current_comb:n489 n489,0 G117,1 
run_justification -full_sequential -set { 318 0 20 1 } -verbose -store
#run_justification -full_sequential -set { n489 0 G67 1 } -verbose -store
#attempt:18
#current_net:n489
#current_comb:n489 n489,0 G67,1 
run_justification -full_sequential -set { 318 0 121 1 } -verbose -store
#run_justification -full_sequential -set { n489 0 G36 0 } -verbose -store
#attempt:19
#current_net:n489
#current_comb:n489 n489,0 G36,0 
run_justification -full_sequential -set { 318 0 87 0 } -verbose -store
#run_justification -full_sequential -set { n489 0 G33 0 } -verbose -store
#attempt:20
#current_net:n489
#current_comb:n489 n489,0 G33,0 
run_justification -full_sequential -set { 318 0 84 0 } -verbose -store
#run_justification -full_sequential -set { n489 0 G34 0 } -verbose -store
#attempt:21
#current_net:n489
#current_comb:n489 n489,0 G34,0 
run_justification -full_sequential -set { 318 0 85 0 } -verbose -store
#run_justification -full_sequential -set { n490 0 G65 0 } -verbose -store
#attempt:22
#current_net:n490
#current_comb:n490 n490,0 G65,0 
run_justification -full_sequential -set { 319 0 119 0 } -verbose -store
#run_justification -full_sequential -set { n490 0 G68 0 } -verbose -store
#attempt:23
#current_net:n490
#current_comb:n490 n490,0 G68,0 
run_justification -full_sequential -set { 319 0 122 0 } -verbose -store
#run_justification -full_sequential -set { n490 0 G66 0 } -verbose -store
#attempt:24
#current_net:n490
#current_comb:n490 n490,0 G66,0 
run_justification -full_sequential -set { 319 0 120 0 } -verbose -store
#run_justification -full_sequential -set { n490 0 G67 0 } -verbose -store
#attempt:25
#current_net:n490
#current_comb:n490 n490,0 G67,0 
run_justification -full_sequential -set { 319 0 121 0 } -verbose -store
#run_justification -full_sequential -set { n601 1 G67 1 } -verbose -store
#attempt:26
#current_net:n601
#current_comb:n601 n601,1 G67,1 
run_justification -full_sequential -set { 555 1 121 1 } -verbose -store
#run_justification -full_sequential -set { n601 1 G127 1 } -verbose -store
#attempt:27
#current_net:n601
#current_comb:n601 n601,1 G127,1 
run_justification -full_sequential -set { 555 1 31 1 } -verbose -store
#run_justification -full_sequential -set { n601 1 G110 0 } -verbose -store
#attempt:28
#current_net:n601
#current_comb:n601 n601,1 G110,0 
run_justification -full_sequential -set { 555 1 13 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 G127 1 } -verbose -store
#attempt:29
#current_net:n561
#current_comb:n561 n561,1 G127,1 
run_justification -full_sequential -set { 516 1 31 1 } -verbose -store
#run_justification -full_sequential -set { n561 1 G110 0 } -verbose -store
#attempt:30
#current_net:n561
#current_comb:n561 n561,1 G110,0 
run_justification -full_sequential -set { 516 1 13 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 G136 0 } -verbose -store
#attempt:31
#current_net:n561
#current_comb:n561 n561,1 G136,0 
run_justification -full_sequential -set { 516 1 41 0 } -verbose -store
#run_justification -full_sequential -set { n561 1 G138 0 } -verbose -store
#attempt:32
#current_net:n561
#current_comb:n561 n561,1 G138,0 
run_justification -full_sequential -set { 516 1 43 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 G129 0 } -verbose -store
#attempt:33
#current_net:n585
#current_comb:n585 n585,1 G129,0 
run_justification -full_sequential -set { 534 1 33 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 G127 0 } -verbose -store
#attempt:34
#current_net:n585
#current_comb:n585 n585,1 G127,0 
run_justification -full_sequential -set { 534 1 31 0 } -verbose -store
#run_justification -full_sequential -set { n585 1 G69 1 } -verbose -store
#attempt:35
#current_net:n585
#current_comb:n585 n585,1 G69,1 
run_justification -full_sequential -set { 534 1 123 1 } -verbose -store
#run_justification -full_sequential -set { n583 1 G127 1 } -verbose -store
#attempt:36
#current_net:n583
#current_comb:n583 n583,1 G127,1 
run_justification -full_sequential -set { 531 1 31 1 } -verbose -store
#run_justification -full_sequential -set { n583 1 G110 0 } -verbose -store
#attempt:37
#current_net:n583
#current_comb:n583 n583,1 G110,0 
run_justification -full_sequential -set { 531 1 13 0 } -verbose -store
#run_justification -full_sequential -set { n583 1 G141 1 } -verbose -store
#attempt:38
#current_net:n583
#current_comb:n583 n583,1 G141,1 
run_justification -full_sequential -set { 531 1 47 1 } -verbose -store
#run_justification -full_sequential -set { n590 0 G127 1 } -verbose -store
#attempt:39
#current_net:n590
#current_comb:n590 n590,0 G127,1 
run_justification -full_sequential -set { 554 0 31 1 } -verbose -store
#run_justification -full_sequential -set { n590 0 G142 1 } -verbose -store
#attempt:40
#current_net:n590
#current_comb:n590 n590,0 G142,1 
run_justification -full_sequential -set { 554 0 48 1 } -verbose -store
#run_justification -full_sequential -set { n590 0 G110 0 } -verbose -store
#attempt:41
#current_net:n590
#current_comb:n590 n590,0 G110,0 
run_justification -full_sequential -set { 554 0 13 0 } -verbose -store
#run_justification -full_sequential -set { n605 1 G134 0 } -verbose -store
#attempt:42
#current_net:n605
#current_comb:n605 n605,1 G134,0 
run_justification -full_sequential -set { 549 1 39 0 } -verbose -store
#run_justification -full_sequential -set { n605 1 G65 1 } -verbose -store
#attempt:43
#current_net:n605
#current_comb:n605 n605,1 G65,1 
run_justification -full_sequential -set { 549 1 119 1 } -verbose -store
#run_justification -full_sequential -set { n613 0 G134 0 } -verbose -store
#attempt:44
#current_net:n613
#current_comb:n613 n613,0 G134,0 
run_justification -full_sequential -set { 566 0 39 0 } -verbose -store
#run_justification -full_sequential -set { n613 0 G135 0 } -verbose -store
#attempt:45
#current_net:n613
#current_comb:n613 n613,0 G135,0 
run_justification -full_sequential -set { 566 0 40 0 } -verbose -store
#run_justification -full_sequential -set { n613 0 G65 1 } -verbose -store
#attempt:46
#current_net:n613
#current_comb:n613 n613,0 G65,1 
run_justification -full_sequential -set { 566 0 119 1 } -verbose -store
#run_justification -full_sequential -set { n641 0 n643 1 n645 0 n647 1 n615 1 } -verbose -store
#attempt:47
#current_net:n615
#current_comb_set:n615 n641,0 n643,1 n645,0 n647,1 n615,1 
run_justification -full_sequential -set { 501 0 502 1 503 0 504 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n643 1 n645 0 n647 1 n615 1 } -verbose -store
#attempt:48
#current_net:n615
#current_comb_set:n615 n643,1 n645,0 n647,1 n615,1 
run_justification -full_sequential -set { 502 1 503 0 504 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n641 0 n645 0 n647 1 n615 1 } -verbose -store
#attempt:49
#current_net:n615
#current_comb_set:n615 n641,0 n645,0 n647,1 n615,1 
run_justification -full_sequential -set { 501 0 503 0 504 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n641 0 n643 1 n647 1 n615 1 } -verbose -store
#attempt:50
#current_net:n615
#current_comb_set:n615 n641,0 n643,1 n647,1 n615,1 
run_justification -full_sequential -set { 501 0 502 1 504 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n641 0 n643 1 n645 0 n615 1 } -verbose -store
#attempt:51
#current_net:n615
#current_comb_set:n615 n641,0 n643,1 n645,0 n615,1 
run_justification -full_sequential -set { 501 0 502 1 503 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n645 0 n647 1 n615 1 } -verbose -store
#attempt:52
#current_net:n615
#current_comb_set:n615 n645,0 n647,1 n615,1 
run_justification -full_sequential -set { 503 0 504 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n643 1 n647 1 n615 1 } -verbose -store
#attempt:53
#current_net:n615
#current_comb_set:n615 n643,1 n647,1 n615,1 
run_justification -full_sequential -set { 502 1 504 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n643 1 n645 0 n615 1 } -verbose -store
#attempt:54
#current_net:n615
#current_comb_set:n615 n643,1 n645,0 n615,1 
run_justification -full_sequential -set { 502 1 503 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n641 0 n647 1 n615 1 } -verbose -store
#attempt:55
#current_net:n615
#current_comb_set:n615 n641,0 n647,1 n615,1 
run_justification -full_sequential -set { 501 0 504 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n641 0 n645 0 n615 1 } -verbose -store
#attempt:56
#current_net:n615
#current_comb_set:n615 n641,0 n645,0 n615,1 
run_justification -full_sequential -set { 501 0 503 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n641 0 n643 1 n615 1 } -verbose -store
#attempt:57
#current_net:n615
#current_comb_set:n615 n641,0 n643,1 n615,1 
run_justification -full_sequential -set { 501 0 502 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n647 1 n615 1 } -verbose -store
#attempt:58
#current_net:n615
#current_comb_set:n615 n647,1 n615,1 
run_justification -full_sequential -set { 504 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n645 0 n615 1 } -verbose -store
#attempt:59
#current_net:n615
#current_comb_set:n615 n645,0 n615,1 
run_justification -full_sequential -set { 503 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n643 1 n615 1 } -verbose -store
#attempt:60
#current_net:n615
#current_comb_set:n615 n643,1 n615,1 
run_justification -full_sequential -set { 502 1 567 1 } -verbose -store
#run_justification -full_sequential -set { n641 0 n615 1 } -verbose -store
#attempt:61
#current_net:n615
#current_comb_set:n615 n641,0 n615,1 
run_justification -full_sequential -set { 501 0 567 1 } -verbose -store
#run_justification -full_sequential -set { n641 0 n643 1 n645 0 n647 1 n619 0 } -verbose -store
#attempt:62
#current_net:n619
#current_comb_set:n619 n641,0 n643,1 n645,0 n647,1 n619,0 
run_justification -full_sequential -set { 501 0 502 1 503 0 504 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n643 1 n645 0 n647 1 n619 0 } -verbose -store
#attempt:63
#current_net:n619
#current_comb_set:n619 n643,1 n645,0 n647,1 n619,0 
run_justification -full_sequential -set { 502 1 503 0 504 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n641 0 n645 0 n647 1 n619 0 } -verbose -store
#attempt:64
#current_net:n619
#current_comb_set:n619 n641,0 n645,0 n647,1 n619,0 
run_justification -full_sequential -set { 501 0 503 0 504 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n641 0 n643 1 n647 1 n619 0 } -verbose -store
#attempt:65
#current_net:n619
#current_comb_set:n619 n641,0 n643,1 n647,1 n619,0 
run_justification -full_sequential -set { 501 0 502 1 504 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n641 0 n643 1 n645 0 n619 0 } -verbose -store
#attempt:66
#current_net:n619
#current_comb_set:n619 n641,0 n643,1 n645,0 n619,0 
run_justification -full_sequential -set { 501 0 502 1 503 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n645 0 n647 1 n619 0 } -verbose -store
#attempt:67
#current_net:n619
#current_comb_set:n619 n645,0 n647,1 n619,0 
run_justification -full_sequential -set { 503 0 504 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n643 1 n647 1 n619 0 } -verbose -store
#attempt:68
#current_net:n619
#current_comb_set:n619 n643,1 n647,1 n619,0 
run_justification -full_sequential -set { 502 1 504 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n643 1 n645 0 n619 0 } -verbose -store
#attempt:69
#current_net:n619
#current_comb_set:n619 n643,1 n645,0 n619,0 
run_justification -full_sequential -set { 502 1 503 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n641 0 n647 1 n619 0 } -verbose -store
#attempt:70
#current_net:n619
#current_comb_set:n619 n641,0 n647,1 n619,0 
run_justification -full_sequential -set { 501 0 504 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n641 0 n645 0 n619 0 } -verbose -store
#attempt:71
#current_net:n619
#current_comb_set:n619 n641,0 n645,0 n619,0 
run_justification -full_sequential -set { 501 0 503 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n641 0 n643 1 n619 0 } -verbose -store
#attempt:72
#current_net:n619
#current_comb_set:n619 n641,0 n643,1 n619,0 
run_justification -full_sequential -set { 501 0 502 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n647 1 n619 0 } -verbose -store
#attempt:73
#current_net:n619
#current_comb_set:n619 n647,1 n619,0 
run_justification -full_sequential -set { 504 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n645 0 n619 0 } -verbose -store
#attempt:74
#current_net:n619
#current_comb_set:n619 n645,0 n619,0 
run_justification -full_sequential -set { 503 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n643 1 n619 0 } -verbose -store
#attempt:75
#current_net:n619
#current_comb_set:n619 n643,1 n619,0 
run_justification -full_sequential -set { 502 1 568 0 } -verbose -store
#run_justification -full_sequential -set { n641 0 n619 0 } -verbose -store
#attempt:76
#current_net:n619
#current_comb_set:n619 n641,0 n619,0 
run_justification -full_sequential -set { 501 0 568 0 } -verbose -store
#run_justification -full_sequential -set { n618 0 G112 1 } -verbose -store
#attempt:77
#current_net:n618
#current_comb:n618 n618,0 G112,1 
run_justification -full_sequential -set { 548 0 15 1 } -verbose -store
#run_justification -full_sequential -set { n618 0 G138 0 } -verbose -store
#attempt:78
#current_net:n618
#current_comb:n618 n618,0 G138,0 
run_justification -full_sequential -set { 548 0 43 0 } -verbose -store
#run_justification -full_sequential -set { n641 0 G135 1 } -verbose -store
#attempt:79
#current_net:n641
#current_comb:n641 n641,0 G135,1 
run_justification -full_sequential -set { 501 0 40 1 } -verbose -store
#run_justification -full_sequential -set { n641 0 G136 1 } -verbose -store
#attempt:80
#current_net:n641
#current_comb:n641 n641,0 G136,1 
run_justification -full_sequential -set { 501 0 41 1 } -verbose -store
#run_justification -full_sequential -set { n641 0 G110 1 } -verbose -store
#attempt:81
#current_net:n641
#current_comb:n641 n641,0 G110,1 
run_justification -full_sequential -set { 501 0 13 1 } -verbose -store
#run_justification -full_sequential -set { n641 0 G113 1 } -verbose -store
#attempt:82
#current_net:n641
#current_comb:n641 n641,0 G113,1 
run_justification -full_sequential -set { 501 0 16 1 } -verbose -store
#run_justification -full_sequential -set { n641 0 G140 1 } -verbose -store
#attempt:83
#current_net:n641
#current_comb:n641 n641,0 G140,1 
run_justification -full_sequential -set { 501 0 46 1 } -verbose -store
#run_justification -full_sequential -set { n641 0 G141 1 } -verbose -store
#attempt:84
#current_net:n641
#current_comb:n641 n641,0 G141,1 
run_justification -full_sequential -set { 501 0 47 1 } -verbose -store
#run_justification -full_sequential -set { n643 1 G135 1 } -verbose -store
#attempt:85
#current_net:n643
#current_comb:n643 n643,1 G135,1 
run_justification -full_sequential -set { 502 1 40 1 } -verbose -store
#run_justification -full_sequential -set { n643 1 G136 1 } -verbose -store
#attempt:86
#current_net:n643
#current_comb:n643 n643,1 G136,1 
run_justification -full_sequential -set { 502 1 41 1 } -verbose -store
#run_justification -full_sequential -set { n643 1 G138 1 } -verbose -store
#attempt:87
#current_net:n643
#current_comb:n643 n643,1 G138,1 
run_justification -full_sequential -set { 502 1 43 1 } -verbose -store
#run_justification -full_sequential -set { n643 1 G110 1 } -verbose -store
#attempt:88
#current_net:n643
#current_comb:n643 n643,1 G110,1 
run_justification -full_sequential -set { 502 1 13 1 } -verbose -store
#run_justification -full_sequential -set { n643 1 G113 1 } -verbose -store
#attempt:89
#current_net:n643
#current_comb:n643 n643,1 G113,1 
run_justification -full_sequential -set { 502 1 16 1 } -verbose -store
#run_justification -full_sequential -set { n643 1 G140 1 } -verbose -store
#attempt:90
#current_net:n643
#current_comb:n643 n643,1 G140,1 
run_justification -full_sequential -set { 502 1 46 1 } -verbose -store
#run_justification -full_sequential -set { n643 1 G141 1 } -verbose -store
#attempt:91
#current_net:n643
#current_comb:n643 n643,1 G141,1 
run_justification -full_sequential -set { 502 1 47 1 } -verbose -store
#run_justification -full_sequential -set { n645 0 G135 1 } -verbose -store
#attempt:92
#current_net:n645
#current_comb:n645 n645,0 G135,1 
run_justification -full_sequential -set { 503 0 40 1 } -verbose -store
#run_justification -full_sequential -set { n645 0 G136 1 } -verbose -store
#attempt:93
#current_net:n645
#current_comb:n645 n645,0 G136,1 
run_justification -full_sequential -set { 503 0 41 1 } -verbose -store
#run_justification -full_sequential -set { n645 0 G138 1 } -verbose -store
#attempt:94
#current_net:n645
#current_comb:n645 n645,0 G138,1 
run_justification -full_sequential -set { 503 0 43 1 } -verbose -store
#run_justification -full_sequential -set { n645 0 G142 1 } -verbose -store
#attempt:95
#current_net:n645
#current_comb:n645 n645,0 G142,1 
run_justification -full_sequential -set { 503 0 48 1 } -verbose -store
#run_justification -full_sequential -set { n645 0 G107 0 } -verbose -store
#attempt:96
#current_net:n645
#current_comb:n645 n645,0 G107,0 
run_justification -full_sequential -set { 503 0 9 0 } -verbose -store
#run_justification -full_sequential -set { n645 0 G108 1 } -verbose -store
#attempt:97
#current_net:n645
#current_comb:n645 n645,0 G108,1 
run_justification -full_sequential -set { 503 0 10 1 } -verbose -store
#run_justification -full_sequential -set { n645 0 G110 1 } -verbose -store
#attempt:98
#current_net:n645
#current_comb:n645 n645,0 G110,1 
run_justification -full_sequential -set { 503 0 13 1 } -verbose -store
#run_justification -full_sequential -set { n645 0 G113 1 } -verbose -store
#attempt:99
#current_net:n645
#current_comb:n645 n645,0 G113,1 
run_justification -full_sequential -set { 503 0 16 1 } -verbose -store
#run_justification -full_sequential -set { n645 0 G140 1 } -verbose -store
#attempt:100
#current_net:n645
#current_comb:n645 n645,0 G140,1 
run_justification -full_sequential -set { 503 0 46 1 } -verbose -store
#run_justification -full_sequential -set { n645 0 G141 1 } -verbose -store
#attempt:101
#current_net:n645
#current_comb:n645 n645,0 G141,1 
run_justification -full_sequential -set { 503 0 47 1 } -verbose -store
#run_justification -full_sequential -set { n647 1 G135 1 } -verbose -store
#attempt:102
#current_net:n647
#current_comb:n647 n647,1 G135,1 
run_justification -full_sequential -set { 504 1 40 1 } -verbose -store
#run_justification -full_sequential -set { n647 1 G136 1 } -verbose -store
#attempt:103
#current_net:n647
#current_comb:n647 n647,1 G136,1 
run_justification -full_sequential -set { 504 1 41 1 } -verbose -store
#run_justification -full_sequential -set { n647 1 G138 1 } -verbose -store
#attempt:104
#current_net:n647
#current_comb:n647 n647,1 G138,1 
run_justification -full_sequential -set { 504 1 43 1 } -verbose -store
#run_justification -full_sequential -set { n647 1 G139 1 } -verbose -store
#attempt:105
#current_net:n647
#current_comb:n647 n647,1 G139,1 
run_justification -full_sequential -set { 504 1 44 1 } -verbose -store
#run_justification -full_sequential -set { n647 1 G142 1 } -verbose -store
#attempt:106
#current_net:n647
#current_comb:n647 n647,1 G142,1 
run_justification -full_sequential -set { 504 1 48 1 } -verbose -store
#run_justification -full_sequential -set { n647 1 G112 1 } -verbose -store
#attempt:107
#current_net:n647
#current_comb:n647 n647,1 G112,1 
run_justification -full_sequential -set { 504 1 15 1 } -verbose -store
#run_justification -full_sequential -set { n647 1 G107 0 } -verbose -store
#attempt:108
#current_net:n647
#current_comb:n647 n647,1 G107,0 
run_justification -full_sequential -set { 504 1 9 0 } -verbose -store
#run_justification -full_sequential -set { n647 1 G108 1 } -verbose -store
#attempt:109
#current_net:n647
#current_comb:n647 n647,1 G108,1 
run_justification -full_sequential -set { 504 1 10 1 } -verbose -store
#run_justification -full_sequential -set { n647 1 G110 1 } -verbose -store
#attempt:110
#current_net:n647
#current_comb:n647 n647,1 G110,1 
run_justification -full_sequential -set { 504 1 13 1 } -verbose -store
#run_justification -full_sequential -set { n647 1 G113 1 } -verbose -store
#attempt:111
#current_net:n647
#current_comb:n647 n647,1 G113,1 
run_justification -full_sequential -set { 504 1 16 1 } -verbose -store
#run_justification -full_sequential -set { n647 1 G140 1 } -verbose -store
#attempt:112
#current_net:n647
#current_comb:n647 n647,1 G140,1 
run_justification -full_sequential -set { 504 1 46 1 } -verbose -store
#run_justification -full_sequential -set { n647 1 G141 1 } -verbose -store
#attempt:113
#current_net:n647
#current_comb:n647 n647,1 G141,1 
run_justification -full_sequential -set { 504 1 47 1 } -verbose -store
#run_justification -full_sequential -set { n759 1 n760 0 n761 1 n762 1 n661 0 } -verbose -store
#attempt:114
#current_net:n661
#current_comb_set:n661 n759,1 n760,0 n761,1 n762,1 n661,0 
run_justification -full_sequential -set { 433 1 434 0 435 1 436 1 461 0 } -verbose -store
#run_justification -full_sequential -set { n760 0 n761 1 n762 1 n661 0 } -verbose -store
#attempt:115
#current_net:n661
#current_comb_set:n661 n760,0 n761,1 n762,1 n661,0 
run_justification -full_sequential -set { 434 0 435 1 436 1 461 0 } -verbose -store
#run_justification -full_sequential -set { n759 1 n761 1 n762 1 n661 0 } -verbose -store
#attempt:116
#current_net:n661
#current_comb_set:n661 n759,1 n761,1 n762,1 n661,0 
run_justification -full_sequential -set { 433 1 435 1 436 1 461 0 } -verbose -store
#run_justification -full_sequential -set { n759 1 n760 0 n762 1 n661 0 } -verbose -store
#attempt:117
#current_net:n661
#current_comb_set:n661 n759,1 n760,0 n762,1 n661,0 
run_justification -full_sequential -set { 433 1 434 0 436 1 461 0 } -verbose -store
#run_justification -full_sequential -set { n759 1 n760 0 n761 1 n661 0 } -verbose -store
#attempt:118
#current_net:n661
#current_comb_set:n661 n759,1 n760,0 n761,1 n661,0 
run_justification -full_sequential -set { 433 1 434 0 435 1 461 0 } -verbose -store
#run_justification -full_sequential -set { n761 1 n762 1 n661 0 } -verbose -store
#attempt:119
#current_net:n661
#current_comb_set:n661 n761,1 n762,1 n661,0 
run_justification -full_sequential -set { 435 1 436 1 461 0 } -verbose -store
#run_justification -full_sequential -set { n760 0 n762 1 n661 0 } -verbose -store
#attempt:120
#current_net:n661
#current_comb_set:n661 n760,0 n762,1 n661,0 
run_justification -full_sequential -set { 434 0 436 1 461 0 } -verbose -store
#run_justification -full_sequential -set { n760 0 n761 1 n661 0 } -verbose -store
#attempt:121
#current_net:n661
#current_comb_set:n661 n760,0 n761,1 n661,0 
run_justification -full_sequential -set { 434 0 435 1 461 0 } -verbose -store
#run_justification -full_sequential -set { n759 1 n762 1 n661 0 } -verbose -store
#attempt:122
#current_net:n661
#current_comb_set:n661 n759,1 n762,1 n661,0 
run_justification -full_sequential -set { 433 1 436 1 461 0 } -verbose -store
#run_justification -full_sequential -set { n759 1 n761 1 n661 0 } -verbose -store
#attempt:123
#current_net:n661
#current_comb_set:n661 n759,1 n761,1 n661,0 
run_justification -full_sequential -set { 433 1 435 1 461 0 } -verbose -store
#run_justification -full_sequential -set { n759 1 n760 0 n661 0 } -verbose -store
#attempt:124
#current_net:n661
#current_comb_set:n661 n759,1 n760,0 n661,0 
run_justification -full_sequential -set { 433 1 434 0 461 0 } -verbose -store
#run_justification -full_sequential -set { n762 1 n661 0 } -verbose -store
#attempt:125
#current_net:n661
#current_comb_set:n661 n762,1 n661,0 
run_justification -full_sequential -set { 436 1 461 0 } -verbose -store
#run_justification -full_sequential -set { n761 1 n661 0 } -verbose -store
#attempt:126
#current_net:n661
#current_comb_set:n661 n761,1 n661,0 
run_justification -full_sequential -set { 435 1 461 0 } -verbose -store
#run_justification -full_sequential -set { n760 0 n661 0 } -verbose -store
#attempt:127
#current_net:n661
#current_comb_set:n661 n760,0 n661,0 
run_justification -full_sequential -set { 434 0 461 0 } -verbose -store
#run_justification -full_sequential -set { n759 1 n661 0 } -verbose -store
#attempt:128
#current_net:n661
#current_comb_set:n661 n759,1 n661,0 
run_justification -full_sequential -set { 433 1 461 0 } -verbose -store
#run_justification -full_sequential -set { n679 0 G129 1 } -verbose -store
#attempt:129
#current_net:n679
#current_comb:n679 n679,0 G129,1 
run_justification -full_sequential -set { 482 0 33 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 G125 1 } -verbose -store
#attempt:130
#current_net:n679
#current_comb:n679 n679,0 G125,1 
run_justification -full_sequential -set { 482 0 29 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 G134 1 } -verbose -store
#attempt:131
#current_net:n679
#current_comb:n679 n679,0 G134,1 
run_justification -full_sequential -set { 482 0 39 1 } -verbose -store
#run_justification -full_sequential -set { n679 0 G65 1 } -verbose -store
#attempt:132
#current_net:n679
#current_comb:n679 n679,0 G65,1 
run_justification -full_sequential -set { 482 0 119 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 G129 1 } -verbose -store
#attempt:133
#current_net:n681
#current_comb:n681 n681,1 G129,1 
run_justification -full_sequential -set { 485 1 33 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 G125 1 } -verbose -store
#attempt:134
#current_net:n681
#current_comb:n681 n681,1 G125,1 
run_justification -full_sequential -set { 485 1 29 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 G134 1 } -verbose -store
#attempt:135
#current_net:n681
#current_comb:n681 n681,1 G134,1 
run_justification -full_sequential -set { 485 1 39 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 G126 1 } -verbose -store
#attempt:136
#current_net:n681
#current_comb:n681 n681,1 G126,1 
run_justification -full_sequential -set { 485 1 30 1 } -verbose -store
#run_justification -full_sequential -set { n681 1 G65 1 } -verbose -store
#attempt:137
#current_net:n681
#current_comb:n681 n681,1 G65,1 
run_justification -full_sequential -set { 485 1 119 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 G131 1 } -verbose -store
#attempt:138
#current_net:n683
#current_comb:n683 n683,0 G131,1 
run_justification -full_sequential -set { 486 0 36 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 G129 1 } -verbose -store
#attempt:139
#current_net:n683
#current_comb:n683 n683,0 G129,1 
run_justification -full_sequential -set { 486 0 33 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 G125 1 } -verbose -store
#attempt:140
#current_net:n683
#current_comb:n683 n683,0 G125,1 
run_justification -full_sequential -set { 486 0 29 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 G134 1 } -verbose -store
#attempt:141
#current_net:n683
#current_comb:n683 n683,0 G134,1 
run_justification -full_sequential -set { 486 0 39 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 G126 1 } -verbose -store
#attempt:142
#current_net:n683
#current_comb:n683 n683,0 G126,1 
run_justification -full_sequential -set { 486 0 30 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 G65 1 } -verbose -store
#attempt:143
#current_net:n683
#current_comb:n683 n683,0 G65,1 
run_justification -full_sequential -set { 486 0 119 1 } -verbose -store
#run_justification -full_sequential -set { n683 0 G68 1 } -verbose -store
#attempt:144
#current_net:n683
#current_comb:n683 n683,0 G68,1 
run_justification -full_sequential -set { 486 0 122 1 } -verbose -store
#run_justification -full_sequential -set { n684 1 G131 1 } -verbose -store
#attempt:145
#current_net:n684
#current_comb:n684 n684,1 G131,1 
run_justification -full_sequential -set { 487 1 36 1 } -verbose -store
#run_justification -full_sequential -set { n684 1 G128 1 } -verbose -store
#attempt:146
#current_net:n684
#current_comb:n684 n684,1 G128,1 
run_justification -full_sequential -set { 487 1 32 1 } -verbose -store
#run_justification -full_sequential -set { n684 1 G129 1 } -verbose -store
#attempt:147
#current_net:n684
#current_comb:n684 n684,1 G129,1 
run_justification -full_sequential -set { 487 1 33 1 } -verbose -store
#run_justification -full_sequential -set { n684 1 G125 1 } -verbose -store
#attempt:148
#current_net:n684
#current_comb:n684 n684,1 G125,1 
run_justification -full_sequential -set { 487 1 29 1 } -verbose -store
#run_justification -full_sequential -set { n684 1 G134 1 } -verbose -store
#attempt:149
#current_net:n684
#current_comb:n684 n684,1 G134,1 
run_justification -full_sequential -set { 487 1 39 1 } -verbose -store
#run_justification -full_sequential -set { n684 1 G126 1 } -verbose -store
#attempt:150
#current_net:n684
#current_comb:n684 n684,1 G126,1 
run_justification -full_sequential -set { 487 1 30 1 } -verbose -store
#run_justification -full_sequential -set { n684 1 G65 1 } -verbose -store
#attempt:151
#current_net:n684
#current_comb:n684 n684,1 G65,1 
run_justification -full_sequential -set { 487 1 119 1 } -verbose -store
#run_justification -full_sequential -set { n684 1 G68 1 } -verbose -store
#attempt:152
#current_net:n684
#current_comb:n684 n684,1 G68,1 
run_justification -full_sequential -set { 487 1 122 1 } -verbose -store
#run_justification -full_sequential -set { n704 0 G131 1 } -verbose -store
#attempt:153
#current_net:n704
#current_comb:n704 n704,0 G131,1 
run_justification -full_sequential -set { 488 0 36 1 } -verbose -store
#run_justification -full_sequential -set { n704 0 G128 1 } -verbose -store
#attempt:154
#current_net:n704
#current_comb:n704 n704,0 G128,1 
run_justification -full_sequential -set { 488 0 32 1 } -verbose -store
#run_justification -full_sequential -set { n704 0 G129 1 } -verbose -store
#attempt:155
#current_net:n704
#current_comb:n704 n704,0 G129,1 
run_justification -full_sequential -set { 488 0 33 1 } -verbose -store
#run_justification -full_sequential -set { n704 0 G125 1 } -verbose -store
#attempt:156
#current_net:n704
#current_comb:n704 n704,0 G125,1 
run_justification -full_sequential -set { 488 0 29 1 } -verbose -store
#run_justification -full_sequential -set { n704 0 G130 1 } -verbose -store
#attempt:157
#current_net:n704
#current_comb:n704 n704,0 G130,1 
run_justification -full_sequential -set { 488 0 35 1 } -verbose -store
#run_justification -full_sequential -set { n704 0 G134 1 } -verbose -store
#attempt:158
#current_net:n704
#current_comb:n704 n704,0 G134,1 
run_justification -full_sequential -set { 488 0 39 1 } -verbose -store
#run_justification -full_sequential -set { n704 0 G126 1 } -verbose -store
#attempt:159
#current_net:n704
#current_comb:n704 n704,0 G126,1 
run_justification -full_sequential -set { 488 0 30 1 } -verbose -store
#run_justification -full_sequential -set { n704 0 G133 1 } -verbose -store
#attempt:160
#current_net:n704
#current_comb:n704 n704,0 G133,1 
run_justification -full_sequential -set { 488 0 38 1 } -verbose -store
#run_justification -full_sequential -set { n704 0 G12 1 } -verbose -store
#attempt:161
#current_net:n704
#current_comb:n704 n704,0 G12,1 
run_justification -full_sequential -set { 488 0 23 1 } -verbose -store
#run_justification -full_sequential -set { n704 0 G65 1 } -verbose -store
#attempt:162
#current_net:n704
#current_comb:n704 n704,0 G65,1 
run_justification -full_sequential -set { 488 0 119 1 } -verbose -store
#run_justification -full_sequential -set { n704 0 G66 1 } -verbose -store
#attempt:163
#current_net:n704
#current_comb:n704 n704,0 G66,1 
run_justification -full_sequential -set { 488 0 120 1 } -verbose -store
#run_justification -full_sequential -set { n704 0 G68 1 } -verbose -store
#attempt:164
#current_net:n704
#current_comb:n704 n704,0 G68,1 
run_justification -full_sequential -set { 488 0 122 1 } -verbose -store
#run_justification -full_sequential -set { n704 0 G69 1 } -verbose -store
#attempt:165
#current_net:n704
#current_comb:n704 n704,0 G69,1 
run_justification -full_sequential -set { 488 0 123 1 } -verbose -store
#run_justification -full_sequential -set { n700 0 G130 0 } -verbose -store
#attempt:166
#current_net:n700
#current_comb:n700 n700,0 G130,0 
run_justification -full_sequential -set { 447 0 35 0 } -verbose -store
#run_justification -full_sequential -set { n700 0 G134 0 } -verbose -store
#attempt:167
#current_net:n700
#current_comb:n700 n700,0 G134,0 
run_justification -full_sequential -set { 447 0 39 0 } -verbose -store
#run_justification -full_sequential -set { n700 0 G125 0 } -verbose -store
#attempt:168
#current_net:n700
#current_comb:n700 n700,0 G125,0 
run_justification -full_sequential -set { 447 0 29 0 } -verbose -store
#run_justification -full_sequential -set { n700 0 G131 0 } -verbose -store
#attempt:169
#current_net:n700
#current_comb:n700 n700,0 G131,0 
run_justification -full_sequential -set { 447 0 36 0 } -verbose -store
#run_justification -full_sequential -set { n702 1 G130 0 } -verbose -store
#attempt:170
#current_net:n702
#current_comb:n702 n702,1 G130,0 
run_justification -full_sequential -set { 469 1 35 0 } -verbose -store
#run_justification -full_sequential -set { n702 1 G133 0 } -verbose -store
#attempt:171
#current_net:n702
#current_comb:n702 n702,1 G133,0 
run_justification -full_sequential -set { 469 1 38 0 } -verbose -store
#run_justification -full_sequential -set { n702 1 G134 0 } -verbose -store
#attempt:172
#current_net:n702
#current_comb:n702 n702,1 G134,0 
run_justification -full_sequential -set { 469 1 39 0 } -verbose -store
#run_justification -full_sequential -set { n702 1 G126 0 } -verbose -store
#attempt:173
#current_net:n702
#current_comb:n702 n702,1 G126,0 
run_justification -full_sequential -set { 469 1 30 0 } -verbose -store
#run_justification -full_sequential -set { n702 1 G125 0 } -verbose -store
#attempt:174
#current_net:n702
#current_comb:n702 n702,1 G125,0 
run_justification -full_sequential -set { 469 1 29 0 } -verbose -store
#run_justification -full_sequential -set { n702 1 G128 0 } -verbose -store
#attempt:175
#current_net:n702
#current_comb:n702 n702,1 G128,0 
run_justification -full_sequential -set { 469 1 32 0 } -verbose -store
#run_justification -full_sequential -set { n702 1 G129 0 } -verbose -store
#attempt:176
#current_net:n702
#current_comb:n702 n702,1 G129,0 
run_justification -full_sequential -set { 469 1 33 0 } -verbose -store
#run_justification -full_sequential -set { n702 1 G131 0 } -verbose -store
#attempt:177
#current_net:n702
#current_comb:n702 n702,1 G131,0 
run_justification -full_sequential -set { 469 1 36 0 } -verbose -store
#run_justification -full_sequential -set { n703 0 G130 0 } -verbose -store
#attempt:178
#current_net:n703
#current_comb:n703 n703,0 G130,0 
run_justification -full_sequential -set { 470 0 35 0 } -verbose -store
#run_justification -full_sequential -set { n703 0 G133 0 } -verbose -store
#attempt:179
#current_net:n703
#current_comb:n703 n703,0 G133,0 
run_justification -full_sequential -set { 470 0 38 0 } -verbose -store
#run_justification -full_sequential -set { n703 0 G134 0 } -verbose -store
#attempt:180
#current_net:n703
#current_comb:n703 n703,0 G134,0 
run_justification -full_sequential -set { 470 0 39 0 } -verbose -store
#run_justification -full_sequential -set { n703 0 G126 0 } -verbose -store
#attempt:181
#current_net:n703
#current_comb:n703 n703,0 G126,0 
run_justification -full_sequential -set { 470 0 30 0 } -verbose -store
#run_justification -full_sequential -set { n703 0 G125 0 } -verbose -store
#attempt:182
#current_net:n703
#current_comb:n703 n703,0 G125,0 
run_justification -full_sequential -set { 470 0 29 0 } -verbose -store
#run_justification -full_sequential -set { n703 0 G12 0 } -verbose -store
#attempt:183
#current_net:n703
#current_comb:n703 n703,0 G12,0 
run_justification -full_sequential -set { 470 0 23 0 } -verbose -store
#run_justification -full_sequential -set { n703 0 G128 0 } -verbose -store
#attempt:184
#current_net:n703
#current_comb:n703 n703,0 G128,0 
run_justification -full_sequential -set { 470 0 32 0 } -verbose -store
#run_justification -full_sequential -set { n703 0 G129 0 } -verbose -store
#attempt:185
#current_net:n703
#current_comb:n703 n703,0 G129,0 
run_justification -full_sequential -set { 470 0 33 0 } -verbose -store
#run_justification -full_sequential -set { n703 0 G131 0 } -verbose -store
#attempt:186
#current_net:n703
#current_comb:n703 n703,0 G131,0 
run_justification -full_sequential -set { 470 0 36 0 } -verbose -store
#run_justification -full_sequential -set { n709 0 n759 1 n760 0 n761 1 n762 1 n705 1 } -verbose -store
#attempt:187
#current_net:n705
#current_comb_set:n705 n709,0 n759,1 n760,0 n761,1 n762,1 n705,1 
run_justification -full_sequential -set { 315 0 433 1 434 0 435 1 436 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n759 1 n760 0 n761 1 n762 1 n705 1 } -verbose -store
#attempt:188
#current_net:n705
#current_comb_set:n705 n759,1 n760,0 n761,1 n762,1 n705,1 
run_justification -full_sequential -set { 433 1 434 0 435 1 436 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n760 0 n761 1 n762 1 n705 1 } -verbose -store
#attempt:189
#current_net:n705
#current_comb_set:n705 n709,0 n760,0 n761,1 n762,1 n705,1 
run_justification -full_sequential -set { 315 0 434 0 435 1 436 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n759 1 n761 1 n762 1 n705 1 } -verbose -store
#attempt:190
#current_net:n705
#current_comb_set:n705 n709,0 n759,1 n761,1 n762,1 n705,1 
run_justification -full_sequential -set { 315 0 433 1 435 1 436 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n759 1 n760 0 n762 1 n705 1 } -verbose -store
#attempt:191
#current_net:n705
#current_comb_set:n705 n709,0 n759,1 n760,0 n762,1 n705,1 
run_justification -full_sequential -set { 315 0 433 1 434 0 436 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n759 1 n760 0 n761 1 n705 1 } -verbose -store
#attempt:192
#current_net:n705
#current_comb_set:n705 n709,0 n759,1 n760,0 n761,1 n705,1 
run_justification -full_sequential -set { 315 0 433 1 434 0 435 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n760 0 n761 1 n762 1 n705 1 } -verbose -store
#attempt:193
#current_net:n705
#current_comb_set:n705 n760,0 n761,1 n762,1 n705,1 
run_justification -full_sequential -set { 434 0 435 1 436 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n759 1 n761 1 n762 1 n705 1 } -verbose -store
#attempt:194
#current_net:n705
#current_comb_set:n705 n759,1 n761,1 n762,1 n705,1 
run_justification -full_sequential -set { 433 1 435 1 436 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n759 1 n760 0 n762 1 n705 1 } -verbose -store
#attempt:195
#current_net:n705
#current_comb_set:n705 n759,1 n760,0 n762,1 n705,1 
run_justification -full_sequential -set { 433 1 434 0 436 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n759 1 n760 0 n761 1 n705 1 } -verbose -store
#attempt:196
#current_net:n705
#current_comb_set:n705 n759,1 n760,0 n761,1 n705,1 
run_justification -full_sequential -set { 433 1 434 0 435 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n761 1 n762 1 n705 1 } -verbose -store
#attempt:197
#current_net:n705
#current_comb_set:n705 n709,0 n761,1 n762,1 n705,1 
run_justification -full_sequential -set { 315 0 435 1 436 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n760 0 n762 1 n705 1 } -verbose -store
#attempt:198
#current_net:n705
#current_comb_set:n705 n709,0 n760,0 n762,1 n705,1 
run_justification -full_sequential -set { 315 0 434 0 436 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n760 0 n761 1 n705 1 } -verbose -store
#attempt:199
#current_net:n705
#current_comb_set:n705 n709,0 n760,0 n761,1 n705,1 
run_justification -full_sequential -set { 315 0 434 0 435 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n759 1 n762 1 n705 1 } -verbose -store
#attempt:200
#current_net:n705
#current_comb_set:n705 n709,0 n759,1 n762,1 n705,1 
run_justification -full_sequential -set { 315 0 433 1 436 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n759 1 n761 1 n705 1 } -verbose -store
#attempt:201
#current_net:n705
#current_comb_set:n705 n709,0 n759,1 n761,1 n705,1 
run_justification -full_sequential -set { 315 0 433 1 435 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n759 1 n760 0 n705 1 } -verbose -store
#attempt:202
#current_net:n705
#current_comb_set:n705 n709,0 n759,1 n760,0 n705,1 
run_justification -full_sequential -set { 315 0 433 1 434 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n761 1 n762 1 n705 1 } -verbose -store
#attempt:203
#current_net:n705
#current_comb_set:n705 n761,1 n762,1 n705,1 
run_justification -full_sequential -set { 435 1 436 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n760 0 n762 1 n705 1 } -verbose -store
#attempt:204
#current_net:n705
#current_comb_set:n705 n760,0 n762,1 n705,1 
run_justification -full_sequential -set { 434 0 436 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n760 0 n761 1 n705 1 } -verbose -store
#attempt:205
#current_net:n705
#current_comb_set:n705 n760,0 n761,1 n705,1 
run_justification -full_sequential -set { 434 0 435 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n759 1 n762 1 n705 1 } -verbose -store
#attempt:206
#current_net:n705
#current_comb_set:n705 n759,1 n762,1 n705,1 
run_justification -full_sequential -set { 433 1 436 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n759 1 n761 1 n705 1 } -verbose -store
#attempt:207
#current_net:n705
#current_comb_set:n705 n759,1 n761,1 n705,1 
run_justification -full_sequential -set { 433 1 435 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n759 1 n760 0 n705 1 } -verbose -store
#attempt:208
#current_net:n705
#current_comb_set:n705 n759,1 n760,0 n705,1 
run_justification -full_sequential -set { 433 1 434 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n762 1 n705 1 } -verbose -store
#attempt:209
#current_net:n705
#current_comb_set:n705 n709,0 n762,1 n705,1 
run_justification -full_sequential -set { 315 0 436 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n761 1 n705 1 } -verbose -store
#attempt:210
#current_net:n705
#current_comb_set:n705 n709,0 n761,1 n705,1 
run_justification -full_sequential -set { 315 0 435 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n760 0 n705 1 } -verbose -store
#attempt:211
#current_net:n705
#current_comb_set:n705 n709,0 n760,0 n705,1 
run_justification -full_sequential -set { 315 0 434 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n759 1 n705 1 } -verbose -store
#attempt:212
#current_net:n705
#current_comb_set:n705 n709,0 n759,1 n705,1 
run_justification -full_sequential -set { 315 0 433 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n762 1 n705 1 } -verbose -store
#attempt:213
#current_net:n705
#current_comb_set:n705 n762,1 n705,1 
run_justification -full_sequential -set { 436 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n761 1 n705 1 } -verbose -store
#attempt:214
#current_net:n705
#current_comb_set:n705 n761,1 n705,1 
run_justification -full_sequential -set { 435 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n760 0 n705 1 } -verbose -store
#attempt:215
#current_net:n705
#current_comb_set:n705 n760,0 n705,1 
run_justification -full_sequential -set { 434 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n759 1 n705 1 } -verbose -store
#attempt:216
#current_net:n705
#current_comb_set:n705 n759,1 n705,1 
run_justification -full_sequential -set { 433 1 489 1 } -verbose -store
#run_justification -full_sequential -set { n709 0 n705 1 } -verbose -store
#attempt:217
#current_net:n705
#current_comb_set:n705 n709,0 n705,1 
run_justification -full_sequential -set { 315 0 489 1 } -verbose -store
#run_justification -full_sequential -set { n744 1 n748 1 n749 1 n740 1 } -verbose -store
#attempt:218
#current_net:n740
#current_comb_set:n740 n744,1 n748,1 n749,1 n740,1 
run_justification -full_sequential -set { 429 1 430 1 431 1 428 1 } -verbose -store
#run_justification -full_sequential -set { n748 1 n749 1 n740 1 } -verbose -store
#attempt:219
#current_net:n740
#current_comb_set:n740 n748,1 n749,1 n740,1 
run_justification -full_sequential -set { 430 1 431 1 428 1 } -verbose -store
#run_justification -full_sequential -set { n744 1 n749 1 n740 1 } -verbose -store
#attempt:220
#current_net:n740
#current_comb_set:n740 n744,1 n749,1 n740,1 
run_justification -full_sequential -set { 429 1 431 1 428 1 } -verbose -store
#run_justification -full_sequential -set { n744 1 n748 1 n740 1 } -verbose -store
#attempt:221
#current_net:n740
#current_comb_set:n740 n744,1 n748,1 n740,1 
run_justification -full_sequential -set { 429 1 430 1 428 1 } -verbose -store
#run_justification -full_sequential -set { n749 1 n740 1 } -verbose -store
#attempt:222
#current_net:n740
#current_comb_set:n740 n749,1 n740,1 
run_justification -full_sequential -set { 431 1 428 1 } -verbose -store
#run_justification -full_sequential -set { n748 1 n740 1 } -verbose -store
#attempt:223
#current_net:n740
#current_comb_set:n740 n748,1 n740,1 
run_justification -full_sequential -set { 430 1 428 1 } -verbose -store
#run_justification -full_sequential -set { n744 1 n740 1 } -verbose -store
#attempt:224
#current_net:n740
#current_comb_set:n740 n744,1 n740,1 
run_justification -full_sequential -set { 429 1 428 1 } -verbose -store
#run_justification -full_sequential -set { n744 1 n748 1 } -verbose -store
#attempt:225
#current_net:n744
#current_comb_set:n744 n744,1 n748,1 
run_justification -full_sequential -set { 429 1 430 1 } -verbose -store
#run_justification -full_sequential -set { n748 1 n749 1 } -verbose -store
#attempt:226
#current_net:n748
#current_comb_set:n748 n748,1 n749,1 
run_justification -full_sequential -set { 430 1 431 1 } -verbose -store
#run_justification -full_sequential -set { n757 1 n758 1 } -verbose -store
#attempt:227
#current_net:n757
#current_comb_set:n757 n757,1 n758,1 
run_justification -full_sequential -set { 184 1 185 1 } -verbose -store
report_patterns -internal -all
exit
