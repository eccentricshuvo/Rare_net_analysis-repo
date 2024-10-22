set_messages -log /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn//justify.log -replace 
read_netlist /home/UFAD/sudiptaparia/Downloads/mero_v2_1/src//lec25dscc25.v -library
read_netlist /home/UFAD/sudiptaparia/Downloads/mero_v2_1/run_13/c2670_syn/c2670_syn.v
set_build -nodelete_unused_gates -merge noglobal_tie_propagate
run_build_model c2670
drc 
test 
set pindata seq_sim_data 
run_justification -full_sequential -set { 502 1 435 1 } -verbose -store
#current_net:n643 n761 
run_justification -full_sequential -set { 310 1 548 0 } -verbose -store
#current_net:n484 n618 
run_justification -full_sequential -set { 502 1 486 0 } -verbose -store
#current_net:n643 n683 
run_justification -full_sequential -set { 312 0 504 1 } -verbose -store
#current_net:n487 n647 
run_justification -full_sequential -set { 310 1 554 0 } -verbose -store
#current_net:n484 n590 
run_justification -full_sequential -set { 555 1 503 0 } -verbose -store
#current_net:n601 n645 
run_justification -full_sequential -set { 504 1 461 0 } -verbose -store
#current_net:n647 n661 
run_justification -full_sequential -set { 312 0 549 1 } -verbose -store
#current_net:n487 n605 
run_justification -full_sequential -set { 469 1 315 0 } -verbose -store
#current_net:n702 n709 
run_justification -full_sequential -set { 554 0 470 0 } -verbose -store
#current_net:n590 n703 
run_justification -full_sequential -set { 567 1 461 0 } -verbose -store
#current_net:n615 n661 
run_justification -full_sequential -set { 555 1 567 1 } -verbose -store
#current_net:n601 n615 
run_justification -full_sequential -set { 549 1 486 0 } -verbose -store
#current_net:n605 n683 
run_justification -full_sequential -set { 430 1 431 1 } -verbose -store
#current_net:n748 n749 
run_justification -full_sequential -set { 429 1 435 1 } -verbose -store
#current_net:n744 n761 
run_justification -full_sequential -set { 534 1 431 1 } -verbose -store
#current_net:n585 n749 
run_justification -full_sequential -set { 315 0 428 1 } -verbose -store
#current_net:n709 n740 
run_justification -full_sequential -set { 502 1 313 0 } -verbose -store
#current_net:n643 n708 
run_justification -full_sequential -set { 567 1 185 1 } -verbose -store
#current_net:n615 n758 
run_justification -full_sequential -set { 311 0 185 1 } -verbose -store
#current_net:n485 n758 
run_justification -full_sequential -set { 319 0 534 1 } -verbose -store
#current_net:n490 n585 
run_justification -full_sequential -set { 555 1 433 1 } -verbose -store
#current_net:n601 n759 
run_justification -full_sequential -set { 489 1 315 0 } -verbose -store
#current_net:n705 n709 
run_justification -full_sequential -set { 568 0 482 0 } -verbose -store
#current_net:n619 n679 
run_justification -full_sequential -set { 548 0 469 1 } -verbose -store
#current_net:n618 n702 
run_justification -full_sequential -set { 470 0 429 1 } -verbose -store
#current_net:n703 n744 
run_justification -full_sequential -set { 531 1 428 1 } -verbose -store
#current_net:n583 n740 
run_justification -full_sequential -set { 566 0 470 0 } -verbose -store
#current_net:n613 n703 
run_justification -full_sequential -set { 554 0 504 1 } -verbose -store
#current_net:n590 n647 
run_justification -full_sequential -set { 485 1 430 1 } -verbose -store
#current_net:n681 n748 
run_justification -full_sequential -set { 555 1 502 1 } -verbose -store
#current_net:n601 n643 
run_justification -full_sequential -set { 318 0 534 1 } -verbose -store
#current_net:n489 n585 
run_justification -full_sequential -set { 567 1 313 0 } -verbose -store
#current_net:n615 n708 
run_justification -full_sequential -set { 318 0 434 0 } -verbose -store
#current_net:n489 n760 
run_justification -full_sequential -set { 319 0 489 1 } -verbose -store
#current_net:n490 n705 
run_justification -full_sequential -set { 568 0 489 1 } -verbose -store
#current_net:n619 n705 
run_justification -full_sequential -set { 548 0 486 0 } -verbose -store
#current_net:n618 n683 
run_justification -full_sequential -set { 534 1 488 0 } -verbose -store
#current_net:n585 n704 
run_justification -full_sequential -set { 310 1 486 0 } -verbose -store
#current_net:n484 n683 
run_justification -full_sequential -set { 485 1 185 1 } -verbose -store
#current_net:n681 n758 
run_justification -full_sequential -set { 503 0 461 0 } -verbose -store
#current_net:n645 n661 
run_justification -full_sequential -set { 461 0 447 0 } -verbose -store
#current_net:n661 n700 
run_justification -full_sequential -set { 534 1 568 0 } -verbose -store
#current_net:n585 n619 
run_justification -full_sequential -set { 487 1 469 1 } -verbose -store
#current_net:n684 n702 
run_justification -full_sequential -set { 568 0 488 0 } -verbose -store
#current_net:n619 n704 
run_justification -full_sequential -set { 503 0 315 0 } -verbose -store
#current_net:n645 n709 
run_justification -full_sequential -set { 568 0 184 1 } -verbose -store
#current_net:n619 n757 
run_justification -full_sequential -set { 567 1 503 0 } -verbose -store
#current_net:n615 n645 
run_justification -full_sequential -set { 567 1 470 0 } -verbose -store
#current_net:n615 n703 
run_justification -full_sequential -set { 504 1 436 1 } -verbose -store
#current_net:n647 n762 
run_justification -full_sequential -set { 555 1 568 0 } -verbose -store
#current_net:n601 n619 
run_justification -full_sequential -set { 555 1 436 1 } -verbose -store
#current_net:n601 n762 
run_justification -full_sequential -set { 469 1 489 1 } -verbose -store
#current_net:n702 n705 
run_justification -full_sequential -set { 549 1 431 1 } -verbose -store
#current_net:n605 n749 
run_justification -full_sequential -set { 555 1 469 1 } -verbose -store
#current_net:n601 n702 
run_justification -full_sequential -set { 486 0 469 1 } -verbose -store
#current_net:n683 n702 
run_justification -full_sequential -set { 461 0 486 0 } -verbose -store
#current_net:n661 n683 
run_justification -full_sequential -set { 319 0 502 1 } -verbose -store
#current_net:n490 n643 
run_justification -full_sequential -set { 311 0 568 0 } -verbose -store
#current_net:n485 n619 
run_justification -full_sequential -set { 447 0 429 1 } -verbose -store
#current_net:n700 n744 
run_justification -full_sequential -set { 311 0 503 0 } -verbose -store
#current_net:n485 n645 
run_justification -full_sequential -set { 310 1 501 0 } -verbose -store
#current_net:n484 n641 
run_justification -full_sequential -set { 548 0 504 1 } -verbose -store
#current_net:n618 n647 
run_justification -full_sequential -set { 318 0 313 0 } -verbose -store
#current_net:n489 n708 
run_justification -full_sequential -set { 531 1 568 0 } -verbose -store
#current_net:n583 n619 
run_justification -full_sequential -set { 554 0 313 0 } -verbose -store
#current_net:n590 n708 
run_justification -full_sequential -set { 534 1 185 1 } -verbose -store
#current_net:n585 n758 
run_justification -full_sequential -set { 318 0 549 1 } -verbose -store
#current_net:n489 n605 
run_justification -full_sequential -set { 311 0 487 1 } -verbose -store
#current_net:n485 n684 
run_justification -full_sequential -set { 318 0 503 0 } -verbose -store
#current_net:n489 n645 
run_justification -full_sequential -set { 516 1 488 0 } -verbose -store
#current_net:n561 n704 
run_justification -full_sequential -set { 501 0 469 1 } -verbose -store
#current_net:n641 n702 
run_justification -full_sequential -set { 486 0 447 0 } -verbose -store
#current_net:n683 n700 
run_justification -full_sequential -set { 504 1 486 0 } -verbose -store
#current_net:n647 n683 
run_justification -full_sequential -set { 318 0 431 1 } -verbose -store
#current_net:n489 n749 
run_justification -full_sequential -set { 568 0 431 1 } -verbose -store
#current_net:n619 n749 
run_justification -full_sequential -set { 566 0 482 0 } -verbose -store
#current_net:n613 n679 
run_justification -full_sequential -set { 531 1 428 1 } -verbose -store
#current_net:n583 n740 
run_justification -full_sequential -set { 312 0 489 1 } -verbose -store
#current_net:n487 n705 
run_justification -full_sequential -set { 501 0 461 0 } -verbose -store
#current_net:n641 n661 
run_justification -full_sequential -set { 534 1 433 1 } -verbose -store
#current_net:n585 n759 
run_justification -full_sequential -set { 531 1 430 1 } -verbose -store
#current_net:n583 n748 
run_justification -full_sequential -set { 485 1 184 1 } -verbose -store
#current_net:n681 n757 
run_justification -full_sequential -set { 482 0 447 0 } -verbose -store
#current_net:n679 n700 
run_justification -full_sequential -set { 319 0 486 0 } -verbose -store
#current_net:n490 n683 
run_justification -full_sequential -set { 310 1 319 0 } -verbose -store
#current_net:n484 n490 
run_justification -full_sequential -set { 311 0 548 0 } -verbose -store
#current_net:n485 n618 
run_justification -full_sequential -set { 554 0 433 1 } -verbose -store
#current_net:n590 n759 
run_justification -full_sequential -set { 482 0 485 1 } -verbose -store
#current_net:n679 n681 
run_justification -full_sequential -set { 516 1 554 0 } -verbose -store
#current_net:n561 n590 
run_justification -full_sequential -set { 503 0 486 0 } -verbose -store
#current_net:n645 n683 
run_justification -full_sequential -set { 318 0 503 0 } -verbose -store
#current_net:n489 n645 
run_justification -full_sequential -set { 554 0 482 0 } -verbose -store
#current_net:n590 n679 
run_justification -full_sequential -set { 312 0 319 0 } -verbose -store
#current_net:n487 n490 
run_justification -full_sequential -set { 555 1 185 1 } -verbose -store
#current_net:n601 n758 
run_justification -full_sequential -set { 566 0 431 1 } -verbose -store
#current_net:n613 n749 
run_justification -full_sequential -set { 434 0 435 1 } -verbose -store
#current_net:n760 n761 
run_justification -full_sequential -set { 566 0 313 0 } -verbose -store
#current_net:n613 n708 
run_justification -full_sequential -set { 319 0 548 0 } -verbose -store
#current_net:n490 n618 
run_justification -full_sequential -set { 310 1 428 1 } -verbose -store
#current_net:n484 n740 
run_justification -full_sequential -set { 319 0 501 0 } -verbose -store
#current_net:n490 n641 
run_justification -full_sequential -set { 531 1 429 1 } -verbose -store
#current_net:n583 n744 
run_justification -full_sequential -set { 482 0 486 0 } -verbose -store
#current_net:n679 n683 
run_justification -full_sequential -set { 489 1 185 1 } -verbose -store
#current_net:n705 n758 
run_justification -full_sequential -set { 311 0 431 1 } -verbose -store
#current_net:n485 n749 
run_justification -full_sequential -set { 319 0 568 0 } -verbose -store
#current_net:n490 n619 
run_justification -full_sequential -set { 485 1 315 0 } -verbose -store
#current_net:n681 n709 
run_justification -full_sequential -set { 503 0 504 1 } -verbose -store
#current_net:n645 n647 
run_justification -full_sequential -set { 503 0 488 0 } -verbose -store
#current_net:n645 n704 
run_justification -full_sequential -set { 469 1 429 1 } -verbose -store
#current_net:n702 n744 
run_justification -full_sequential -set { 312 0 554 0 } -verbose -store
#current_net:n487 n590 
run_justification -full_sequential -set { 313 0 185 1 } -verbose -store
#current_net:n708 n758 
run_justification -full_sequential -set { 485 1 313 0 } -verbose -store
#current_net:n681 n708 
run_justification -full_sequential -set { 501 0 428 1 } -verbose -store
#current_net:n641 n740 
run_justification -full_sequential -set { 311 0 469 1 } -verbose -store
#current_net:n485 n702 
run_justification -full_sequential -set { 531 1 489 1 } -verbose -store
#current_net:n583 n705 
run_justification -full_sequential -set { 315 0 184 1 } -verbose -store
#current_net:n709 n757 
run_justification -full_sequential -set { 184 1 185 1 } -verbose -store
#current_net:n757 n758 
run_justification -full_sequential -set { 503 0 488 0 } -verbose -store
#current_net:n645 n704 
run_justification -full_sequential -set { 531 1 487 1 } -verbose -store
#current_net:n583 n684 
run_justification -full_sequential -set { 568 0 428 1 } -verbose -store
#current_net:n619 n740 
run_justification -full_sequential -set { 531 1 488 0 } -verbose -store
#current_net:n583 n704 
run_justification -full_sequential -set { 549 1 469 1 } -verbose -store
#current_net:n605 n702 
run_justification -full_sequential -set { 429 1 433 1 } -verbose -store
#current_net:n744 n759 
run_justification -full_sequential -set { 534 1 486 0 } -verbose -store
#current_net:n585 n683 
run_justification -full_sequential -set { 534 1 430 1 } -verbose -store
#current_net:n585 n748 
run_justification -full_sequential -set { 482 0 433 1 } -verbose -store
#current_net:n679 n759 
run_justification -full_sequential -set { 461 0 430 1 } -verbose -store
#current_net:n661 n748 
run_justification -full_sequential -set { 470 0 185 1 } -verbose -store
#current_net:n703 n758 
run_justification -full_sequential -set { 502 1 436 1 } -verbose -store
#current_net:n643 n762 
run_justification -full_sequential -set { 531 1 461 0 } -verbose -store
#current_net:n583 n661 
run_justification -full_sequential -set { 504 1 447 0 } -verbose -store
#current_net:n647 n700 
run_justification -full_sequential -set { 566 0 487 1 } -verbose -store
#current_net:n613 n684 
run_justification -full_sequential -set { 429 1 184 1 } -verbose -store
#current_net:n744 n757 
run_justification -full_sequential -set { 486 0 315 0 } -verbose -store
#current_net:n683 n709 
run_justification -full_sequential -set { 567 1 436 1 } -verbose -store
#current_net:n615 n762 
run_justification -full_sequential -set { 312 0 504 1 } -verbose -store
#current_net:n487 n647 
run_justification -full_sequential -set { 489 1 313 0 } -verbose -store
#current_net:n705 n708 
run_justification -full_sequential -set { 469 1 433 1 } -verbose -store
#current_net:n702 n759 
run_justification -full_sequential -set { 488 0 428 1 } -verbose -store
#current_net:n704 n740 
run_justification -full_sequential -set { 555 1 436 1 } -verbose -store
#current_net:n601 n762 
run_justification -full_sequential -set { 318 0 461 0 } -verbose -store
#current_net:n489 n661 
run_justification -full_sequential -set { 516 1 554 0 } -verbose -store
#current_net:n561 n590 
run_justification -full_sequential -set { 469 1 433 1 } -verbose -store
#current_net:n702 n759 
run_justification -full_sequential -set { 534 1 501 0 } -verbose -store
#current_net:n585 n641 
run_justification -full_sequential -set { 319 0 554 0 } -verbose -store
#current_net:n490 n590 
run_justification -full_sequential -set { 549 1 502 1 } -verbose -store
#current_net:n605 n643 
run_justification -full_sequential -set { 312 0 447 0 } -verbose -store
#current_net:n487 n700 
run_justification -full_sequential -set { 568 0 485 1 } -verbose -store
#current_net:n619 n681 
run_justification -full_sequential -set { 567 1 486 0 } -verbose -store
#current_net:n615 n683 
run_justification -full_sequential -set { 482 0 447 0 } -verbose -store
#current_net:n679 n700 
run_justification -full_sequential -set { 549 1 501 0 } -verbose -store
#current_net:n605 n641 
run_justification -full_sequential -set { 555 1 433 1 } -verbose -store
#current_net:n601 n759 
run_justification -full_sequential -set { 504 1 461 0 } -verbose -store
#current_net:n647 n661 
run_justification -full_sequential -set { 487 1 184 1 } -verbose -store
#current_net:n684 n757 
run_justification -full_sequential -set { 435 1 436 1 } -verbose -store
#current_net:n761 n762 
run_justification -full_sequential -set { 486 0 433 1 } -verbose -store
#current_net:n683 n759 
run_justification -full_sequential -set { 312 0 429 1 } -verbose -store
#current_net:n487 n744 
run_justification -full_sequential -set { 548 0 568 0 } -verbose -store
#current_net:n618 n619 
run_justification -full_sequential -set { 310 1 503 0 } -verbose -store
#current_net:n484 n645 
run_justification -full_sequential -set { 485 1 315 0 } -verbose -store
#current_net:n681 n709 
run_justification -full_sequential -set { 311 0 312 0 } -verbose -store
#current_net:n485 n487 
run_justification -full_sequential -set { 548 0 315 0 } -verbose -store
#current_net:n618 n709 
run_justification -full_sequential -set { 501 0 430 1 } -verbose -store
#current_net:n641 n748 
run_justification -full_sequential -set { 516 1 184 1 } -verbose -store
#current_net:n561 n757 
run_justification -full_sequential -set { 461 0 447 0 } -verbose -store
#current_net:n661 n700 
run_justification -full_sequential -set { 429 1 431 1 } -verbose -store
#current_net:n744 n749 
run_justification -full_sequential -set { 567 1 436 1 } -verbose -store
#current_net:n615 n762 
run_justification -full_sequential -set { 534 1 486 0 } -verbose -store
#current_net:n585 n683 
run_justification -full_sequential -set { 310 1 434 0 } -verbose -store
#current_net:n484 n760 
run_justification -full_sequential -set { 318 0 534 1 } -verbose -store
#current_net:n489 n585 
run_justification -full_sequential -set { 566 0 548 0 } -verbose -store
#current_net:n613 n618 
run_justification -full_sequential -set { 549 1 503 0 } -verbose -store
#current_net:n605 n645 
run_justification -full_sequential -set { 555 1 433 1 } -verbose -store
#current_net:n601 n759 
run_justification -full_sequential -set { 549 1 566 0 } -verbose -store
#current_net:n605 n613 
run_justification -full_sequential -set { 461 0 429 1 } -verbose -store
#current_net:n661 n744 
run_justification -full_sequential -set { 548 0 488 0 } -verbose -store
#current_net:n618 n704 
run_justification -full_sequential -set { 428 1 436 1 } -verbose -store
#current_net:n740 n762 
run_justification -full_sequential -set { 501 0 185 1 } -verbose -store
#current_net:n641 n758 
run_justification -full_sequential -set { 567 1 435 1 } -verbose -store
#current_net:n615 n761 
run_justification -full_sequential -set { 549 1 501 0 } -verbose -store
#current_net:n605 n641 
run_justification -full_sequential -set { 531 1 313 0 } -verbose -store
#current_net:n583 n708 
run_justification -full_sequential -set { 488 0 436 1 } -verbose -store
#current_net:n704 n762 
run_justification -full_sequential -set { 504 1 486 0 } -verbose -store
#current_net:n647 n683 
run_justification -full_sequential -set { 501 0 487 1 } -verbose -store
#current_net:n641 n684 
run_justification -full_sequential -set { 310 1 554 0 } -verbose -store
#current_net:n484 n590 
run_justification -full_sequential -set { 185 1 436 1 } -verbose -store
#current_net:n758 n762 
run_justification -full_sequential -set { 461 0 486 0 } -verbose -store
#current_net:n661 n683 
run_justification -full_sequential -set { 470 0 430 1 } -verbose -store
#current_net:n703 n748 
run_justification -full_sequential -set { 312 0 554 0 } -verbose -store
#current_net:n487 n590 
run_justification -full_sequential -set { 313 0 436 1 } -verbose -store
#current_net:n708 n762 
run_justification -full_sequential -set { 555 1 504 1 } -verbose -store
#current_net:n601 n647 
run_justification -full_sequential -set { 488 0 434 0 } -verbose -store
#current_net:n704 n760 
run_justification -full_sequential -set { 310 1 516 1 } -verbose -store
#current_net:n484 n561 
run_justification -full_sequential -set { 548 0 482 0 } -verbose -store
#current_net:n618 n679 
run_justification -full_sequential -set { 318 0 469 1 } -verbose -store
#current_net:n489 n702 
run_justification -full_sequential -set { 312 0 482 0 } -verbose -store
#current_net:n487 n679 
run_justification -full_sequential -set { 504 1 435 1 } -verbose -store
#current_net:n647 n761 
run_justification -full_sequential -set { 486 0 487 1 } -verbose -store
#current_net:n683 n684 
run_justification -full_sequential -set { 185 1 433 1 } -verbose -store
#current_net:n758 n759 
run_justification -full_sequential -set { 447 0 436 1 } -verbose -store
#current_net:n700 n762 
run_justification -full_sequential -set { 486 0 430 1 } -verbose -store
#current_net:n683 n748 
run_justification -full_sequential -set { 470 0 429 1 } -verbose -store
#current_net:n703 n744 
run_justification -full_sequential -set { 311 0 428 1 } -verbose -store
#current_net:n485 n740 
run_justification -full_sequential -set { 566 0 435 1 } -verbose -store
#current_net:n613 n761 
run_justification -full_sequential -set { 315 0 185 1 } -verbose -store
#current_net:n709 n758 
run_justification -full_sequential -set { 501 0 431 1 } -verbose -store
#current_net:n641 n749 
run_justification -full_sequential -set { 318 0 555 1 } -verbose -store
#current_net:n489 n601 
run_justification -full_sequential -set { 428 1 184 1 } -verbose -store
#current_net:n740 n757 
run_justification -full_sequential -set { 428 1 435 1 } -verbose -store
#current_net:n740 n761 
run_justification -full_sequential -set { 566 0 486 0 } -verbose -store
#current_net:n613 n683 
run_justification -full_sequential -set { 461 0 486 0 } -verbose -store
#current_net:n661 n683 
run_justification -full_sequential -set { 447 0 436 1 } -verbose -store
#current_net:n700 n762 
run_justification -full_sequential -set { 534 1 482 0 } -verbose -store
#current_net:n585 n679 
run_justification -full_sequential -set { 470 0 436 1 } -verbose -store
#current_net:n703 n762 
run_justification -full_sequential -set { 487 1 488 0 } -verbose -store
#current_net:n684 n704 
run_justification -full_sequential -set { 516 1 567 1 } -verbose -store
#current_net:n561 n615 
run_justification -full_sequential -set { 534 1 461 0 } -verbose -store
#current_net:n585 n661 
run_justification -full_sequential -set { 566 0 434 0 } -verbose -store
#current_net:n613 n760 
run_justification -full_sequential -set { 311 0 567 1 } -verbose -store
#current_net:n485 n615 
run_justification -full_sequential -set { 568 0 487 1 } -verbose -store
#current_net:n619 n684 
run_justification -full_sequential -set { 315 0 436 1 } -verbose -store
#current_net:n709 n762 
run_justification -full_sequential -set { 554 0 431 1 } -verbose -store
#current_net:n590 n749 
run_justification -full_sequential -set { 312 0 489 1 } -verbose -store
#current_net:n487 n705 
run_justification -full_sequential -set { 312 0 461 0 } -verbose -store
#current_net:n487 n661 
run_justification -full_sequential -set { 504 1 470 0 } -verbose -store
#current_net:n647 n703 
run_justification -full_sequential -set { 555 1 504 1 } -verbose -store
#current_net:n601 n647 
run_justification -full_sequential -set { 504 1 485 1 } -verbose -store
#current_net:n647 n681 
run_justification -full_sequential -set { 310 1 429 1 } -verbose -store
#current_net:n484 n744 
run_justification -full_sequential -set { 501 0 489 1 } -verbose -store
#current_net:n641 n705 
run_justification -full_sequential -set { 554 0 185 1 } -verbose -store
#current_net:n590 n758 
run_justification -full_sequential -set { 488 0 489 1 } -verbose -store
#current_net:n704 n705 
run_justification -full_sequential -set { 470 0 429 1 } -verbose -store
#current_net:n703 n744 
run_justification -full_sequential -set { 311 0 531 1 } -verbose -store
#current_net:n485 n583 
run_justification -full_sequential -set { 485 1 433 1 } -verbose -store
#current_net:n681 n759 
run_justification -full_sequential -set { 486 0 431 1 } -verbose -store
#current_net:n683 n749 
run_justification -full_sequential -set { 501 0 470 0 } -verbose -store
#current_net:n641 n703 
run_justification -full_sequential -set { 313 0 428 1 } -verbose -store
#current_net:n708 n740 
run_justification -full_sequential -set { 311 0 502 1 } -verbose -store
#current_net:n485 n643 
run_justification -full_sequential -set { 318 0 436 1 } -verbose -store
#current_net:n489 n762 
run_justification -full_sequential -set { 502 1 503 0 } -verbose -store
#current_net:n643 n645 
run_justification -full_sequential -set { 447 0 435 1 } -verbose -store
#current_net:n700 n761 
run_justification -full_sequential -set { 482 0 434 0 } -verbose -store
#current_net:n679 n760 
run_justification -full_sequential -set { 502 1 185 1 } -verbose -store
#current_net:n643 n758 
run_justification -full_sequential -set { 318 0 516 1 } -verbose -store
#current_net:n489 n561 
run_justification -full_sequential -set { 548 0 315 0 } -verbose -store
#current_net:n618 n709 
run_justification -full_sequential -set { 469 1 428 1 } -verbose -store
#current_net:n702 n740 
run_justification -full_sequential -set { 319 0 431 1 } -verbose -store
#current_net:n490 n749 
run_justification -full_sequential -set { 469 1 430 1 } -verbose -store
#current_net:n702 n748 
run_justification -full_sequential -set { 568 0 461 0 } -verbose -store
#current_net:n619 n661 
run_justification -full_sequential -set { 469 1 489 1 } -verbose -store
#current_net:n702 n705 
run_justification -full_sequential -set { 549 1 501 0 } -verbose -store
#current_net:n605 n641 
run_justification -full_sequential -set { 531 1 555 1 } -verbose -store
#current_net:n583 n601 
run_justification -full_sequential -set { 311 0 433 1 } -verbose -store
#current_net:n485 n759 
run_justification -full_sequential -set { 435 1 436 1 } -verbose -store
#current_net:n761 n762 
run_justification -full_sequential -set { 487 1 315 0 } -verbose -store
#current_net:n684 n709 
run_justification -full_sequential -set { 531 1 549 1 } -verbose -store
#current_net:n583 n605 
run_justification -full_sequential -set { 489 1 184 1 } -verbose -store
#current_net:n705 n757 
run_justification -full_sequential -set { 554 0 429 1 } -verbose -store
#current_net:n590 n744 
run_justification -full_sequential -set { 531 1 435 1 } -verbose -store
#current_net:n583 n761 
run_justification -full_sequential -set { 429 1 436 1 } -verbose -store
#current_net:n744 n762 
run_justification -full_sequential -set { 312 0 482 0 } -verbose -store
#current_net:n487 n679 
run_justification -full_sequential -set { 486 0 430 1 } -verbose -store
#current_net:n683 n748 
run_justification -full_sequential -set { 310 1 318 0 } -verbose -store
#current_net:n484 n489 
run_justification -full_sequential -set { 311 0 516 1 } -verbose -store
#current_net:n485 n561 
run_justification -full_sequential -set { 531 1 501 0 } -verbose -store
#current_net:n583 n641 
run_justification -full_sequential -set { 548 0 485 1 } -verbose -store
#current_net:n618 n681 
run_justification -full_sequential -set { 501 0 447 0 } -verbose -store
#current_net:n641 n700 
run_justification -full_sequential -set { 516 1 534 1 } -verbose -store
#current_net:n561 n585 
run_justification -full_sequential -set { 470 0 489 1 } -verbose -store
#current_net:n703 n705 
run_justification -full_sequential -set { 534 1 434 0 } -verbose -store
#current_net:n585 n760 
run_justification -full_sequential -set { 503 0 433 1 } -verbose -store
#current_net:n645 n759 
run_justification -full_sequential -set { 315 0 433 1 } -verbose -store
#current_net:n709 n759 
run_justification -full_sequential -set { 548 0 435 1 } -verbose -store
#current_net:n618 n761 
run_justification -full_sequential -set { 318 0 566 0 } -verbose -store
#current_net:n489 n613 
run_justification -full_sequential -set { 554 0 436 1 } -verbose -store
#current_net:n590 n762 
run_justification -full_sequential -set { 554 0 315 0 } -verbose -store
#current_net:n590 n709 
run_justification -full_sequential -set { 568 0 434 0 } -verbose -store
#current_net:n619 n760 
run_justification -full_sequential -set { 319 0 516 1 } -verbose -store
#current_net:n490 n561 
run_justification -full_sequential -set { 461 0 428 1 } -verbose -store
#current_net:n661 n740 
run_justification -full_sequential -set { 534 1 447 0 } -verbose -store
#current_net:n585 n700 
run_justification -full_sequential -set { 531 1 566 0 } -verbose -store
#current_net:n583 n613 
run_justification -full_sequential -set { 531 1 469 1 } -verbose -store
#current_net:n583 n702 
run_justification -full_sequential -set { 319 0 434 0 } -verbose -store
#current_net:n490 n760 
run_justification -full_sequential -set { 485 1 431 1 } -verbose -store
#current_net:n681 n749 
run_justification -full_sequential -set { 549 1 313 0 } -verbose -store
#current_net:n605 n708 
run_justification -full_sequential -set { 318 0 489 1 } -verbose -store
#current_net:n489 n705 
run_justification -full_sequential -set { 567 1 488 0 } -verbose -store
#current_net:n615 n704 
run_justification -full_sequential -set { 435 1 436 1 } -verbose -store
#current_net:n761 n762 
run_justification -full_sequential -set { 487 1 430 1 } -verbose -store
#current_net:n684 n748 
run_justification -full_sequential -set { 555 1 315 0 } -verbose -store
#current_net:n601 n709 
run_justification -full_sequential -set { 482 0 436 1 } -verbose -store
#current_net:n679 n762 
run_justification -full_sequential -set { 534 1 567 1 } -verbose -store
#current_net:n585 n615 
run_justification -full_sequential -set { 434 0 435 1 } -verbose -store
#current_net:n760 n761 
run_justification -full_sequential -set { 312 0 555 1 } -verbose -store
#current_net:n487 n601 
run_justification -full_sequential -set { 549 1 469 1 } -verbose -store
#current_net:n605 n702 
run_justification -full_sequential -set { 310 1 311 0 } -verbose -store
#current_net:n484 n485 
run_justification -full_sequential -set { 554 0 436 1 } -verbose -store
#current_net:n590 n762 
run_justification -full_sequential -set { 311 0 549 1 } -verbose -store
#current_net:n485 n605 
run_justification -full_sequential -set { 434 0 435 1 } -verbose -store
#current_net:n760 n761 
run_justification -full_sequential -set { 482 0 488 0 } -verbose -store
#current_net:n679 n704 
run_justification -full_sequential -set { 504 1 461 0 } -verbose -store
#current_net:n647 n661 
run_justification -full_sequential -set { 516 1 447 0 } -verbose -store
#current_net:n561 n700 
run_justification -full_sequential -set { 311 0 436 1 } -verbose -store
#current_net:n485 n762 
run_justification -full_sequential -set { 311 0 431 1 } -verbose -store
#current_net:n485 n749 
run_justification -full_sequential -set { 428 1 435 1 } -verbose -store
#current_net:n740 n761 
run_justification -full_sequential -set { 485 1 431 1 } -verbose -store
#current_net:n681 n749 
run_justification -full_sequential -set { 534 1 429 1 } -verbose -store
#current_net:n585 n744 
run_justification -full_sequential -set { 567 1 469 1 } -verbose -store
#current_net:n615 n702 
run_justification -full_sequential -set { 310 1 436 1 } -verbose -store
#current_net:n484 n762 
run_justification -full_sequential -set { 502 1 429 1 } -verbose -store
#current_net:n643 n744 
run_justification -full_sequential -set { 310 1 549 1 } -verbose -store
#current_net:n484 n605 
run_justification -full_sequential -set { 461 0 486 0 } -verbose -store
#current_net:n661 n683 
run_justification -full_sequential -set { 447 0 488 0 } -verbose -store
#current_net:n700 n704 
run_justification -full_sequential -set { 567 1 461 0 } -verbose -store
#current_net:n615 n661 
run_justification -full_sequential -set { 485 1 436 1 } -verbose -store
#current_net:n681 n762 
run_justification -full_sequential -set { 428 1 436 1 } -verbose -store
#current_net:n740 n762 
run_justification -full_sequential -set { 318 0 430 1 } -verbose -store
#current_net:n489 n748 
run_justification -full_sequential -set { 318 0 429 1 } -verbose -store
#current_net:n489 n744 
run_justification -full_sequential -set { 312 0 319 0 } -verbose -store
#current_net:n487 n490 
run_justification -full_sequential -set { 311 0 461 0 } -verbose -store
#current_net:n485 n661 
run_justification -full_sequential -set { 504 1 482 0 } -verbose -store
#current_net:n647 n679 
run_justification -full_sequential -set { 555 1 487 1 } -verbose -store
#current_net:n601 n684 
run_justification -full_sequential -set { 531 1 548 0 } -verbose -store
#current_net:n583 n618 
run_justification -full_sequential -set { 554 0 435 1 } -verbose -store
#current_net:n590 n761 
run_justification -full_sequential -set { 486 0 313 0 } -verbose -store
#current_net:n683 n708 
run_justification -full_sequential -set { 489 1 433 1 } -verbose -store
#current_net:n705 n759 
run_justification -full_sequential -set { 568 0 429 1 } -verbose -store
#current_net:n619 n744 
run_justification -full_sequential -set { 488 0 429 1 } -verbose -store
#current_net:n704 n744 
run_justification -full_sequential -set { 185 1 436 1 } -verbose -store
#current_net:n758 n762 
run_justification -full_sequential -set { 568 0 470 0 } -verbose -store
#current_net:n619 n703 
run_justification -full_sequential -set { 568 0 447 0 } -verbose -store
#current_net:n619 n700 
run_justification -full_sequential -set { 501 0 315 0 } -verbose -store
#current_net:n641 n709 
run_justification -full_sequential -set { 568 0 504 1 } -verbose -store
#current_net:n619 n647 
run_justification -full_sequential -set { 319 0 434 0 } -verbose -store
#current_net:n490 n760 
run_justification -full_sequential -set { 503 0 469 1 } -verbose -store
#current_net:n645 n702 
run_justification -full_sequential -set { 502 1 461 0 } -verbose -store
#current_net:n643 n661 
run_justification -full_sequential -set { 485 1 315 0 } -verbose -store
#current_net:n681 n709 
run_justification -full_sequential -set { 311 0 429 1 } -verbose -store
#current_net:n485 n744 
run_justification -full_sequential -set { 319 0 548 0 } -verbose -store
#current_net:n490 n618 
run_justification -full_sequential -set { 516 1 488 0 } -verbose -store
#current_net:n561 n704 
run_justification -full_sequential -set { 488 0 431 1 } -verbose -store
#current_net:n704 n749 
run_justification -full_sequential -set { 319 0 485 1 } -verbose -store
#current_net:n490 n681 
run_justification -full_sequential -set { 531 1 185 1 } -verbose -store
#current_net:n583 n758 
run_justification -full_sequential -set { 312 0 469 1 } -verbose -store
#current_net:n487 n702 
run_justification -full_sequential -set { 486 0 185 1 } -verbose -store
#current_net:n683 n758 
run_justification -full_sequential -set { 311 0 503 0 } -verbose -store
#current_net:n485 n645 
run_justification -full_sequential -set { 310 1 436 1 } -verbose -store
#current_net:n484 n762 
run_justification -full_sequential -set { 315 0 434 0 } -verbose -store
#current_net:n709 n760 
run_justification -full_sequential -set { 516 1 435 1 } -verbose -store
#current_net:n561 n761 
run_justification -full_sequential -set { 555 1 503 0 } -verbose -store
#current_net:n601 n645 
run_justification -full_sequential -set { 433 1 434 0 } -verbose -store
#current_net:n759 n760 
run_justification -full_sequential -set { 555 1 435 1 } -verbose -store
#current_net:n601 n761 
run_justification -full_sequential -set { 567 1 184 1 } -verbose -store
#current_net:n615 n757 
run_justification -full_sequential -set { 549 1 503 0 } -verbose -store
#current_net:n605 n645 
run_justification -full_sequential -set { 310 1 461 0 } -verbose -store
#current_net:n484 n661 
run_justification -full_sequential -set { 319 0 431 1 } -verbose -store
#current_net:n490 n749 
run_justification -full_sequential -set { 503 0 487 1 } -verbose -store
#current_net:n645 n684 
run_justification -full_sequential -set { 315 0 435 1 } -verbose -store
#current_net:n709 n761 
run_justification -full_sequential -set { 469 1 436 1 } -verbose -store
#current_net:n702 n762 
run_justification -full_sequential -set { 310 1 568 0 } -verbose -store
#current_net:n484 n619 
run_justification -full_sequential -set { 310 1 311 0 } -verbose -store
#current_net:n484 n485 
run_justification -full_sequential -set { 312 0 486 0 } -verbose -store
#current_net:n487 n683 
run_justification -full_sequential -set { 461 0 430 1 } -verbose -store
#current_net:n661 n748 
run_justification -full_sequential -set { 310 1 555 1 } -verbose -store
#current_net:n484 n601 
run_justification -full_sequential -set { 554 0 430 1 } -verbose -store
#current_net:n590 n748 
run_justification -full_sequential -set { 548 0 315 0 } -verbose -store
#current_net:n618 n709 
run_justification -full_sequential -set { 516 1 482 0 } -verbose -store
#current_net:n561 n679 
run_justification -full_sequential -set { 548 0 502 1 } -verbose -store
#current_net:n618 n643 
run_justification -full_sequential -set { 311 0 503 0 } -verbose -store
#current_net:n485 n645 
run_justification -full_sequential -set { 534 1 485 1 } -verbose -store
#current_net:n585 n681 
run_justification -full_sequential -set { 501 0 504 1 } -verbose -store
#current_net:n641 n647 
run_justification -full_sequential -set { 461 0 184 1 } -verbose -store
#current_net:n661 n757 
run_justification -full_sequential -set { 482 0 436 1 } -verbose -store
#current_net:n679 n762 
run_justification -full_sequential -set { 516 1 436 1 } -verbose -store
#current_net:n561 n762 
run_justification -full_sequential -set { 428 1 430 1 } -verbose -store
#current_net:n740 n748 
run_justification -full_sequential -set { 311 0 315 0 } -verbose -store
#current_net:n485 n709 
run_justification -full_sequential -set { 430 1 433 1 } -verbose -store
#current_net:n748 n759 
run_justification -full_sequential -set { 516 1 315 0 } -verbose -store
#current_net:n561 n709 
run_justification -full_sequential -set { 501 0 429 1 } -verbose -store
#current_net:n641 n744 
run_justification -full_sequential -set { 310 1 185 1 } -verbose -store
#current_net:n484 n758 
run_justification -full_sequential -set { 534 1 431 1 } -verbose -store
#current_net:n585 n749 
run_justification -full_sequential -set { 568 0 185 1 } -verbose -store
#current_net:n619 n758 
run_justification -full_sequential -set { 310 1 488 0 } -verbose -store
#current_net:n484 n704 
run_justification -full_sequential -set { 501 0 433 1 } -verbose -store
#current_net:n641 n759 
run_justification -full_sequential -set { 534 1 428 1 } -verbose -store
#current_net:n585 n740 
run_justification -full_sequential -set { 516 1 434 0 } -verbose -store
#current_net:n561 n760 
run_justification -full_sequential -set { 447 0 470 0 } -verbose -store
#current_net:n700 n703 
run_justification -full_sequential -set { 554 0 501 0 } -verbose -store
#current_net:n590 n641 
run_justification -full_sequential -set { 470 0 315 0 } -verbose -store
#current_net:n703 n709 
run_justification -full_sequential -set { 311 0 554 0 } -verbose -store
#current_net:n485 n590 
run_justification -full_sequential -set { 433 1 435 1 } -verbose -store
#current_net:n759 n761 
run_justification -full_sequential -set { 461 0 488 0 } -verbose -store
#current_net:n661 n704 
run_justification -full_sequential -set { 502 1 428 1 } -verbose -store
#current_net:n643 n740 
run_justification -full_sequential -set { 312 0 315 0 } -verbose -store
#current_net:n487 n709 
run_justification -full_sequential -set { 311 0 555 1 } -verbose -store
#current_net:n485 n601 
run_justification -full_sequential -set { 318 0 534 1 } -verbose -store
#current_net:n489 n585 
run_justification -full_sequential -set { 567 1 433 1 } -verbose -store
#current_net:n615 n759 
run_justification -full_sequential -set { 311 0 313 0 } -verbose -store
#current_net:n485 n708 
run_justification -full_sequential -set { 501 0 184 1 } -verbose -store
#current_net:n641 n757 
run_justification -full_sequential -set { 566 0 431 1 } -verbose -store
#current_net:n613 n749 
run_justification -full_sequential -set { 548 0 433 1 } -verbose -store
#current_net:n618 n759 
run_justification -full_sequential -set { 504 1 488 0 } -verbose -store
#current_net:n647 n704 
run_justification -full_sequential -set { 568 0 435 1 } -verbose -store
#current_net:n619 n761 
run_justification -full_sequential -set { 555 1 501 0 } -verbose -store
#current_net:n601 n641 
run_justification -full_sequential -set { 313 0 315 0 } -verbose -store
#current_net:n708 n709 
run_justification -full_sequential -set { 470 0 436 1 } -verbose -store
#current_net:n703 n762 
run_justification -full_sequential -set { 482 0 313 0 } -verbose -store
#current_net:n679 n708 
run_justification -full_sequential -set { 319 0 482 0 } -verbose -store
#current_net:n490 n679 
run_justification -full_sequential -set { 554 0 461 0 } -verbose -store
#current_net:n590 n661 
run_justification -full_sequential -set { 310 1 487 1 } -verbose -store
#current_net:n484 n684 
run_justification -full_sequential -set { 312 0 185 1 } -verbose -store
#current_net:n487 n758 
run_justification -full_sequential -set { 516 1 436 1 } -verbose -store
#current_net:n561 n762 
run_justification -full_sequential -set { 489 1 434 0 } -verbose -store
#current_net:n705 n760 
run_justification -full_sequential -set { 447 0 470 0 } -verbose -store
#current_net:n700 n703 
run_justification -full_sequential -set { 502 1 469 1 } -verbose -store
#current_net:n643 n702 
run_justification -full_sequential -set { 310 1 482 0 } -verbose -store
#current_net:n484 n679 
run_justification -full_sequential -set { 531 1 487 1 } -verbose -store
#current_net:n583 n684 
run_justification -full_sequential -set { 555 1 433 1 } -verbose -store
#current_net:n601 n759 
run_justification -full_sequential -set { 428 1 430 1 } -verbose -store
#current_net:n740 n748 
run_justification -full_sequential -set { 548 0 485 1 } -verbose -store
#current_net:n618 n681 
run_justification -full_sequential -set { 548 0 428 1 } -verbose -store
#current_net:n618 n740 
run_justification -full_sequential -set { 431 1 184 1 } -verbose -store
#current_net:n749 n757 
run_justification -full_sequential -set { 501 0 428 1 } -verbose -store
#current_net:n641 n740 
run_justification -full_sequential -set { 548 0 184 1 } -verbose -store
#current_net:n618 n757 
run_justification -full_sequential -set { 567 1 503 0 } -verbose -store
#current_net:n615 n645 
run_justification -full_sequential -set { 311 0 516 1 } -verbose -store
#current_net:n485 n561 
run_justification -full_sequential -set { 315 0 429 1 } -verbose -store
#current_net:n709 n744 
run_justification -full_sequential -set { 568 0 501 0 } -verbose -store
#current_net:n619 n641 
run_justification -full_sequential -set { 555 1 549 1 } -verbose -store
#current_net:n601 n605 
run_justification -full_sequential -set { 548 0 430 1 } -verbose -store
#current_net:n618 n748 
run_justification -full_sequential -set { 531 1 428 1 } -verbose -store
#current_net:n583 n740 
run_justification -full_sequential -set { 312 0 567 1 } -verbose -store
#current_net:n487 n615 
run_justification -full_sequential -set { 482 0 185 1 } -verbose -store
#current_net:n679 n758 
run_justification -full_sequential -set { 487 1 313 0 } -verbose -store
#current_net:n684 n708 
run_justification -full_sequential -set { 516 1 436 1 } -verbose -store
#current_net:n561 n762 
run_justification -full_sequential -set { 549 1 470 0 } -verbose -store
#current_net:n605 n703 
run_justification -full_sequential -set { 555 1 313 0 } -verbose -store
#current_net:n601 n708 
run_justification -full_sequential -set { 501 0 447 0 } -verbose -store
#current_net:n641 n700 
run_justification -full_sequential -set { 531 1 435 1 } -verbose -store
#current_net:n583 n761 
run_justification -full_sequential -set { 319 0 486 0 } -verbose -store
#current_net:n490 n683 
run_justification -full_sequential -set { 566 0 487 1 } -verbose -store
#current_net:n613 n684 
run_justification -full_sequential -set { 185 1 435 1 } -verbose -store
#current_net:n758 n761 
run_justification -full_sequential -set { 501 0 470 0 } -verbose -store
#current_net:n641 n703 
run_justification -full_sequential -set { 516 1 502 1 } -verbose -store
#current_net:n561 n643 
run_justification -full_sequential -set { 504 1 433 1 } -verbose -store
#current_net:n647 n759 
run_justification -full_sequential -set { 318 0 567 1 } -verbose -store
#current_net:n489 n615 
run_justification -full_sequential -set { 566 0 503 0 } -verbose -store
#current_net:n613 n645 
run_justification -full_sequential -set { 555 1 548 0 } -verbose -store
#current_net:n601 n618 
run_justification -full_sequential -set { 447 0 470 0 } -verbose -store
#current_net:n700 n703 
run_justification -full_sequential -set { 554 0 502 1 } -verbose -store
#current_net:n590 n643 
run_justification -full_sequential -set { 555 1 488 0 } -verbose -store
#current_net:n601 n704 
run_justification -full_sequential -set { 516 1 470 0 } -verbose -store
#current_net:n561 n703 
run_justification -full_sequential -set { 489 1 436 1 } -verbose -store
#current_net:n705 n762 
run_justification -full_sequential -set { 485 1 431 1 } -verbose -store
#current_net:n681 n749 
run_justification -full_sequential -set { 319 0 447 0 } -verbose -store
#current_net:n490 n700 
run_justification -full_sequential -set { 568 0 436 1 } -verbose -store
#current_net:n619 n762 
run_justification -full_sequential -set { 555 1 501 0 } -verbose -store
#current_net:n601 n641 
run_justification -full_sequential -set { 554 0 568 0 } -verbose -store
#current_net:n590 n619 
run_justification -full_sequential -set { 319 0 469 1 } -verbose -store
#current_net:n490 n702 
run_justification -full_sequential -set { 548 0 435 1 } -verbose -store
#current_net:n618 n761 
run_justification -full_sequential -set { 555 1 485 1 } -verbose -store
#current_net:n601 n681 
run_justification -full_sequential -set { 555 1 313 0 } -verbose -store
#current_net:n601 n708 
run_justification -full_sequential -set { 489 1 431 1 } -verbose -store
#current_net:n705 n749 
run_justification -full_sequential -set { 566 0 447 0 } -verbose -store
#current_net:n613 n700 
run_justification -full_sequential -set { 534 1 428 1 } -verbose -store
#current_net:n585 n740 
run_justification -full_sequential -set { 516 1 461 0 } -verbose -store
#current_net:n561 n661 
run_justification -full_sequential -set { 555 1 502 1 } -verbose -store
#current_net:n601 n643 
run_justification -full_sequential -set { 502 1 184 1 } -verbose -store
#current_net:n643 n757 
run_justification -full_sequential -set { 549 1 184 1 } -verbose -store
#current_net:n605 n757 
run_justification -full_sequential -set { 502 1 184 1 } -verbose -store
#current_net:n643 n757 
run_justification -full_sequential -set { 488 0 431 1 } -verbose -store
#current_net:n704 n749 
run_justification -full_sequential -set { 503 0 430 1 } -verbose -store
#current_net:n645 n748 
run_justification -full_sequential -set { 516 1 502 1 } -verbose -store
#current_net:n561 n643 
run_justification -full_sequential -set { 486 0 487 1 } -verbose -store
#current_net:n683 n684 
run_justification -full_sequential -set { 502 1 469 1 } -verbose -store
#current_net:n643 n702 
run_justification -full_sequential -set { 487 1 428 1 } -verbose -store
#current_net:n684 n740 
run_justification -full_sequential -set { 470 0 430 1 } -verbose -store
#current_net:n703 n748 
run_justification -full_sequential -set { 461 0 488 0 } -verbose -store
#current_net:n661 n704 
run_justification -full_sequential -set { 319 0 430 1 } -verbose -store
#current_net:n490 n748 
run_justification -full_sequential -set { 311 0 312 0 } -verbose -store
#current_net:n485 n487 
run_justification -full_sequential -set { 311 0 428 1 } -verbose -store
#current_net:n485 n740 
run_justification -full_sequential -set { 504 1 431 1 } -verbose -store
#current_net:n647 n749 
run_justification -full_sequential -set { 501 0 429 1 } -verbose -store
#current_net:n641 n744 
run_justification -full_sequential -set { 555 1 469 1 } -verbose -store
#current_net:n601 n702 
run_justification -full_sequential -set { 312 0 315 0 } -verbose -store
#current_net:n487 n709 
run_justification -full_sequential -set { 488 0 313 0 } -verbose -store
#current_net:n704 n708 
run_justification -full_sequential -set { 488 0 185 1 } -verbose -store
#current_net:n704 n758 
run_justification -full_sequential -set { 428 1 434 0 } -verbose -store
#current_net:n740 n760 
run_justification -full_sequential -set { 315 0 434 0 } -verbose -store
#current_net:n709 n760 
run_justification -full_sequential -set { 503 0 482 0 } -verbose -store
#current_net:n645 n679 
run_justification -full_sequential -set { 310 1 433 1 } -verbose -store
#current_net:n484 n759 
run_justification -full_sequential -set { 548 0 482 0 } -verbose -store
#current_net:n618 n679 
run_justification -full_sequential -set { 487 1 470 0 } -verbose -store
#current_net:n684 n703 
run_justification -full_sequential -set { 554 0 555 1 } -verbose -store
#current_net:n590 n601 
run_justification -full_sequential -set { 319 0 431 1 } -verbose -store
#current_net:n490 n749 
run_justification -full_sequential -set { 429 1 430 1 } -verbose -store
#current_net:n744 n748 
run_justification -full_sequential -set { 503 0 430 1 } -verbose -store
#current_net:n645 n748 
run_justification -full_sequential -set { 312 0 431 1 } -verbose -store
#current_net:n487 n749 
run_justification -full_sequential -set { 548 0 431 1 } -verbose -store
#current_net:n618 n749 
run_justification -full_sequential -set { 567 1 435 1 } -verbose -store
#current_net:n615 n761 
run_justification -full_sequential -set { 534 1 482 0 } -verbose -store
#current_net:n585 n679 
run_justification -full_sequential -set { 486 0 488 0 } -verbose -store
#current_net:n683 n704 
run_justification -full_sequential -set { 554 0 549 1 } -verbose -store
#current_net:n590 n605 
run_justification -full_sequential -set { 487 1 488 0 } -verbose -store
#current_net:n684 n704 
run_justification -full_sequential -set { 461 0 429 1 } -verbose -store
#current_net:n661 n744 
run_justification -full_sequential -set { 310 1 503 0 } -verbose -store
#current_net:n484 n645 
run_justification -full_sequential -set { 312 0 555 1 } -verbose -store
#current_net:n487 n601 
run_justification -full_sequential -set { 482 0 433 1 } -verbose -store
#current_net:n679 n759 
run_justification -full_sequential -set { 531 1 433 1 } -verbose -store
#current_net:n583 n759 
run_justification -full_sequential -set { 549 1 502 1 } -verbose -store
#current_net:n605 n643 
run_justification -full_sequential -set { 310 1 311 0 } -verbose -store
#current_net:n484 n485 
run_justification -full_sequential -set { 548 0 469 1 } -verbose -store
#current_net:n618 n702 
run_justification -full_sequential -set { 516 1 566 0 } -verbose -store
#current_net:n561 n613 
run_justification -full_sequential -set { 531 1 435 1 } -verbose -store
#current_net:n583 n761 
run_justification -full_sequential -set { 486 0 313 0 } -verbose -store
#current_net:n683 n708 
run_justification -full_sequential -set { 548 0 185 1 } -verbose -store
#current_net:n618 n758 
run_justification -full_sequential -set { 310 1 489 1 } -verbose -store
#current_net:n484 n705 
run_justification -full_sequential -set { 486 0 430 1 } -verbose -store
#current_net:n683 n748 
run_justification -full_sequential -set { 482 0 428 1 } -verbose -store
#current_net:n679 n740 
run_justification -full_sequential -set { 555 1 447 0 } -verbose -store
#current_net:n601 n700 
run_justification -full_sequential -set { 482 0 429 1 } -verbose -store
#current_net:n679 n744 
run_justification -full_sequential -set { 312 0 461 0 } -verbose -store
#current_net:n487 n661 
run_justification -full_sequential -set { 504 1 488 0 } -verbose -store
#current_net:n647 n704 
run_justification -full_sequential -set { 485 1 429 1 } -verbose -store
#current_net:n681 n744 
run_justification -full_sequential -set { 319 0 503 0 } -verbose -store
#current_net:n490 n645 
run_justification -full_sequential -set { 319 0 436 1 } -verbose -store
#current_net:n490 n762 
run_justification -full_sequential -set { 315 0 428 1 } -verbose -store
#current_net:n709 n740 
run_justification -full_sequential -set { 310 1 567 1 } -verbose -store
#current_net:n484 n615 
run_justification -full_sequential -set { 534 1 469 1 } -verbose -store
#current_net:n585 n702 
run_justification -full_sequential -set { 534 1 489 1 } -verbose -store
#current_net:n585 n705 
run_justification -full_sequential -set { 555 1 504 1 } -verbose -store
#current_net:n601 n647 
run_justification -full_sequential -set { 461 0 431 1 } -verbose -store
#current_net:n661 n749 
run_justification -full_sequential -set { 555 1 502 1 } -verbose -store
#current_net:n601 n643 
run_justification -full_sequential -set { 487 1 185 1 } -verbose -store
#current_net:n684 n758 
run_justification -full_sequential -set { 318 0 486 0 } -verbose -store
#current_net:n489 n683 
run_justification -full_sequential -set { 482 0 435 1 } -verbose -store
#current_net:n679 n761 
run_justification -full_sequential -set { 461 0 313 0 } -verbose -store
#current_net:n661 n708 
run_justification -full_sequential -set { 489 1 430 1 } -verbose -store
#current_net:n705 n748 
run_justification -full_sequential -set { 502 1 434 0 } -verbose -store
#current_net:n643 n760 
run_justification -full_sequential -set { 548 0 470 0 } -verbose -store
#current_net:n618 n703 
run_justification -full_sequential -set { 428 1 429 1 } -verbose -store
#current_net:n740 n744 
run_justification -full_sequential -set { 504 1 435 1 } -verbose -store
#current_net:n647 n761 
run_justification -full_sequential -set { 531 1 548 0 } -verbose -store
#current_net:n583 n618 
run_justification -full_sequential -set { 501 0 488 0 } -verbose -store
#current_net:n641 n704 
run_justification -full_sequential -set { 311 0 447 0 } -verbose -store
#current_net:n485 n700 
run_justification -full_sequential -set { 310 1 184 1 } -verbose -store
#current_net:n484 n757 
run_justification -full_sequential -set { 489 1 435 1 } -verbose -store
#current_net:n705 n761 
run_justification -full_sequential -set { 534 1 503 0 } -verbose -store
#current_net:n585 n645 
run_justification -full_sequential -set { 485 1 313 0 } -verbose -store
#current_net:n681 n708 
run_justification -full_sequential -set { 470 0 489 1 } -verbose -store
#current_net:n703 n705 
run_justification -full_sequential -set { 534 1 549 1 } -verbose -store
#current_net:n585 n605 
run_justification -full_sequential -set { 311 0 315 0 } -verbose -store
#current_net:n485 n709 
run_justification -full_sequential -set { 430 1 436 1 } -verbose -store
#current_net:n748 n762 
run_justification -full_sequential -set { 567 1 431 1 } -verbose -store
#current_net:n615 n749 
run_justification -full_sequential -set { 318 0 436 1 } -verbose -store
#current_net:n489 n762 
run_justification -full_sequential -set { 447 0 185 1 } -verbose -store
#current_net:n700 n758 
run_justification -full_sequential -set { 531 1 485 1 } -verbose -store
#current_net:n583 n681 
run_justification -full_sequential -set { 489 1 435 1 } -verbose -store
#current_net:n705 n761 
run_justification -full_sequential -set { 501 0 482 0 } -verbose -store
#current_net:n641 n679 
run_justification -full_sequential -set { 549 1 486 0 } -verbose -store
#current_net:n605 n683 
run_justification -full_sequential -set { 312 0 501 0 } -verbose -store
#current_net:n487 n641 
run_justification -full_sequential -set { 555 1 434 0 } -verbose -store
#current_net:n601 n760 
run_justification -full_sequential -set { 184 1 434 0 } -verbose -store
#current_net:n757 n760 
run_justification -full_sequential -set { 310 1 184 1 } -verbose -store
#current_net:n484 n757 
run_justification -full_sequential -set { 555 1 184 1 } -verbose -store
#current_net:n601 n757 
run_justification -full_sequential -set { 502 1 436 1 } -verbose -store
#current_net:n643 n762 
run_justification -full_sequential -set { 430 1 433 1 } -verbose -store
#current_net:n748 n759 
run_justification -full_sequential -set { 469 1 435 1 } -verbose -store
#current_net:n702 n761 
run_justification -full_sequential -set { 501 0 487 1 } -verbose -store
#current_net:n641 n684 
run_justification -full_sequential -set { 319 0 488 0 } -verbose -store
#current_net:n490 n704 
run_justification -full_sequential -set { 549 1 315 0 } -verbose -store
#current_net:n605 n709 
run_justification -full_sequential -set { 315 0 435 1 } -verbose -store
#current_net:n709 n761 
run_justification -full_sequential -set { 555 1 488 0 } -verbose -store
#current_net:n601 n704 
run_justification -full_sequential -set { 534 1 488 0 } -verbose -store
#current_net:n585 n704 
run_justification -full_sequential -set { 567 1 184 1 } -verbose -store
#current_net:n615 n757 
run_justification -full_sequential -set { 501 0 447 0 } -verbose -store
#current_net:n641 n700 
run_justification -full_sequential -set { 318 0 488 0 } -verbose -store
#current_net:n489 n704 
run_justification -full_sequential -set { 184 1 436 1 } -verbose -store
#current_net:n757 n762 
run_justification -full_sequential -set { 504 1 461 0 } -verbose -store
#current_net:n647 n661 
run_justification -full_sequential -set { 554 0 501 0 } -verbose -store
#current_net:n590 n641 
run_justification -full_sequential -set { 429 1 185 1 } -verbose -store
#current_net:n744 n758 
run_justification -full_sequential -set { 555 1 470 0 } -verbose -store
#current_net:n601 n703 
run_justification -full_sequential -set { 470 0 429 1 } -verbose -store
#current_net:n703 n744 
run_justification -full_sequential -set { 319 0 436 1 } -verbose -store
#current_net:n490 n762 
run_justification -full_sequential -set { 501 0 486 0 } -verbose -store
#current_net:n641 n683 
run_justification -full_sequential -set { 531 1 313 0 } -verbose -store
#current_net:n583 n708 
run_justification -full_sequential -set { 318 0 554 0 } -verbose -store
#current_net:n489 n590 
run_justification -full_sequential -set { 319 0 516 1 } -verbose -store
#current_net:n490 n561 
run_justification -full_sequential -set { 312 0 469 1 } -verbose -store
#current_net:n487 n702 
run_justification -full_sequential -set { 504 1 313 0 } -verbose -store
#current_net:n647 n708 
run_justification -full_sequential -set { 434 0 436 1 } -verbose -store
#current_net:n760 n762 
run_justification -full_sequential -set { 504 1 313 0 } -verbose -store
#current_net:n647 n708 
run_justification -full_sequential -set { 567 1 482 0 } -verbose -store
#current_net:n615 n679 
run_justification -full_sequential -set { 319 0 503 0 } -verbose -store
#current_net:n490 n645 
run_justification -full_sequential -set { 534 1 502 1 } -verbose -store
#current_net:n585 n643 
run_justification -full_sequential -set { 531 1 435 1 } -verbose -store
#current_net:n583 n761 
run_justification -full_sequential -set { 318 0 503 0 } -verbose -store
#current_net:n489 n645 
run_justification -full_sequential -set { 447 0 428 1 } -verbose -store
#current_net:n700 n740 
run_justification -full_sequential -set { 516 1 447 0 } -verbose -store
#current_net:n561 n700 
run_justification -full_sequential -set { 566 0 486 0 } -verbose -store
#current_net:n613 n683 
run_justification -full_sequential -set { 318 0 428 1 } -verbose -store
#current_net:n489 n740 
run_justification -full_sequential -set { 568 0 313 0 } -verbose -store
#current_net:n619 n708 
run_justification -full_sequential -set { 566 0 185 1 } -verbose -store
#current_net:n613 n758 
run_justification -full_sequential -set { 488 0 431 1 } -verbose -store
#current_net:n704 n749 
run_justification -full_sequential -set { 469 1 315 0 } -verbose -store
#current_net:n702 n709 
run_justification -full_sequential -set { 485 1 315 0 } -verbose -store
#current_net:n681 n709 
run_justification -full_sequential -set { 554 0 486 0 } -verbose -store
#current_net:n590 n683 
run_justification -full_sequential -set { 312 0 548 0 } -verbose -store
#current_net:n487 n618 
run_justification -full_sequential -set { 489 1 185 1 } -verbose -store
#current_net:n705 n758 
run_justification -full_sequential -set { 469 1 430 1 } -verbose -store
#current_net:n702 n748 
run_justification -full_sequential -set { 485 1 430 1 } -verbose -store
#current_net:n681 n748 
run_justification -full_sequential -set { 311 0 501 0 } -verbose -store
#current_net:n485 n641 
run_justification -full_sequential -set { 313 0 429 1 } -verbose -store
#current_net:n708 n744 
run_justification -full_sequential -set { 501 0 469 1 } -verbose -store
#current_net:n641 n702 
run_justification -full_sequential -set { 447 0 488 0 } -verbose -store
#current_net:n700 n704 
run_justification -full_sequential -set { 503 0 482 0 } -verbose -store
#current_net:n645 n679 
run_justification -full_sequential -set { 489 1 429 1 } -verbose -store
#current_net:n705 n744 
run_justification -full_sequential -set { 461 0 470 0 } -verbose -store
#current_net:n661 n703 
run_justification -full_sequential -set { 430 1 433 1 } -verbose -store
#current_net:n748 n759 
run_justification -full_sequential -set { 319 0 470 0 } -verbose -store
#current_net:n490 n703 
run_justification -full_sequential -set { 185 1 435 1 } -verbose -store
#current_net:n758 n761 
run_justification -full_sequential -set { 482 0 486 0 } -verbose -store
#current_net:n679 n683 
run_justification -full_sequential -set { 531 1 482 0 } -verbose -store
#current_net:n583 n679 
run_justification -full_sequential -set { 312 0 461 0 } -verbose -store
#current_net:n487 n661 
run_justification -full_sequential -set { 486 0 184 1 } -verbose -store
#current_net:n683 n757 
run_justification -full_sequential -set { 504 1 486 0 } -verbose -store
#current_net:n647 n683 
run_justification -full_sequential -set { 567 1 431 1 } -verbose -store
#current_net:n615 n749 
run_justification -full_sequential -set { 311 0 486 0 } -verbose -store
#current_net:n485 n683 
run_justification -full_sequential -set { 554 0 566 0 } -verbose -store
#current_net:n590 n613 
run_justification -full_sequential -set { 434 0 435 1 } -verbose -store
#current_net:n760 n761 
run_justification -full_sequential -set { 555 1 502 1 } -verbose -store
#current_net:n601 n643 
run_justification -full_sequential -set { 315 0 428 1 } -verbose -store
#current_net:n709 n740 
run_justification -full_sequential -set { 504 1 470 0 } -verbose -store
#current_net:n647 n703 
run_justification -full_sequential -set { 531 1 567 1 } -verbose -store
#current_net:n583 n615 
run_justification -full_sequential -set { 568 0 502 1 } -verbose -store
#current_net:n619 n643 
run_justification -full_sequential -set { 502 1 504 1 } -verbose -store
#current_net:n643 n647 
run_justification -full_sequential -set { 503 0 461 0 } -verbose -store
#current_net:n645 n661 
run_justification -full_sequential -set { 504 1 489 1 } -verbose -store
#current_net:n647 n705 
run_justification -full_sequential -set { 489 1 428 1 } -verbose -store
#current_net:n705 n740 
run_justification -full_sequential -set { 531 1 184 1 } -verbose -store
#current_net:n583 n757 
run_justification -full_sequential -set { 311 0 313 0 } -verbose -store
#current_net:n485 n708 
run_justification -full_sequential -set { 531 1 503 0 } -verbose -store
#current_net:n583 n645 
run_justification -full_sequential -set { 503 0 488 0 } -verbose -store
#current_net:n645 n704 
run_justification -full_sequential -set { 504 1 428 1 } -verbose -store
#current_net:n647 n740 
run_justification -full_sequential -set { 319 0 534 1 } -verbose -store
#current_net:n490 n585 
run_justification -full_sequential -set { 548 0 486 0 } -verbose -store
#current_net:n618 n683 
run_justification -full_sequential -set { 312 0 430 1 } -verbose -store
#current_net:n487 n748 
run_justification -full_sequential -set { 430 1 433 1 } -verbose -store
#current_net:n748 n759 
run_justification -full_sequential -set { 566 0 504 1 } -verbose -store
#current_net:n613 n647 
run_justification -full_sequential -set { 318 0 567 1 } -verbose -store
#current_net:n489 n615 
run_justification -full_sequential -set { 312 0 566 0 } -verbose -store
#current_net:n487 n613 
run_justification -full_sequential -set { 310 1 489 1 } -verbose -store
#current_net:n484 n705 
run_justification -full_sequential -set { 502 1 315 0 } -verbose -store
#current_net:n643 n709 
run_justification -full_sequential -set { 548 0 447 0 } -verbose -store
#current_net:n618 n700 
run_justification -full_sequential -set { 554 0 566 0 } -verbose -store
#current_net:n590 n613 
run_justification -full_sequential -set { 318 0 489 1 } -verbose -store
#current_net:n489 n705 
run_justification -full_sequential -set { 516 1 555 1 } -verbose -store
#current_net:n561 n601 
run_justification -full_sequential -set { 312 0 568 0 } -verbose -store
#current_net:n487 n619 
run_justification -full_sequential -set { 489 1 429 1 } -verbose -store
#current_net:n705 n744 
run_justification -full_sequential -set { 485 1 488 0 } -verbose -store
#current_net:n681 n704 
run_justification -full_sequential -set { 503 0 184 1 } -verbose -store
#current_net:n645 n757 
run_justification -full_sequential -set { 501 0 433 1 } -verbose -store
#current_net:n641 n759 
run_justification -full_sequential -set { 503 0 447 0 } -verbose -store
#current_net:n645 n700 
run_justification -full_sequential -set { 502 1 184 1 } -verbose -store
#current_net:n643 n757 
run_justification -full_sequential -set { 549 1 433 1 } -verbose -store
#current_net:n605 n759 
run_justification -full_sequential -set { 486 0 435 1 } -verbose -store
#current_net:n683 n761 
run_justification -full_sequential -set { 313 0 434 0 } -verbose -store
#current_net:n708 n760 
run_justification -full_sequential -set { 502 1 447 0 } -verbose -store
#current_net:n643 n700 
run_justification -full_sequential -set { 516 1 436 1 } -verbose -store
#current_net:n561 n762 
run_justification -full_sequential -set { 319 0 487 1 } -verbose -store
#current_net:n490 n684 
run_justification -full_sequential -set { 312 0 555 1 } -verbose -store
#current_net:n487 n601 
run_justification -full_sequential -set { 313 0 429 1 } -verbose -store
#current_net:n708 n744 
run_justification -full_sequential -set { 566 0 503 0 } -verbose -store
#current_net:n613 n645 
run_justification -full_sequential -set { 489 1 184 1 } -verbose -store
#current_net:n705 n757 
run_justification -full_sequential -set { 549 1 501 0 } -verbose -store
#current_net:n605 n641 
run_justification -full_sequential -set { 501 0 430 1 } -verbose -store
#current_net:n641 n748 
run_justification -full_sequential -set { 469 1 430 1 } -verbose -store
#current_net:n702 n748 
run_justification -full_sequential -set { 488 0 315 0 } -verbose -store
#current_net:n704 n709 
run_justification -full_sequential -set { 534 1 434 0 } -verbose -store
#current_net:n585 n760 
run_justification -full_sequential -set { 501 0 461 0 } -verbose -store
#current_net:n641 n661 
run_justification -full_sequential -set { 534 1 486 0 } -verbose -store
#current_net:n585 n683 
run_justification -full_sequential -set { 554 0 504 1 } -verbose -store
#current_net:n590 n647 
run_justification -full_sequential -set { 318 0 430 1 } -verbose -store
#current_net:n489 n748 
run_justification -full_sequential -set { 504 1 434 0 } -verbose -store
#current_net:n647 n760 
run_justification -full_sequential -set { 313 0 435 1 } -verbose -store
#current_net:n708 n761 
run_justification -full_sequential -set { 486 0 436 1 } -verbose -store
#current_net:n683 n762 
run_justification -full_sequential -set { 469 1 488 0 } -verbose -store
#current_net:n702 n704 
run_justification -full_sequential -set { 534 1 548 0 } -verbose -store
#current_net:n585 n618 
run_justification -full_sequential -set { 319 0 501 0 } -verbose -store
#current_net:n490 n641 
run_justification -full_sequential -set { 504 1 431 1 } -verbose -store
#current_net:n647 n749 
run_justification -full_sequential -set { 461 0 428 1 } -verbose -store
#current_net:n661 n740 
run_justification -full_sequential -set { 318 0 501 0 } -verbose -store
#current_net:n489 n641 
run_justification -full_sequential -set { 485 1 430 1 } -verbose -store
#current_net:n681 n748 
run_justification -full_sequential -set { 531 1 488 0 } -verbose -store
#current_net:n583 n704 
run_justification -full_sequential -set { 531 1 461 0 } -verbose -store
#current_net:n583 n661 
run_justification -full_sequential -set { 482 0 184 1 } -verbose -store
#current_net:n679 n757 
run_justification -full_sequential -set { 534 1 469 1 } -verbose -store
#current_net:n585 n702 
run_justification -full_sequential -set { 549 1 566 0 } -verbose -store
#current_net:n605 n613 
run_justification -full_sequential -set { 534 1 488 0 } -verbose -store
#current_net:n585 n704 
run_justification -full_sequential -set { 469 1 313 0 } -verbose -store
#current_net:n702 n708 
run_justification -full_sequential -set { 482 0 488 0 } -verbose -store
#current_net:n679 n704 
run_justification -full_sequential -set { 487 1 447 0 } -verbose -store
#current_net:n684 n700 
run_justification -full_sequential -set { 310 1 436 1 } -verbose -store
#current_net:n484 n762 
run_justification -full_sequential -set { 516 1 434 0 } -verbose -store
#current_net:n561 n760 
run_justification -full_sequential -set { 482 0 485 1 } -verbose -store
#current_net:n679 n681 
run_justification -full_sequential -set { 482 0 469 1 } -verbose -store
#current_net:n679 n702 
run_justification -full_sequential -set { 310 1 469 1 } -verbose -store
#current_net:n484 n702 
run_justification -full_sequential -set { 319 0 516 1 } -verbose -store
#current_net:n490 n561 
run_justification -full_sequential -set { 461 0 469 1 } -verbose -store
#current_net:n661 n702 
run_justification -full_sequential -set { 501 0 503 0 } -verbose -store
#current_net:n641 n645 
run_justification -full_sequential -set { 482 0 315 0 } -verbose -store
#current_net:n679 n709 
run_justification -full_sequential -set { 503 0 470 0 } -verbose -store
#current_net:n645 n703 
run_justification -full_sequential -set { 531 1 429 1 } -verbose -store
#current_net:n583 n744 
run_justification -full_sequential -set { 566 0 482 0 } -verbose -store
#current_net:n613 n679 
run_justification -full_sequential -set { 310 1 313 0 } -verbose -store
#current_net:n484 n708 
run_justification -full_sequential -set { 486 0 313 0 } -verbose -store
#current_net:n683 n708 
run_justification -full_sequential -set { 469 1 433 1 } -verbose -store
#current_net:n702 n759 
run_justification -full_sequential -set { 531 1 548 0 } -verbose -store
#current_net:n583 n618 
run_justification -full_sequential -set { 548 0 429 1 } -verbose -store
#current_net:n618 n744 
run_justification -full_sequential -set { 486 0 433 1 } -verbose -store
#current_net:n683 n759 
run_justification -full_sequential -set { 310 1 501 0 } -verbose -store
#current_net:n484 n641 
run_justification -full_sequential -set { 567 1 485 1 } -verbose -store
#current_net:n615 n681 
run_justification -full_sequential -set { 319 0 461 0 } -verbose -store
#current_net:n490 n661 
run_justification -full_sequential -set { 568 0 469 1 } -verbose -store
#current_net:n619 n702 
run_justification -full_sequential -set { 503 0 313 0 } -verbose -store
#current_net:n645 n708 
run_justification -full_sequential -set { 549 1 430 1 } -verbose -store
#current_net:n605 n748 
run_justification -full_sequential -set { 549 1 434 0 } -verbose -store
#current_net:n605 n760 
run_justification -full_sequential -set { 501 0 469 1 } -verbose -store
#current_net:n641 n702 
run_justification -full_sequential -set { 548 0 315 0 } -verbose -store
#current_net:n618 n709 
run_justification -full_sequential -set { 313 0 428 1 } -verbose -store
#current_net:n708 n740 
run_justification -full_sequential -set { 311 0 433 1 } -verbose -store
#current_net:n485 n759 
run_justification -full_sequential -set { 516 1 531 1 } -verbose -store
#current_net:n561 n583 
run_justification -full_sequential -set { 319 0 501 0 } -verbose -store
#current_net:n490 n641 
run_justification -full_sequential -set { 482 0 470 0 } -verbose -store
#current_net:n679 n703 
run_justification -full_sequential -set { 516 1 435 1 } -verbose -store
#current_net:n561 n761 
run_justification -full_sequential -set { 184 1 436 1 } -verbose -store
#current_net:n757 n762 
run_justification -full_sequential -set { 555 1 488 0 } -verbose -store
#current_net:n601 n704 
run_justification -full_sequential -set { 315 0 430 1 } -verbose -store
#current_net:n709 n748 
run_justification -full_sequential -set { 531 1 487 1 } -verbose -store
#current_net:n583 n684 
run_justification -full_sequential -set { 461 0 486 0 } -verbose -store
#current_net:n661 n683 
run_justification -full_sequential -set { 554 0 428 1 } -verbose -store
#current_net:n590 n740 
run_justification -full_sequential -set { 312 0 447 0 } -verbose -store
#current_net:n487 n700 
run_justification -full_sequential -set { 429 1 430 1 } -verbose -store
#current_net:n744 n748 
run_justification -full_sequential -set { 470 0 431 1 } -verbose -store
#current_net:n703 n749 
run_justification -full_sequential -set { 447 0 431 1 } -verbose -store
#current_net:n700 n749 
run_justification -full_sequential -set { 470 0 435 1 } -verbose -store
#current_net:n703 n761 
run_justification -full_sequential -set { 503 0 185 1 } -verbose -store
#current_net:n645 n758 
run_justification -full_sequential -set { 310 1 312 0 } -verbose -store
#current_net:n484 n487 
run_justification -full_sequential -set { 548 0 489 1 } -verbose -store
#current_net:n618 n705 
run_justification -full_sequential -set { 516 1 469 1 } -verbose -store
#current_net:n561 n702 
run_justification -full_sequential -set { 461 0 431 1 } -verbose -store
#current_net:n661 n749 
run_justification -full_sequential -set { 488 0 436 1 } -verbose -store
#current_net:n704 n762 
run_justification -full_sequential -set { 486 0 431 1 } -verbose -store
#current_net:n683 n749 
run_justification -full_sequential -set { 311 0 482 0 } -verbose -store
#current_net:n485 n679 
run_justification -full_sequential -set { 470 0 434 0 } -verbose -store
#current_net:n703 n760 
run_justification -full_sequential -set { 482 0 435 1 } -verbose -store
#current_net:n679 n761 
run_justification -full_sequential -set { 555 1 504 1 } -verbose -store
#current_net:n601 n647 
run_justification -full_sequential -set { 567 1 434 0 } -verbose -store
#current_net:n615 n760 
run_justification -full_sequential -set { 310 1 435 1 } -verbose -store
#current_net:n484 n761 
run_justification -full_sequential -set { 516 1 555 1 } -verbose -store
#current_net:n561 n601 
run_justification -full_sequential -set { 486 0 470 0 } -verbose -store
#current_net:n683 n703 
run_justification -full_sequential -set { 502 1 185 1 } -verbose -store
#current_net:n643 n758 
run_justification -full_sequential -set { 184 1 434 0 } -verbose -store
#current_net:n757 n760 
run_justification -full_sequential -set { 311 0 504 1 } -verbose -store
#current_net:n485 n647 
run_justification -full_sequential -set { 487 1 431 1 } -verbose -store
#current_net:n684 n749 
run_justification -full_sequential -set { 502 1 486 0 } -verbose -store
#current_net:n643 n683 
run_justification -full_sequential -set { 315 0 185 1 } -verbose -store
#current_net:n709 n758 
run_justification -full_sequential -set { 549 1 428 1 } -verbose -store
#current_net:n605 n740 
run_justification -full_sequential -set { 469 1 435 1 } -verbose -store
#current_net:n702 n761 
run_justification -full_sequential -set { 434 0 435 1 } -verbose -store
#current_net:n760 n761 
run_justification -full_sequential -set { 428 1 184 1 } -verbose -store
#current_net:n740 n757 
run_justification -full_sequential -set { 482 0 488 0 } -verbose -store
#current_net:n679 n704 
run_justification -full_sequential -set { 315 0 433 1 } -verbose -store
#current_net:n709 n759 
run_justification -full_sequential -set { 486 0 428 1 } -verbose -store
#current_net:n683 n740 
run_justification -full_sequential -set { 311 0 313 0 } -verbose -store
#current_net:n485 n708 
run_justification -full_sequential -set { 447 0 434 0 } -verbose -store
#current_net:n700 n760 
run_justification -full_sequential -set { 318 0 502 1 } -verbose -store
#current_net:n489 n643 
run_justification -full_sequential -set { 534 1 482 0 } -verbose -store
#current_net:n585 n679 
run_justification -full_sequential -set { 503 0 461 0 } -verbose -store
#current_net:n645 n661 
run_justification -full_sequential -set { 501 0 313 0 } -verbose -store
#current_net:n641 n708 
run_justification -full_sequential -set { 534 1 433 1 } -verbose -store
#current_net:n585 n759 
run_justification -full_sequential -set { 549 1 428 1 } -verbose -store
#current_net:n605 n740 
run_justification -full_sequential -set { 566 0 487 1 } -verbose -store
#current_net:n613 n684 
run_justification -full_sequential -set { 428 1 435 1 } -verbose -store
#current_net:n740 n761 
run_justification -full_sequential -set { 488 0 434 0 } -verbose -store
#current_net:n704 n760 
run_justification -full_sequential -set { 504 1 435 1 } -verbose -store
#current_net:n647 n761 
run_justification -full_sequential -set { 549 1 485 1 } -verbose -store
#current_net:n605 n681 
run_justification -full_sequential -set { 311 0 433 1 } -verbose -store
#current_net:n485 n759 
run_justification -full_sequential -set { 310 1 428 1 } -verbose -store
#current_net:n484 n740 
run_justification -full_sequential -set { 428 1 433 1 } -verbose -store
#current_net:n740 n759 
run_justification -full_sequential -set { 318 0 501 0 } -verbose -store
#current_net:n489 n641 
run_justification -full_sequential -set { 531 1 489 1 } -verbose -store
#current_net:n583 n705 
run_justification -full_sequential -set { 429 1 431 1 } -verbose -store
#current_net:n744 n749 
run_justification -full_sequential -set { 310 1 315 0 } -verbose -store
#current_net:n484 n709 
run_justification -full_sequential -set { 311 0 315 0 } -verbose -store
#current_net:n485 n709 
run_justification -full_sequential -set { 311 0 312 0 } -verbose -store
#current_net:n485 n487 
run_justification -full_sequential -set { 488 0 435 1 } -verbose -store
#current_net:n704 n761 
run_justification -full_sequential -set { 482 0 435 1 } -verbose -store
#current_net:n679 n761 
run_justification -full_sequential -set { 567 1 487 1 } -verbose -store
#current_net:n615 n684 
run_justification -full_sequential -set { 531 1 461 0 } -verbose -store
#current_net:n583 n661 
run_justification -full_sequential -set { 310 1 434 0 } -verbose -store
#current_net:n484 n760 
run_justification -full_sequential -set { 311 0 469 1 } -verbose -store
#current_net:n485 n702 
run_justification -full_sequential -set { 311 0 470 0 } -verbose -store
#current_net:n485 n703 
run_justification -full_sequential -set { 516 1 184 1 } -verbose -store
#current_net:n561 n757 
run_justification -full_sequential -set { 482 0 313 0 } -verbose -store
#current_net:n679 n708 
run_justification -full_sequential -set { 531 1 555 1 } -verbose -store
#current_net:n583 n601 
run_justification -full_sequential -set { 503 0 429 1 } -verbose -store
#current_net:n645 n744 
run_justification -full_sequential -set { 502 1 486 0 } -verbose -store
#current_net:n643 n683 
run_justification -full_sequential -set { 501 0 504 1 } -verbose -store
#current_net:n641 n647 
run_justification -full_sequential -set { 312 0 549 1 } -verbose -store
#current_net:n487 n605 
run_justification -full_sequential -set { 548 0 436 1 } -verbose -store
#current_net:n618 n762 
run_justification -full_sequential -set { 312 0 436 1 } -verbose -store
#current_net:n487 n762 
run_justification -full_sequential -set { 566 0 501 0 } -verbose -store
#current_net:n613 n641 
run_justification -full_sequential -set { 447 0 488 0 } -verbose -store
#current_net:n700 n704 
run_justification -full_sequential -set { 469 1 433 1 } -verbose -store
#current_net:n702 n759 
run_justification -full_sequential -set { 482 0 430 1 } -verbose -store
#current_net:n679 n748 
run_justification -full_sequential -set { 486 0 487 1 } -verbose -store
#current_net:n683 n684 
run_justification -full_sequential -set { 319 0 434 0 } -verbose -store
#current_net:n490 n760 
run_justification -full_sequential -set { 319 0 566 0 } -verbose -store
#current_net:n490 n613 
run_justification -full_sequential -set { 502 1 470 0 } -verbose -store
#current_net:n643 n703 
run_justification -full_sequential -set { 310 1 531 1 } -verbose -store
#current_net:n484 n583 
run_justification -full_sequential -set { 318 0 470 0 } -verbose -store
#current_net:n489 n703 
run_justification -full_sequential -set { 482 0 313 0 } -verbose -store
#current_net:n679 n708 
run_justification -full_sequential -set { 555 1 431 1 } -verbose -store
#current_net:n601 n749 
run_justification -full_sequential -set { 568 0 503 0 } -verbose -store
#current_net:n619 n645 
run_justification -full_sequential -set { 470 0 185 1 } -verbose -store
#current_net:n703 n758 
run_justification -full_sequential -set { 555 1 184 1 } -verbose -store
#current_net:n601 n757 
run_justification -full_sequential -set { 486 0 434 0 } -verbose -store
#current_net:n683 n760 
run_justification -full_sequential -set { 461 0 487 1 } -verbose -store
#current_net:n661 n684 
run_justification -full_sequential -set { 318 0 501 0 } -verbose -store
#current_net:n489 n641 
run_justification -full_sequential -set { 516 1 504 1 } -verbose -store
#current_net:n561 n647 
run_justification -full_sequential -set { 531 1 434 0 } -verbose -store
#current_net:n583 n760 
run_justification -full_sequential -set { 469 1 315 0 } -verbose -store
#current_net:n702 n709 
run_justification -full_sequential -set { 428 1 436 1 } -verbose -store
#current_net:n740 n762 
run_justification -full_sequential -set { 568 0 315 0 } -verbose -store
#current_net:n619 n709 
run_justification -full_sequential -set { 488 0 430 1 } -verbose -store
#current_net:n704 n748 
run_justification -full_sequential -set { 487 1 469 1 } -verbose -store
#current_net:n684 n702 
run_justification -full_sequential -set { 485 1 434 0 } -verbose -store
#current_net:n681 n760 
run_justification -full_sequential -set { 318 0 555 1 } -verbose -store
#current_net:n489 n601 
run_justification -full_sequential -set { 502 1 504 1 } -verbose -store
#current_net:n643 n647 
run_justification -full_sequential -set { 516 1 431 1 } -verbose -store
#current_net:n561 n749 
run_justification -full_sequential -set { 555 1 488 0 } -verbose -store
#current_net:n601 n704 
run_justification -full_sequential -set { 482 0 487 1 } -verbose -store
#current_net:n679 n684 
run_justification -full_sequential -set { 185 1 436 1 } -verbose -store
#current_net:n758 n762 
run_justification -full_sequential -set { 461 0 447 0 } -verbose -store
#current_net:n661 n700 
run_justification -full_sequential -set { 470 0 428 1 } -verbose -store
#current_net:n703 n740 
run_justification -full_sequential -set { 482 0 185 1 } -verbose -store
#current_net:n679 n758 
run_justification -full_sequential -set { 554 0 434 0 } -verbose -store
#current_net:n590 n760 
run_justification -full_sequential -set { 461 0 436 1 } -verbose -store
#current_net:n661 n762 
run_justification -full_sequential -set { 429 1 433 1 } -verbose -store
#current_net:n744 n759 
run_justification -full_sequential -set { 447 0 428 1 } -verbose -store
#current_net:n700 n740 
run_justification -full_sequential -set { 502 1 486 0 } -verbose -store
#current_net:n643 n683 
run_justification -full_sequential -set { 566 0 436 1 } -verbose -store
#current_net:n613 n762 
run_justification -full_sequential -set { 566 0 489 1 } -verbose -store
#current_net:n613 n705 
run_justification -full_sequential -set { 516 1 429 1 } -verbose -store
#current_net:n561 n744 
run_justification -full_sequential -set { 534 1 501 0 } -verbose -store
#current_net:n585 n641 
run_justification -full_sequential -set { 566 0 485 1 } -verbose -store
#current_net:n613 n681 
run_justification -full_sequential -set { 503 0 313 0 } -verbose -store
#current_net:n645 n708 
run_justification -full_sequential -set { 487 1 428 1 } -verbose -store
#current_net:n684 n740 
run_justification -full_sequential -set { 318 0 470 0 } -verbose -store
#current_net:n489 n703 
run_justification -full_sequential -set { 549 1 313 0 } -verbose -store
#current_net:n605 n708 
run_justification -full_sequential -set { 461 0 489 1 } -verbose -store
#current_net:n661 n705 
run_justification -full_sequential -set { 566 0 315 0 } -verbose -store
#current_net:n613 n709 
run_justification -full_sequential -set { 310 1 312 0 } -verbose -store
#current_net:n484 n487 
run_justification -full_sequential -set { 482 0 487 1 } -verbose -store
#current_net:n679 n684 
run_justification -full_sequential -set { 504 1 487 1 } -verbose -store
#current_net:n647 n684 
run_justification -full_sequential -set { 566 0 568 0 } -verbose -store
#current_net:n613 n619 
run_justification -full_sequential -set { 319 0 447 0 } -verbose -store
#current_net:n490 n700 
run_justification -full_sequential -set { 310 1 315 0 } -verbose -store
#current_net:n484 n709 
run_justification -full_sequential -set { 487 1 436 1 } -verbose -store
#current_net:n684 n762 
run_justification -full_sequential -set { 312 0 431 1 } -verbose -store
#current_net:n487 n749 
run_justification -full_sequential -set { 486 0 434 0 } -verbose -store
#current_net:n683 n760 
run_justification -full_sequential -set { 482 0 428 1 } -verbose -store
#current_net:n679 n740 
run_justification -full_sequential -set { 319 0 435 1 } -verbose -store
#current_net:n490 n761 
run_justification -full_sequential -set { 567 1 429 1 } -verbose -store
#current_net:n615 n744 
run_justification -full_sequential -set { 482 0 428 1 } -verbose -store
#current_net:n679 n740 
run_justification -full_sequential -set { 312 0 429 1 } -verbose -store
#current_net:n487 n744 
run_justification -full_sequential -set { 311 0 549 1 } -verbose -store
#current_net:n485 n605 
run_justification -full_sequential -set { 534 1 447 0 } -verbose -store
#current_net:n585 n700 
run_justification -full_sequential -set { 310 1 487 1 } -verbose -store
#current_net:n484 n684 
run_justification -full_sequential -set { 184 1 435 1 } -verbose -store
#current_net:n757 n761 
run_justification -full_sequential -set { 566 0 461 0 } -verbose -store
#current_net:n613 n661 
run_justification -full_sequential -set { 534 1 485 1 } -verbose -store
#current_net:n585 n681 
run_justification -full_sequential -set { 485 1 447 0 } -verbose -store
#current_net:n681 n700 
run_justification -full_sequential -set { 310 1 430 1 } -verbose -store
#current_net:n484 n748 
run_justification -full_sequential -set { 428 1 430 1 } -verbose -store
#current_net:n740 n748 
run_justification -full_sequential -set { 488 0 433 1 } -verbose -store
#current_net:n704 n759 
run_justification -full_sequential -set { 531 1 436 1 } -verbose -store
#current_net:n583 n762 
run_justification -full_sequential -set { 531 1 502 1 } -verbose -store
#current_net:n583 n643 
run_justification -full_sequential -set { 534 1 447 0 } -verbose -store
#current_net:n585 n700 
run_justification -full_sequential -set { 318 0 566 0 } -verbose -store
#current_net:n489 n613 
run_justification -full_sequential -set { 486 0 489 1 } -verbose -store
#current_net:n683 n705 
run_justification -full_sequential -set { 503 0 504 1 } -verbose -store
#current_net:n645 n647 
run_justification -full_sequential -set { 312 0 433 1 } -verbose -store
#current_net:n487 n759 
run_justification -full_sequential -set { 312 0 549 1 } -verbose -store
#current_net:n487 n605 
run_justification -full_sequential -set { 548 0 485 1 } -verbose -store
#current_net:n618 n681 
run_justification -full_sequential -set { 503 0 461 0 } -verbose -store
#current_net:n645 n661 
run_justification -full_sequential -set { 319 0 184 1 } -verbose -store
#current_net:n490 n757 
run_justification -full_sequential -set { 311 0 319 0 } -verbose -store
#current_net:n485 n490 
run_justification -full_sequential -set { 548 0 185 1 } -verbose -store
#current_net:n618 n758 
run_justification -full_sequential -set { 312 0 566 0 } -verbose -store
#current_net:n487 n613 
run_justification -full_sequential -set { 566 0 434 0 } -verbose -store
#current_net:n613 n760 
run_justification -full_sequential -set { 567 1 489 1 } -verbose -store
#current_net:n615 n705 
run_justification -full_sequential -set { 531 1 185 1 } -verbose -store
#current_net:n583 n758 
run_justification -full_sequential -set { 534 1 488 0 } -verbose -store
#current_net:n585 n704 
run_justification -full_sequential -set { 489 1 313 0 } -verbose -store
#current_net:n705 n708 
run_justification -full_sequential -set { 531 1 566 0 } -verbose -store
#current_net:n583 n613 
run_justification -full_sequential -set { 430 1 185 1 } -verbose -store
#current_net:n748 n758 
run_justification -full_sequential -set { 485 1 431 1 } -verbose -store
#current_net:n681 n749 
run_justification -full_sequential -set { 501 0 313 0 } -verbose -store
#current_net:n641 n708 
run_justification -full_sequential -set { 501 0 184 1 } -verbose -store
#current_net:n641 n757 
run_justification -full_sequential -set { 555 1 470 0 } -verbose -store
#current_net:n601 n703 
run_justification -full_sequential -set { 311 0 486 0 } -verbose -store
#current_net:n485 n683 
run_justification -full_sequential -set { 501 0 431 1 } -verbose -store
#current_net:n641 n749 
run_justification -full_sequential -set { 503 0 447 0 } -verbose -store
#current_net:n645 n700 
run_justification -full_sequential -set { 516 1 488 0 } -verbose -store
#current_net:n561 n704 
run_justification -full_sequential -set { 554 0 555 1 } -verbose -store
#current_net:n590 n601 
run_justification -full_sequential -set { 567 1 487 1 } -verbose -store
#current_net:n615 n684 
run_justification -full_sequential -set { 531 1 447 0 } -verbose -store
#current_net:n583 n700 
run_justification -full_sequential -set { 503 0 315 0 } -verbose -store
#current_net:n645 n709 
run_justification -full_sequential -set { 482 0 447 0 } -verbose -store
#current_net:n679 n700 
run_justification -full_sequential -set { 469 1 184 1 } -verbose -store
#current_net:n702 n757 
run_justification -full_sequential -set { 486 0 185 1 } -verbose -store
#current_net:n683 n758 
run_justification -full_sequential -set { 501 0 469 1 } -verbose -store
#current_net:n641 n702 
run_justification -full_sequential -set { 548 0 436 1 } -verbose -store
#current_net:n618 n762 
run_justification -full_sequential -set { 318 0 436 1 } -verbose -store
#current_net:n489 n762 
run_justification -full_sequential -set { 504 1 429 1 } -verbose -store
#current_net:n647 n744 
run_justification -full_sequential -set { 567 1 429 1 } -verbose -store
#current_net:n615 n744 
run_justification -full_sequential -set { 488 0 433 1 } -verbose -store
#current_net:n704 n759 
run_justification -full_sequential -set { 531 1 549 1 } -verbose -store
#current_net:n583 n605 
run_justification -full_sequential -set { 319 0 489 1 } -verbose -store
#current_net:n490 n705 
run_justification -full_sequential -set { 447 0 313 0 } -verbose -store
#current_net:n700 n708 
run_justification -full_sequential -set { 312 0 318 0 } -verbose -store
#current_net:n487 n489 
run_justification -full_sequential -set { 310 1 501 0 } -verbose -store
#current_net:n484 n641 
run_justification -full_sequential -set { 516 1 502 1 } -verbose -store
#current_net:n561 n643 
run_justification -full_sequential -set { 548 0 430 1 } -verbose -store
#current_net:n618 n748 
run_justification -full_sequential -set { 567 1 315 0 } -verbose -store
#current_net:n615 n709 
run_justification -full_sequential -set { 461 0 436 1 } -verbose -store
#current_net:n661 n762 
run_justification -full_sequential -set { 310 1 185 1 } -verbose -store
#current_net:n484 n758 
run_justification -full_sequential -set { 461 0 489 1 } -verbose -store
#current_net:n661 n705 
run_justification -full_sequential -set { 311 0 534 1 } -verbose -store
#current_net:n485 n585 
run_justification -full_sequential -set { 318 0 485 1 } -verbose -store
#current_net:n489 n681 
run_justification -full_sequential -set { 469 1 185 1 } -verbose -store
#current_net:n702 n758 
run_justification -full_sequential -set { 554 0 487 1 } -verbose -store
#current_net:n590 n684 
run_justification -full_sequential -set { 548 0 461 0 } -verbose -store
#current_net:n618 n661 
run_justification -full_sequential -set { 554 0 503 0 } -verbose -store
#current_net:n590 n645 
run_justification -full_sequential -set { 430 1 185 1 } -verbose -store
#current_net:n748 n758 
run_justification -full_sequential -set { 568 0 433 1 } -verbose -store
#current_net:n619 n759 
run_justification -full_sequential -set { 548 0 470 0 } -verbose -store
#current_net:n618 n703 
run_justification -full_sequential -set { 486 0 489 1 } -verbose -store
#current_net:n683 n705 
run_justification -full_sequential -set { 504 1 486 0 } -verbose -store
#current_net:n647 n683 
report_patterns -internal -all 
exit 
