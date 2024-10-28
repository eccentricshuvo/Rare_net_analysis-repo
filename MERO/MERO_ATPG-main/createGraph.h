//
// Created by m588h354 on 10/23/24.
//

#include "graph.h"
array_t* convertGraph2Verilog_comb(graph* G, FILE* fptr, int hier, int bgated, char *dumpDir, graph *G_original);
void convertGraph2Verilog(graph* G, FILE* fptr, int hier, int bgated);
int find_first_digit (char* strName);
array_t* string_strip(char *inputString, char *delimiter);
