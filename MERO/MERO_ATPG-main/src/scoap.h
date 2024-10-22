/**************************************************************************************
 * Author: Pravin gaikwad
 * Date: 02/07/2020
 *
 * Description:
 *
 * Combinational controllability features are obtain by traversing the graph from primary 
 * inputs to primary outputs and observability features are obtained by traversing from 
 * outputs to inputs. All sequnetial elements are considered as scan flip flops. Tool 
 * supports feature calculations for some of the LEDA cells.  
 *************************************************************************************/

#include "graph.h"
// #include "array.h"
// #include<stdio.h>
// #include<string.h>
// #include<stdlib.h>
// #include<stdbool.h>
// #include<math.h>
// #include<ctype.h>
// #include <limits.h>
// #include <time.h>

//basic gate controllability declarations
void controllability_and(int cc0_a, int cc1_a, int cc0_b, int cc1_b, int *cc0, int *cc1);
void controllability_or(int cc0_a, int cc1_a, int cc0_b, int cc1_b, int *cc0, int *cc1);
void controllability_xor(int cc0_a, int cc1_a, int cc0_b, int cc1_b, int *cc0, int *cc1);
void controllability_xnor(int cc0_a, int cc1_a, int cc0_b, int cc1_b, int *cc0, int *cc1);
void controllability_nand(int cc0_a, int cc1_a, int cc0_b, int cc1_b, int *cc0, int *cc1);
void controllability_nor(int cc0_a, int cc1_a, int cc0_b, int cc1_b, int *cc0, int *cc1);
void controllability_not(int cc0_a, int cc1_a, int *cc0, int *cc1);

void update_controllability(graph* G, int index, array_t* fbEdges, int *unknown_cc0, int *unknown_cc1, char *inputFileLocation);
void evaluate_controllability_scan(graph* G, char *inputFileLocation, int verboseFlag, int scanFlag);
void controllability(graph* G, char *inputFileLocation, int scanFlag, int verboseFlag);

//basic gate observability declarations
void observability_not(int output_obs, int *input);
void observability_and(int output_obs, int *ip_a_obs, int *ip_b_obs, int cc0_a, int cc1_a, int cc0_b, int cc1_b);
void observability_or(int output_obs, int *ip_a_obs, int *ip_b_obs, int cc0_a, int cc1_a, int cc0_b, int cc1_b);
void observability_xor(int output_obs, int *ip_a_obs, int *ip_b_obs, int cc0_a, int cc1_a, int cc0_b, int cc1_b);
void observability_xnor(int output_obs, int *ip_a_obs, int *ip_b_obs, int cc0_a, int cc1_a, int cc0_b, int cc1_b);
void update_observability(vertex* vert, int *counter, char* inputFileLocation);
void observability(graph *G, char *inputFileLocation, int scanFlag, array_t* sorted);



