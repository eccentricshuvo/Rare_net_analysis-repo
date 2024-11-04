#!/bin/bash

gcc -o main.o main.c createGraph.c array.c mero.c vipr_scoap.c -lm
./main.o dir/c1908_syn.v skywater c1908 ./dir 1 0 0.5 0

