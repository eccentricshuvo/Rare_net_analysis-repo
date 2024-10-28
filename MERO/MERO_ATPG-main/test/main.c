//
// Created by m588h354 on 10/23/24.
//

#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include<stdbool.h>
#include<math.h>
#include "array.h"
#include "graph.h"
//#include "scoap.h"
#include "mero.h"
#include<ctype.h>
#include <limits.h>
#include <time.h>

int debug = 1;


int main(int argc,char *argv[]) {

    char *inputFile, *dumpDir, *moduleName, *scanFlag, *libName;
    char *verboseFlag, *threshold;
    char *tFileFlag;
    char *libFile;
    array_t *topoArr;
    array_t *rare_nets, *valid_rare_nets;

    inputFile           = ((char **)argv)[1];
    libName             = ((char **)argv)[2];
    moduleName          = ((char **)argv)[3];
    dumpDir             = ((char **)argv)[4];
    scanFlag            = ((char **)argv)[5];
    verboseFlag         = ((char **)argv)[6];
    threshold           = ((char **)argv)[7];
    tFileFlag           = ((char **)argv)[8];


    int primInCnt = 0;

    printf("INFO-Input file for MERO_v2: %s\n", inputFile);
    graph* G;
    G = createGraphFromVerilog(inputFile, NULL, moduleName, &primInCnt, NULL, libName);
    dumpGraphStr(G, dumpDir);
    printf("DUMPING DONE.....\n");
    topoArr = getTopoOrder(G, atoi(scanFlag));
    // print toptArr
    printf("INFO-Total number of nodes in topological order: %d\n", array_n(topoArr));

    rare_nets = get_scoap_data(G, dumpDir, scanFlag, verboseFlag, topoArr, tFileFlag, rare_nets, threshold);
    if(array_n(rare_nets) == 0)
        {
            printf("!!WARNING: No rare nets.\n");
            exit(0);
        }
    printf("INFO-Total rare nets: %d\n", array_n(rare_nets));

    return 0;
    }
