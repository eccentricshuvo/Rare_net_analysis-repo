/**
 * @file main.c
 * @author pravin.gaikwd@ufl.edu
 * @brief 
 * @version 0.1
 * @date 2021-08-02
 * 
 * @copyright Copyright (c) 2021 \n
 * MERO : Multiple Excitation of Rare Occurence \n
 * Copyright: University of Florida, Gainesville, FL, USA \n
 * This document is copyright protected and property of the above mentioned entity. 
 * Any disclosure, alteration, re-distribution, or commercial use is NOT allowed without 
 * the consent of the developers and/or the entity mentioned above. \n
 * For copyright issues, contact information can be found in the following site.
 * Link: http://swarup.ece.ufl.edu/

 * 
 */

#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include<stdbool.h>
#include<math.h>
#include "array.h"
#include "graph.h"
#include<ctype.h>
#include <limits.h>
#include <time.h>
// #include <unistd.h>

/**
 * start    - start time for any function execution 
 */
clock_t start;
/**
 * end      - end time for any function execution
 */
clock_t end;
/**
 * debug    - to debug the tool
 */
//int debug = 0;
int debug = 1;

/**
 * @brief 
 * 
 * @param argc - argument count
 * @param argv - inputFile dumpDir exeDir moduleName cktType scanFlag libName verboseFlag threshold ndetect trigN trojN clkN clkV wrst rstN rstV tFileFlag tFile states randomness validateTrojansFlag justCov onlyVec inpVecFile libFile justTroj justOptCov postOpt tmaxSource ndetectApp codeBase compareiVeriFlag graphStruct partFlag partNo efforts actwoPI swThreshold  \n
 * 
 * @note Provide following set of arguments in same order.
<table>
<caption id="multi_row">MERS Input Parameters</caption>
<tr><th>No  <th>Parameter                           <th>    Explaination
<tr><td rowspan="1"> 1. <td> inputFile              <td>    Flatttened gate-level verilog netlist.      
<tr><td rowspan="1"> 2. <td> dumpDir                <td>    Output directory to store all the results for current file.
<tr><td rowspan="1"> 3. <td> exeDir                 <td>    executables directory. Provide location of all executable files required for MERS.
<tr><td rowspan="1"> 4. <td> moduleName             <td>    Top module of the design.
<tr><td rowspan="1"> 5. <td> cktType                <td>    Type of circuit {comb/seq}
<tr><td rowspan="1"> 6. <td> scanFlag               <td>    scan flag. Set it to 1 as current iteration of the tool supports scan=1.
<tr><td rowspan="1"> 7. <td> libName                <td>    Library name {"LEDA", "skywater"}. Current iteration supports mentioned libraries.
<tr><td rowspan="1"> 8. <td> verboseFlag            <td>    quiet/verbose flag.
<tr><td rowspan="1"> 9. <td> threshold              <td>    Threshold iun range [0-1] to select rare nets.
<tr><td rowspan="1"> 10. <td> ndetect               <td>    N-detect decides how many times rare net needs to get excited to its rare value.
<tr><td rowspan="1"> 11. <td> trigN                 <td>    Number of triggers per Trojan.
<tr><td rowspan="1"> 12. <td> trojN                 <td>    Number of virtual Trojans to be inserted in the design.
<tr><td rowspan="1"> 13. <td> clkN                  <td>    Clock name for designs with clock.
<tr><td rowspan="1"> 14. <td> clkV                  <td>    Off-state clock value.
<tr><td rowspan="1"> 15. <td> wrst                  <td>    Reset flag. {1: use reset, 0:do not use reset}
<tr><td rowspan="1"> 16. <td> rstN                  <td>    Reset name for designs with reset.
<tr><td rowspan="1"> 17. <td> rstV                  <td>    Off-state reset value.
<tr><td rowspan="1"> 18. <td> tFileFlag             <td>    Flag to provide alredy present Trojan file. {1:Provide Trojan file, 0:Trojan file will get generated}.
<tr><td rowspan="1"> 19. <td> tFile                 <td>    Trojan file in expected format.
<tr><td rowspan="1"> 20. <td> states                <td>    Number of states for Trojan.
<tr><td rowspan="1"> 21. <td> randomness            <td>    Randomnes parameter. {-1:time base, 0:systmatic, seed: seed based}.
<tr><td rowspan="1"> 22. <td> validateTrojansFlag   <td>    Trojan validation flag. {1:validate Trojans, 0: do not validate}.
<tr><td rowspan="1"> 23. <td> justCov               <td>    Just perform coverage analysis flag.
<tr><td rowspan="1"> 24. <td> onlyVec               <td>    Vector file type. {1:file contains only vectors, 0:vectors with expected hit nets}.
<tr><td rowspan="1"> 25. <td> inpVecFile            <td>    Vector file with its path.
<tr><td rowspan="1"> 26. <td> libFile               <td>    Library file if working with separate reduce library file.
<tr><td rowspan="1"> 27. <td> justTroj              <td>    Flag to insert just Trojans.
<tr><td rowspan="1"> 28. <td> justOptCov            <td>    Flag to perform only optimization and coverage.
<tr><td rowspan="1"> 29. <td> postOpt               <td>    Flag to perfrom post optimization.
<tr><td rowspan="1"> 30. <td> tmaxSource            <td>    Path to tetramax source file.
<tr><td rowspan="1"> 31. <td> ndetectApp            <td>    n-detect optimization
<tr><td rowspan="1"> 32. <td> codeBase              <td>    code base to compare with iVerilog simulation.
<tr><td rowspan="1"> 33. <td> compareiVeriFlag      <td>    Flag to compare simulation with iVerilog simulation.
</table>
 * @note This is the main executable to run MERO flow. 

 * @return All the intermediate/final set of files are dumped in output directory.
 */

int main(int argc,char *argv[]) {

    graph *G;
    int primInCnt = 0;
    char *inputFile, *dumpDir, *exeDir, *moduleName, *cktType, *scanFlag, *libName;
    char *verboseFlag, *threshold, *ndetect, *trigN, *trojN, *clkN, *clkV, *wrst;
    char *rstN, *rstV, *tFileFlag, *tFile, *states, *inpVecFile, *mscPath, *mscAlgo;
    char *libFile, *codeBase, *compareiVeriFlag, *tmaxSource, *ndetectApp, *graphStruct;
    char *wTmax;

    int validateTrojansFlag, justCov, onlyVec, exhaustive, sat, justTroj, justOptCov, postOpt, firstErrVec=-1;

    char *randomness;

    double troj_val_time=0, graph_creation_time=0, mero_opt_time=0, mero_tcov_time=0;
    
    array_t *topoArr;
    array_t *rare_nets, *valid_rare_nets;

    array_t *excite_0_edges = array_alloc(edge*, 1);
    array_t *excite_1_edges = array_alloc(edge*, 1);

    array_t *payloads = array_alloc(edge*, 1);
    array_t* triggers = array_alloc(array_t*, 1);

    array_t *valid_payloads = array_alloc(edge*, 1);
    array_t* valid_triggers = array_alloc(array_t*, 1);

    array_t *justified_payloads = array_alloc(edge*, 1);
    array_t* justified_triggers = array_alloc(array_t*, 1);

    array_t* sorted_valid_rare;
            

    //if( argc < 35 ) {
    if( argc < 35) {
        printf("Usage: ./a.out inputFile dumpDir exeDir moduleName cktType scanFlag libName verboseFlag threshold ndetect trigN trojN clkN clkV wrst rstN rstV tFileFlag tFile states randomness validateTrojansFlag justCov onlyVec inpVecFile libFile justTroj justOptCov postOpt tmaxSource ndetectApp codeBase compareiVeriFlag graphStruct wTmax\n");
        exit(0);
    }

    inputFile           = ((char **)argv)[1];
    dumpDir             = ((char **)argv)[2];
    exeDir              = ((char **)argv)[3];
	moduleName          = ((char **)argv)[4];
    cktType             = ((char **)argv)[5];
    scanFlag            = ((char **)argv)[6];
    libName             = ((char **)argv)[7];
    verboseFlag         = ((char **)argv)[8];

    threshold           = ((char **)argv)[9];
    ndetect             = ((char **)argv)[10];
    trigN               = ((char **)argv)[11];
    trojN               = ((char **)argv)[12];
    clkN                = ((char **)argv)[13];
    clkV                = ((char **)argv)[14];
    wrst                = ((char **)argv)[15];
    rstN                = ((char **)argv)[16];
    rstV                = ((char **)argv)[17];
    tFileFlag           = ((char **)argv)[18];
    tFile               = ((char **)argv)[19];
    states              = ((char **)argv)[20];
    randomness          = ((char **)argv)[21];
    validateTrojansFlag = atoi(((char **)argv)[22]);

    justCov             = atoi(((char **)argv)[23]);
    onlyVec             = atoi(((char **)argv)[24]);
    inpVecFile          = ((char **)argv)[25];
    
    libFile             = ((char **)argv)[26];
    justTroj            = atoi(((char **)argv)[27]);
    justOptCov          = atoi(((char **)argv)[28]);

    postOpt             = atoi(((char **)argv)[29]);
    tmaxSource          = ((char **)argv)[30];
    ndetectApp          = ((char **)argv)[31];
    codeBase            = ((char **)argv)[32];
    compareiVeriFlag    = ((char **)argv)[33];

    graphStruct         = ((char **)argv)[34];
    wTmax               = ((char **)argv)[35];

    
    if(strstr(states,"0"))
        states = "1";
    
    if(debug)
        printf("INFO-Input file for MERO_v2: %s\n", inputFile);
    
    start = clock();	
    if(atoi(graphStruct) == 0)
    {
        G = createGraphFromVerilog(inputFile, NULL, moduleName, &primInCnt, NULL, libName);
        dumpGraphStr(G, dumpDir);
    }
        
    else
    {
        char *graphStrName;
        if(asprintf(&graphStrName, "%s/graphStructure.txt", dumpDir) == -1)
        {
            printf("ERROR: malloc error for graphStructure file name.\n");
            exit(0);
        }

        G = createGraphFromStructure(graphStrName, moduleName, libName);
        free(graphStrName);
    }    
    end = clock();
	
    graph_creation_time = ((double) (end - start)) / CLOCKS_PER_SEC;

    printf("INFO: Time for graph generation: %f sec\n", graph_creation_time);

    start = clock();	

    topoArr = getTopoOrder(G, atoi(scanFlag));
    
    //function to dump basic design information
    dump_design_details(G, dumpDir);

    char *paraFileName = (char*)malloc(sizeof(char)*10000);
    if(asprintf(&paraFileName, "%s/paramters.txt", dumpDir) == -1)
    {
        printf("ERROR: malloc error for paramters file name.\n");
        exit(0);
    }
    FILE *paraHandle = fopen(paraFileName, "w");
    fprintf(paraHandle, "==============================================================\n");
    for(int i=0; i<argc; i++)
    {
        fprintf(paraHandle, "%d: %s \n", i, ((char **)argv)[i]);        
    }
    fprintf(paraHandle, "\n");
    fprintf(paraHandle, "==============================================================\n");   
    fprintf(paraHandle, "inputFile              : %s\n", inputFile);
    fprintf(paraHandle, "dumpDir                : %s\n", dumpDir);
    fprintf(paraHandle, "exeDir                 : %s\n", exeDir);
    fprintf(paraHandle, "moduleName             : %s\n", moduleName);
    fprintf(paraHandle, "cktType                : %s\n", cktType);
    fprintf(paraHandle, "scanFlag               : %s\n", scanFlag);
    fprintf(paraHandle, "libName                : %s\n", libName);
    fprintf(paraHandle, "verboseFlag            : %s\n", verboseFlag);
    fprintf(paraHandle, "threshold              : %s\n", threshold);
    fprintf(paraHandle, "ndetect                : %s\n", ndetect);
    fprintf(paraHandle, "trigN                  : %s\n", trigN);
    fprintf(paraHandle, "trojN                  : %s\n", trojN);
    fprintf(paraHandle, "clkN                   : %s\n", clkN);
    fprintf(paraHandle, "clkV                   : %s\n", clkV);
    fprintf(paraHandle, "wrst                   : %s\n", wrst);
    fprintf(paraHandle, "rstN                   : %s\n", rstN);
    fprintf(paraHandle, "rstV                   : %s\n", rstV);
    fprintf(paraHandle, "tFileFlag              : %s\n", tFileFlag);
    fprintf(paraHandle, "tFile                  : %s\n", tFile);
    fprintf(paraHandle, "randomness             : %s\n", randomness);
    fprintf(paraHandle, "validateTrojansFlag    : %d\n", validateTrojansFlag);
    fprintf(paraHandle, "justCov                : %d\n", justCov);
    fprintf(paraHandle, "onlyVec                : %d\n", onlyVec);
    fprintf(paraHandle, "inpVecFile             : %s\n", inpVecFile);
    fprintf(paraHandle, "libFile                : %s\n", libFile);
    fprintf(paraHandle, "justTroj               : %d\n", justTroj);
    fprintf(paraHandle, "justOptCov             : %d\n", justOptCov);
    fprintf(paraHandle, "postOpt                : %d\n", postOpt);
    fprintf(paraHandle, "ndetectApp             : %s\n", ndetectApp);

    fprintf(paraHandle, "codeBase               : %s\n", codeBase);
    fprintf(paraHandle, "compareiVeriFlag       : %s\n", compareiVeriFlag);
    fprintf(paraHandle, "graphStruct            : %s\n", graphStruct);
    fprintf(paraHandle, "wTmax                  : %s\n", wTmax);
    
    fclose(paraHandle);
    free(paraFileName);

    char *opFileName;
    if(asprintf(&opFileName, "%s/results_%s_%s.txt", dumpDir, ndetect, trigN)==-1)    
    {
        printf("ERROR: malloc error for results file name.\n");
        exit(0);
    }
    //remove results file if already present as we are appending data
    if( access( opFileName, F_OK ) == 0 ) {
        // file exists  --> remove
        if(remove(opFileName) != 0)
            printf("!!WARNING: Can't remove results file.\n");
    }
    free(opFileName);

    char *simMissFileName;
    if(asprintf(&simMissFileName, "%s/sim_error_%s_%s.txt", dumpDir, ndetect, trigN)==-1)
    {
        printf("ERROR: malloc error in main.c\n");
        exit(0);
    }
    //remove primitive file if already present as we are appending data
    if( access( simMissFileName, F_OK ) == 0 ) {
        // file exists  --> remove
        if(remove(simMissFileName) != 0)
            printf("!!WARNING: Can't remove error file.\n");
    }
    free(simMissFileName);

    char *errVecFileName;
    if(asprintf(&errVecFileName, "%s/sim_error_vectors%s_%s.txt", dumpDir, ndetect, trigN) == -1)
    {
        printf("ERROR: malloc error in main.c\n");
        exit(0);
    }
    if( access( errVecFileName, F_OK ) == 0 ) {
        // file exists  --> remove
        if(remove(errVecFileName) != 0)
            printf("!!WARNING: Can't remove error vec file.\n");
    }
    free(errVecFileName);
    
    if(atoi(wTmax) == 0)
    {
        //extract 
        //1. valid_rare_nets
        //2. justified_triggers
        //3. justified payloads

        printf("INFO: Parsing Trojan file...\n");
        valid_rare_nets = get_rare_nets_from_Trojan(G, exeDir, dumpDir, trigN, tFile, &justified_triggers, &justified_payloads);        
        //sort valid rare nets in G->edgArr order
        sorted_valid_rare = array_alloc(edge*, 1);
        get_sorted_valid_nets(G, valid_rare_nets, &sorted_valid_rare);
        array_free(valid_rare_nets);
        valid_rare_nets = sorted_valid_rare;

    }
    //flow without Tmax or entire flow
    else
    {
        if(atoi(tFileFlag) == 1)
        {
            //flow to extract rare nets
            printf("INFO: Flow with Trojan file...\n");
            
            printf("INFO: Parsing Trojan file...\n");
            rare_nets = get_rare_nets_from_Trojan(G, exeDir, dumpDir, trigN, tFile, &triggers, &payloads);
            //-- checked for memory free issue-> freed all allocated memory except rare_nets

            //get their ID
            printf("INFO: Getting tmax rare net id...\n");
            get_rare_net_id(G, dumpDir, verboseFlag, rare_nets, libName, cktType, clkN, clkV, wrst, rstN, rstV, exeDir, inputFile, moduleName, libFile, tmaxSource);        
            //-- checked for memory free issue-> freed all allocated memory

            if(array_n(rare_nets) == 0)
            {
                printf("!!WARNING: No rare nets.\n");
                exit(0);
            }
            
            if(justCov == 1)    // coverage on provided Trojans using provided vectors
            {
                //their patterns and removal of nets with ! successful patterns
                printf("INFO: Getting rare net patterns...\n");
                valid_rare_nets = get_rare_net_patterns(G, dumpDir, verboseFlag, rare_nets, libName, cktType, clkN, clkV, wrst, rstN, rstV, exeDir, inputFile, moduleName, tFileFlag, libFile, tmaxSource);

                //sort valid rare nets in G->edgArr order
                sorted_valid_rare = array_alloc(edge*, 1);
                get_sorted_valid_nets(G, valid_rare_nets, &sorted_valid_rare);
                array_free(valid_rare_nets);
                valid_rare_nets = sorted_valid_rare;
                
                //-- checked for memory free issue-> freed all allocated memory except valid_rare_nets
                free(rare_nets);        //adding it here as this is a last block of code

                printf("INFO: Doing only coverage analysis\n");
            
                firstErrVec = get_only_coverage(G, topoArr, dumpDir, triggers, payloads, valid_rare_nets, ndetect, trigN, states, scanFlag, 0, exeDir, inpVecFile, onlyVec, codeBase, inputFile, moduleName, cktType, libName);
                //-- checked for memory free issue-> freed all allocated memory

                if(firstErrVec != -1 && !strstr(codeBase,"NA"))
                {               
                    printf("INFO: Comparing simualted with iVerilog and tcov\n");
                    run_iverilog_simulation(G, dumpDir, ndetect, trigN, cktType, inputFile, moduleName, codeBase, compareiVeriFlag, topoArr, firstErrVec, valid_rare_nets);        
                }
                array_free(valid_rare_nets);
                    
                return;
            }
            printf("INFO: Getting scoap data...\n");
            get_scoap_data(G, dumpDir, scanFlag, verboseFlag, topoArr, tFileFlag, rare_nets, threshold);
            //-- checked for memory free issue-> freed all allocated memory 

            //get their ID
            // printf("INFO: Getting tmax rare net id...\n");
            // get_rare_net_id(G, dumpDir, verboseFlag, rare_nets, libName, cktType, clkN, clkV, wrst, rstN, rstV, exeDir, inputFile, moduleName, libFile, tmaxSource);
            

            //their patterns and removal of nets with ! successful patterns
            printf("INFO: Getting rare net patterns...\n");
            valid_rare_nets = get_rare_net_patterns(G, dumpDir, verboseFlag, rare_nets, libName, cktType, clkN, clkV, wrst, rstN, rstV, exeDir, inputFile, moduleName, tFileFlag, libFile, tmaxSource);
            //-- checked for memory free issue-> freed all allocated memory except valid_rare_nets

            //sort valid rare nets in G->edgArr order
            sorted_valid_rare = array_alloc(edge*, 1);
            get_sorted_valid_nets(G, valid_rare_nets, &sorted_valid_rare);
            array_free(valid_rare_nets);
            valid_rare_nets = sorted_valid_rare;

            //keep Trojans with valid nets only  
            printf("INFO: Removing Trojans with no pattern for triggers...\n");
            int isTrojan_removed = remove_invalid_trojans(G, valid_rare_nets, rare_nets, triggers, payloads, &valid_triggers, &valid_payloads);
            //-- checked for memory free issue-> freed all allocated memory except valid_triggers, valid_payloads
            free(rare_nets);
            
            printf("INFO: Dump valid rare nets...\n");
            dump_valid_rare_nets(G, valid_rare_nets, exeDir, dumpDir, trigN, trojN, verboseFlag);
            //-- checked for memory free issue-> freed all allocated memory

            //fanin-conflict analysis
            printf("INFO: Rare net fan-in PI conflict...\n");
            get_fanin_pi_conflict(G, dumpDir, valid_rare_nets);
            //-- checked for memory free issue-> freed all allocated memory

            //fanin set
            printf("INFO: Rare net fan-in cone set ...\n");
            get_fanin_set(G, dumpDir, valid_rare_nets);
            //-- checked for memory free issue-> freed all allocated memory
            
            dumpPI(G, dumpDir);

            if(justCov == 0)
            {
                start = clock();
                get_single_optimization(G, inputFile, exeDir, dumpDir, ndetect, moduleName, libName, cktType, clkN, clkV, wrst, rstN, rstV, verboseFlag ,trigN, randomness, exhaustive, libFile, justOptCov, tmaxSource, ndetectApp, valid_rare_nets, atoi(scanFlag), topoArr);
                //-- checked for memory free issue-> freed all allocated memory
                end = clock();
                mero_opt_time = ((double) (end - start)) / CLOCKS_PER_SEC;
            }        
            if(validateTrojansFlag)
            {
                //Trojan validation         
                printf("INFO: Trojan validation...\n");
                start = clock();
                validate_trojans( G, valid_triggers, valid_payloads, dumpDir, verboseFlag, libName, cktType, clkN, clkV, wrst, rstN, rstV, exeDir, inputFile, moduleName, tFileFlag, &justified_triggers, &justified_payloads, libFile, tmaxSource) ;
                //-- checked for memory free issue-> freed all allocated memory except justified_triggers, justified_payloads, valid_triggers, valid_payloads
                array_free(valid_triggers);
                array_free(valid_payloads);
                end = clock();
                troj_val_time = ((double) (end - start)) / CLOCKS_PER_SEC;
            }        
            else
            {
                printf("WARNING: Trojan validation skipped.\n");
                justified_triggers = valid_triggers;
                justified_payloads = valid_payloads;
            }
            //stopping remaining processing for wTmax = 1
            if(atoi(wTmax) == 1)
                return;
        }
        else
        {
            printf("INFO: Flow without Trojan file...\n");
            //flow to obtain rare nets      
            rare_nets = get_scoap_data(G, dumpDir, scanFlag, verboseFlag, topoArr, tFileFlag, rare_nets, threshold);
            //-- checked for memory free issue-> freed all allocated memory except rare_nets
            
            if(array_n(rare_nets) == 0)
            {
                printf("!!WARNING: No rare nets.\n");
                exit(0);
            }
            
            //get their ID
            printf("INFO: Getting tmax rare net id...\n");
            get_rare_net_id(G, dumpDir, verboseFlag, rare_nets, libName, cktType, clkN, clkV, wrst, rstN, rstV, exeDir, inputFile, moduleName, libFile, tmaxSource);
            //-- checked for memory free issue-> freed all allocated memory

            //their patterns and removal of nets with ! successful patterns
            printf("INFO: Getting rare net patterns...\n");
            valid_rare_nets = get_rare_net_patterns(G, dumpDir, verboseFlag, rare_nets, libName, cktType, clkN, clkV, wrst, rstN, rstV, exeDir, inputFile, moduleName, tFileFlag, libFile, tmaxSource);
            array_free(rare_nets);
            //-- checked for memory free issue-> freed all allocated memory except valid_rare_nets

            //sort valid rare nets in G->edgArr order
            sorted_valid_rare = array_alloc(edge*, 1);
            get_sorted_valid_nets(G, valid_rare_nets, &sorted_valid_rare);
            array_free(valid_rare_nets);
            valid_rare_nets = sorted_valid_rare;

            printf("INFO: Dump valid rare nets...\n");
            dump_valid_rare_nets(G, valid_rare_nets, exeDir, dumpDir, trigN, trojN, verboseFlag);
            //-- checked for memory free issue-> freed all allocated memory

            //Trojan creation
            printf("INFO: Trojan creation...\n");
            create_trojans(G, valid_rare_nets, trigN, trojN, exeDir, dumpDir, verboseFlag, &valid_triggers, &valid_payloads, topoArr, randomness);
            //-- checked for memory free issue-> freed all allocated memory except valid_triggers, valid_payloads

            printf("INFO: Trojan validation...\n");
            start = clock();
            validate_trojans( G, valid_triggers, valid_payloads, dumpDir, verboseFlag, libName, cktType, clkN, clkV, wrst, rstN, rstV, exeDir, inputFile, moduleName, tFileFlag, &justified_triggers, &justified_payloads, libFile, tmaxSource) ;
            array_free(valid_triggers);
            array_free(valid_payloads);
            end = clock();
            troj_val_time = ((double) (end - start)) / CLOCKS_PER_SEC;

            //with valid rare nets Trojans are not created those nets needs to get ignored to reproduce results for 2nd iteration
            array_t* trojan_valid_rare_nets = array_alloc(edge*, 1);
            get_valid_rare_nets_from_Trojan(G, justified_triggers, &trojan_valid_rare_nets);
            printf("valid_rare_nets: %d\n", array_n(valid_rare_nets));
            printf("trojan_valid_rare_nets: %d\n", array_n(trojan_valid_rare_nets));

            if(array_n(valid_rare_nets) != array_n(trojan_valid_rare_nets))
            {
                printf("INFO: Updating valid rare nets...\n");
                dump_valid_rare_nets(G, trojan_valid_rare_nets, exeDir, dumpDir, trigN, trojN, verboseFlag);
                array_free(valid_rare_nets);
                valid_rare_nets = trojan_valid_rare_nets;

                //sort valid rare nets in G->edgArr order
                sorted_valid_rare = array_alloc(edge*, 1);
                get_sorted_valid_nets(G, valid_rare_nets, &sorted_valid_rare);
                array_free(valid_rare_nets);
                valid_rare_nets = sorted_valid_rare;
                
                //remove data from base_patterns.csv
                remove_invalid_base_patterns(G, dumpDir, valid_rare_nets);

            }
            dumpPI(G, dumpDir);
            
            if(justTroj == 0)
            {
                //fanin-conflict analysis
                printf("INFO: Rare net fan-in PI conflict...\n");
                get_fanin_pi_conflict(G, dumpDir, valid_rare_nets);
                //-- checked for memory free issue-> freed all allocated memory

                //fanin set
                printf("INFO: Rare net fan-in cone set ...\n");
                get_fanin_set(G, dumpDir, valid_rare_nets);
                //-- checked for memory free issue-> freed all allocated memory

                if(justCov == 0)
                {
                    printf("INFO: Doing optimization... \n");
                    start = clock();
                    printf("\n[DEBUG] 10 ");
                    get_single_optimization(G, inputFile, exeDir, dumpDir, ndetect, moduleName, libName, cktType, clkN, clkV, wrst, rstN, rstV, verboseFlag ,trigN, randomness, exhaustive, libFile, justOptCov, tmaxSource, ndetectApp, valid_rare_nets, atoi(scanFlag), topoArr);
                    //-- checked for memory free issue-> freed all allocated memory
                    printf("\n[DEBUG] 11 ");
                    end = clock();
                    mero_opt_time = ((double) (end - start)) / CLOCKS_PER_SEC;
                }
                else
                {
                    printf("INFO: skipping optimization \n");
                }
            }
            
            // //Trojan validation
            // printf("INFO: Trojan validation...\n");
            // start = clock();
            // validate_trojans( G, valid_triggers, valid_payloads, dumpDir, verboseFlag, libName, cktType, clkN, clkV, wrst, rstN, rstV, exeDir, inputFile, moduleName, tFileFlag, &justified_triggers, &justified_payloads, libFile, tmaxSource) ;
            // //-- checked for memory free issue-> freed all allocated memory except justified_triggers, justified_payloads, valid_triggers, valid_payloads  
            // array_free(valid_triggers);
            // array_free(valid_payloads);
            // end = clock();
            // troj_val_time = ((double) (end - start)) / CLOCKS_PER_SEC;

            //stopping remaining processing for wTmax = 1
            //if(atoi(wTmax) == 1)
            //    return;
            
        }
    }
    
    if(strstr(ndetectApp, "-1"))
    {
        printf("INFO: Processing on the go for pattern optimzation\n");
        array_t* final_real_patterns = vector_otg_optimization(G, dumpDir, ndetect, topoArr, 1, valid_rare_nets, exeDir);
        //-- checked for memory free issue-> freed all allocated memory except final_real_patterns
        
    }
    printf("INFO: Optimization complete...\n");

    if(strstr(ndetectApp, "-1"))        //optimization on the go
    {
        printf("INFO: Doing coverage analysis with new(%d)/prev(%d) Trojan file\n", atoi(tFileFlag)^1, atoi(tFileFlag));
        char *inpVecFile;
        if(asprintf(&inpVecFile, "%s/vector_otg.out", dumpDir) == -1)
        {
            printf("ERROR: malloc error for vector_otg file name.\n");
            exit(0);
        }
        int onlyVec = 1;
        firstErrVec = get_only_coverage(G, topoArr, dumpDir, justified_triggers, justified_payloads, valid_rare_nets, ndetect, trigN, states, scanFlag, 0, exeDir, inpVecFile, onlyVec, codeBase, inputFile, moduleName, cktType, libName);
        //-- checked for memory free issue-> freed all allocated memory
        free(inpVecFile);
    }
    else
    {
        if(justTroj == 0)   //Trojans are created
        {
            if(justCov == 0)    //doing coverage analysis from base
            {
                printf("INFO: Doing coverage analysis from start\n");
                start = clock();
                vector_processing(G, topoArr, dumpDir, justified_triggers, justified_payloads, valid_rare_nets, ndetect, trigN, states, scanFlag, 0, exeDir, postOpt, codeBase, inputFile, moduleName, cktType, libName);
                //-- checked for memory free issue-> freed all allocated memory
                end = clock();
                mero_tcov_time = ((double) (end - start)) / CLOCKS_PER_SEC;
            }
            else                // coverage on provided Trojans using provided vectors
            {   
                printf("INFO: Doing only coverage analysis with new(%d)/prev(%d) Trojan file\n", atoi(tFileFlag)^1, atoi(tFileFlag));
                firstErrVec = get_only_coverage(G, topoArr, dumpDir, justified_triggers, justified_payloads, valid_rare_nets, ndetect, trigN, states, scanFlag, 0, exeDir, inpVecFile, onlyVec, codeBase, inputFile, moduleName, cktType, libName);
                //-- checked for memory free issue-> freed all allocated memory
            }
        }
    }
    
    // if(!strstr(codeBase,"NA") && strstr(cktType, "comb"))
    //     run_iverilog_simulation(G, dumpDir, ndetect, trigN, cktType, inputFile, moduleName, codeBase, compareiVeriFlag, topoArr, firstErrVec, valid_rare_nets);
    free(valid_rare_nets);
    if(asprintf(&opFileName, "%s/results_%s_%s.txt", dumpDir, ndetect, trigN) == -1)
    {
        printf("ERROR: malloc error in results file name.\n");
        exit(0);
    }
    printf("results at: %s\n", opFileName);
    FILE *resultHandle = fopen(opFileName, "a");
    fprintf(resultHandle, "==============================================================\n");
    fprintf(resultHandle, "a. Graph creation time    : %f s\n", graph_creation_time);         
    fprintf(resultHandle, "b. Trojan validation time : %f s\n", troj_val_time);         
    fprintf(resultHandle, "c. MERO optimization time : %f s\n", mero_opt_time);         
    fprintf(resultHandle, "d. MERO coverage time     : %f s\n", mero_tcov_time);         
    fclose(resultHandle);
    free(opFileName);
    
    return 0;
}


// python3 mero.py -f  /home/UFAD/pravin.gaikwad/Benchmarks/LEDA/ISCAS85/c2670/c2670_netlist.v  -d  /home/UFAD/pravin.gaikwad/Benchmarks/LEDA/ISCAS85/c2670/  -e $mero_v2_1/src/ -m  c2670  -comb -scan 1 -lib  LEDA  -v -thr 0.2 -N 10 -T 4 -TS 1000 -woTrojFile -tFile /home/UFAD/pravin.gaikwad/Benchmarks/LEDA/ISCAS85/c2670/valid_trojans_4.txt -seed 0 -tvF 1 -cF 0 -vFlag 0 -vFile  /home/UFAD/pravin.gaikwad/Benchmarks/LEDA/ISCAS85/c2670//pre_opt_only_vector_w_nets.txt  -justTroj 0 -justOptCov 0 -postOpt 0 -codeBase $base/mero_cast/ -compareiVeriFlag 1 -clk  clk  -clkV 0 -woreset -tmaxSrc ECE -ndApp -1