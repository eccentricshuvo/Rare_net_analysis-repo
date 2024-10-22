/**
 * @file mero.c
 * @author pravin.gaikwd@ufl.edu
 * @brief 
 * @version 0.1
 * @date 2021-07-21
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
#include "mero.h"

extern int debug;
/**
 * @brief 
 * 
 * release - release flag 
 * 
 */
int release = 0;

/**
 * @brief Function to get scoap data and get rare nets if Trojan file not provided
 * 
 * @param G             - CAST graph structure.                 
 * @param dumpDir       - Output directory to store all the results for current file. 
 * @param scanFlag      - Scan-chain flag. Set to 1 for current iteration of the tool.
 * @param verboseFlag   - quiet/verbose flag.
 * @param topoArr       - Topologically sorted graph vertices.
 * @param tFileFlag     - Trojan file flag.
 * @param rare_nets     - Array of edge pointer to rare nets.(If rare nets are already available).
 * @param threshold     - Threshold to select rare nets.
 * @return array_t*     - Array of edge pointers to rare nets.
 * 
 * @note
 * 
 * Function calls controllability() and observability() function from VIPR code base.
 * If rare nets are already available, SCOAP values for these nets are dumped in result_scoap.csv file.
 * Otherwise function extrtacts rare nets from the design and dumps rare nets SCOAP value in result_scoap,csv file
 */
//
array_t* get_scoap_data(graph* G, char *dumpDir, char *scanFlag, char *verboseFlag, char *topoArr, char *tFileFlag, array_t *rare_nets, char *threshold)
{
    edge* edg;
    array_t *scoap_rare_nets;

    char *opFileName = (char*)malloc(sizeof(char)*10000);
    strcpy(opFileName, dumpDir);
    strcat(opFileName, "/result_scoap.csv");

    // printf("INFO-Controllability with all FF as scan-chain FF ------\n");
    controllability(G, dumpDir, atoi(scanFlag), verboseFlag);

    // printf("INFO-Observability with all FF as scan-chain FF ------\n");
    observability(G, dumpDir, atoi(scanFlag), topoArr);
	
    FILE *outFile;
    if(debug)
    {
        outFile = fopen(opFileName, "w");
        fprintf(outFile, "%s,%s,%s,%s,%s\n", "Net_name", "cc_0", "cc_1", "Obs", "Org_Net_name");
    }    
    if(atoi(tFileFlag) == 1)
    {
        //dump only rare net scoap data
        for(size_t i=0; i<array_n(rare_nets); i++)
        {
            edg = array_fetch(edge*, rare_nets, i);
            edg->rareEdge = 1;
            if(debug)
            {
                fprintf(outFile, "%s,%d,%d,%d,%s\n", edg->name, edg->cc0, edg->cc1, edg->cco, edg->origName);                                                                          
            }
            
        }
        if(debug)
        {
            fclose(outFile);
        }        
        free(opFileName); 
        return rare_nets;
    }
    else
    {
        
        //dump all net scoap data or filter out rare nets
        // for(size_t i=0; i<array_n(G->edgArr); i++)
        // {
        //     edg = array_fetch(edge*, G->edgArr, i);
        //     fprintf(outFile, "%s,%d,%d,%d,%s\n", edg->name, edg->cc0, edg->cc1, edg->cco, edg->origName);                                                                          
        // }
        // fclose(outFile);
        // free(opFileName); 

        int cc_eclud_min = 1;
        int cc_eclud_max = 0;

        scoap_rare_nets = array_alloc(edge*, 1);

        for(size_t i=0; i<array_n(G->edgArr); i++)
        {
            edg = array_fetch(edge*, G->edgArr, i);
            if(array_n(edg->toNodes)==0 || edg->bPrimOut == true)    //not considering output edges
                continue;
            edg->cc_minmaxStd = (edg->cc_eclud_dist - G->cc_eclud_min)/(G->cc_eclud_max - G->cc_eclud_min);            
            edg->cc_minmaxScale  = edg->cc_minmaxStd * (1 - 0) + 0;
            if(edg->cc_minmaxScale >= atof(threshold))
            {
                array_insert_last(edge*, scoap_rare_nets, edg);
                //check for rare value
                if(edg->cc0 <= edg->cc1)
                    edg->lowProbVal = 1;
                else
                    edg->lowProbVal = 0;
            }            
        }

        //dump only rare net scoap data
        for(size_t i=0; i<array_n(scoap_rare_nets); i++)
        {
            edg = array_fetch(edge*, scoap_rare_nets, i);
            edg->rareEdge = 1;
            if(debug)
            {
                fprintf(outFile, "%s,%d,%d,%d,%s\n", edg->name, edg->cc0, edg->cc1, edg->cco, edg->origName);                                                                          
            }            
        }
        if(debug)
        {
            fclose(outFile);
        }        
        free(opFileName); 
        
        return scoap_rare_nets;
    }    
}

/**
 * @brief Function to get tmax net id by calling tmax script
 * 
 * @param G             - CAST graph structure.   
 * @param dumpDir       - Output directory to store all the results for current file. 
 * @param verboseFlag   - quiet/verbose flag.
 * @param rare_nets     - Array of edge pointer to rare nets.
 * @param libName       - Library name {"LEDA", "skywater"}. Current iteration supports mentioned libraries.
 * @param cktType       - Type of circuit {comb/seq}
 * @param clkN          - Clock name for designs with clock.
 * @param clkV          - Off-state clock value.
 * @param wrst          - Reset flag. {1: use reset, 0:do not use reset}
 * @param rstN          - Reset name for designs with reset.
 * @param rstV          - Off-state reset value.
 * @param exeDir        - executables directory. Provide location of all executable files required for MERS.
 * @param inputFile     - Flatttened gate-level verilog netlist.   
 * @param moduleName    - Top module of the design.
 * @param libFile       - Library file if working with separate reduce library file.
 * @param tmaxSource    - Path to tetramax source file.
 * @return array_t*     - Returns NULL.
 */

array_t* get_rare_net_id(graph* G, char* dumpDir, char *verboseFlag, array_t *rare_nets, char *libName, char *cktType, char *clkN, char *clkV, char *wrst, char *rstN, char *rstV, char *exeDir, char *inputFile, char *moduleName, char *libFile, char *tmaxSource)
{
    
    char *scriptFileName;
    asprintf(&scriptFileName, "%s/tmax_script_get_id.tcl", dumpDir);
    
    //script creation

    FILE *tmax_id_file = fopen(scriptFileName, "w");    
    char tmax_id_command[10000];

    //library setup to run TMAX
    if(strstr(libName, "LEDA"))
    {
        if(strstr(libFile, "NA"))
            fprintf(tmax_id_file, "read_netlist %s/lec25dscc25.v -library\n", exeDir);
        else
            fprintf(tmax_id_file, "read_netlist %s -library\n", libFile);
    }
    else if (strstr(libName, "skywater"))
    {
        if(strstr(libFile, "NA"))
            fprintf(tmax_id_file, "read_netlist %s/sky130.v -library\n", exeDir);
        else
            fprintf(tmax_id_file, "read_netlist %s -library\n", libFile);
    }                

    //read netlist
    fprintf(tmax_id_file, "read_netlist %s\n", inputFile);    
    
    //do not delete unused gates
    fprintf(tmax_id_file, "set_build -nodelete_unused_gates -merge noglobal_tie_propagate\n");            

    //build top module 
    fprintf(tmax_id_file, "run_build_model %s\n", moduleName);            

    if(strstr(cktType, "seq"))
    {
        //split multiple clocks 
        array_t *clkNArr = string_strip(clkN, ",");
        array_t *clkVArr = string_strip(clkV, ",");
        for(int c=0; c<array_n(clkNArr); c++)
        {
            char *tempClkN = array_fetch(char*, clkNArr, c);
            char *tempClkV = array_fetch(char*, clkVArr, c);
            fprintf(tmax_id_file, "add_clocks %s %s\n", tempClkV, tempClkN);            
        }
        array_free(clkNArr);
        array_free(clkVArr);
        // fprintf(tmax_id_file, "add_clocks %s %s\n", clkV, clkN);            
        if(atoi(wrst) == 1)
        {
            //split multiple resets
            array_t *rstNArr = string_strip(rstN, ",");
            array_t *rstVArr = string_strip(rstV, ",");
            for(int c=0; c<array_n(rstNArr); c++)
            {
                char *temprstN = array_fetch(char*, rstNArr, c);
                char *temprstV = array_fetch(char*, rstVArr, c);
                //fprintf(tmax_id_file, "add_clocks %s %s\n", temprstV, temprstN);            
            }
            array_free(rstNArr);
            array_free(rstVArr);
            // fprintf(tmax_id_file, "add_clocks %s %s\n", rstV, rstN);            
        }
    }

    //drc
    fprintf(tmax_id_file, "drc \n");            

    //test
    fprintf(tmax_id_file, "test \n");            

    char *idopFileName = (char*)malloc(sizeof(char)*10000);
    asprintf(&idopFileName, "%s/get_id_op.tcl", dumpDir);

    //command to get id of rare nets
    for(int i=0; i<array_n(rare_nets); i++)
    {
        edge* edg = array_fetch(edge*, rare_nets, i);
        fprintf(tmax_id_file, "report_primitives %s >> %s\n", edg->origName, idopFileName);            
    }
    //exit
    fprintf(tmax_id_file, "exit \n");            
    fclose(tmax_id_file);
    
    //remove primitive file if already present as we are appending data
    if( access( idopFileName, F_OK ) == 0 ) {
        // file exists  --> remove
        if(remove(idopFileName) != 0)
            printf("!!WARNING: Can't remove get_id_op file.\n");
    }

    char *idLogFileName = (char*)malloc(sizeof(char)*10000);
    asprintf(&idLogFileName, "%s/get_id_log.tcl", dumpDir);

    //run command in TMAX  
    printf("INFO: tmaxSource: %s\n", tmaxSource);
    if(strstr(tmaxSource, "NA")) 
        sprintf(tmax_id_command, "tmax -shell -tcl %s > %s\n", scriptFileName, idLogFileName);
    else if(strstr(tmaxSource, "ECE")) 
        sprintf(tmax_id_command, "source /apps/settings && tmax -shell -tcl %s > %s\n", scriptFileName, idLogFileName);
    else
        sprintf(tmax_id_command, "%s && tmax -shell -tcl %s > %s\n", tmaxSource, scriptFileName, idLogFileName);
    free(idLogFileName);
    free(scriptFileName);

    // Execute the TCL command
    system(tmax_id_command);

    //parse idopFileName
    parse_net_id(G, dumpDir, rare_nets, idopFileName);
    free(idopFileName);

    return NULL;
}

/**
 * @brief Function performs parsing on tetramax id file and extracts rare net tmax id.
 * 
 * @param G             - CAST graph data structure.
 * @param dumpDir       - Output directory to store all the results for current file. 
 * @param rare_nets     - Array of edge pointer to rare nets.
 * @param id_file       - Tetramax id file name.
 * 
 * @note
 * 
 * edg->tmax_id contains tetramax id.
 */

void parse_net_id(graph* G, char *dumpDir, array_t *rare_nets, char *id_file)
{
    char buffer[1000];
    char *tempWord;
    int lineNo = 1;
    int counter2 = 0;

    array_t* wordArr;
    array_t* tempwordArr;
    char *word;
    char* pstr = (char*)malloc(sizeof(char)*50000000);
    char* pstr1 = (char*)malloc(sizeof(char)*50000000);

    int *edgIdxArray, *uniqeRareEdge;
    
    edge* edg;

    //remove primitive file if already present as we are appending data
    if( access( id_file, F_OK ) != 0 ) {
        printf("!!ERROR: ID file not present: %s.\n", id_file);
        exit(0);
    }

    FILE *inputFile = fopen(id_file, "r");

    // now read the input file
    int line = 1;
    int counter = 0;
    while (fgets(buffer,1000,inputFile) != NULL)
    {
        
        wordArr = string_strip(buffer, "() ");
		
        if(array_n(wordArr) > 4)
        {
            if(counter > array_n(rare_nets))
            {
                printf("!!ERROR: TMAX ID parsing issue.\n");
                exit(0);
            }
            word = array_fetch(char*, wordArr, 1);  //id (U440,687,XOR,xor2_1)
            edg = array_fetch(edge*, rare_nets, counter);
            edg->tmax_id = atoi(word);
            counter++;
        }            		 
    }
    fclose(inputFile); 
}

/**
 * @brief Get the rare net patterns
 * 
 * @param G             - CAST graph structure.  
 * @param dumpDir       - Output directory to store all the results for current file. 
 * @param verboseFlag   - quiet/verbose flag.
 * @param rare_nets     - Array of edge pointer to rare nets.
 * @param libName       - Library name {"LEDA", "skywater"}. Current iteration supports mentioned libraries.
 * @param cktType       - Type of circuit {comb/seq}
 * @param clkN          - Clock name for designs with clock.
 * @param clkV          - Off-state clock value.
 * @param wrst          - Reset flag. {1: use reset, 0:do not use reset}
 * @param rstN          - Reset name for designs with reset.
 * @param rstV          - Off-state reset value.
 * @param exeDir        - executables directory. Provide location of all executable files required for MERS.
 * @param inputFile     - Flatttened gate-level verilog netlist.   
 * @param moduleName    - Top module of the design.
 * @param tFileFlag     - Trojan file flag.
 * @param libFile       - Library file if working with separate reduce library file.
 * @param tmaxSource    - Path to tetramax source file.
 * @return array_t*     - Array of pointer to valid rare nets.
 * 
 * @note
 * 
 * - Function creates tetraMax script to get patterns for rare nets.
 *      -# tmax_script_get_pattern.tcl
 *      -# tmax_script_get_pattern_trojFile.tcl
 * - tmax_pi.txt file is dumped with scan-cell info for sequential designs.
 * - tetraMax script output is stored in pattern_op.txt file.
 * - parse_patterns.py script is used to parse patterns.
 * - base_patterns.csv file is dumped with base patterns
 * 
 */
// Function to write and execute tmax script to get rare net patterns
array_t* get_rare_net_patterns(graph* G, char* dumpDir, char *verboseFlag, array_t *rare_nets, char *libName, char *cktType, char *clkN, char *clkV, char *wrst, char *rstN, char *rstV, char *exeDir, char *inputFile, char *moduleName, char *tFileFlag, char *libFile, char *tmaxSource)
{
    //To generate script to obtain patterns from TMAX
    //updated_pattern_script = open("tmax_script_get_pattern.tcl", 'w')

    char *scriptFileName = (char*)malloc(sizeof(char)*10000);
    strcpy(scriptFileName, dumpDir);
    strcat(scriptFileName, "/");

    if(atoi(tFileFlag) == 0)
    {        
        strcat(scriptFileName, "tmax_script_get_pattern.tcl");
    }
    else
    {
        strcat(scriptFileName, "tmax_script_get_pattern_trojFile.tcl");
    }
    
    //script creation

    FILE *tmax_get_pattern_file = fopen(scriptFileName, "w");

    //library setup to run TMAX
    if(strstr(libName, "LEDA"))
    {
        if(strstr(libFile, "NA"))
            fprintf(tmax_get_pattern_file, "read_netlist %s/lec25dscc25.v -library\n", exeDir);
        else
            fprintf(tmax_get_pattern_file, "read_netlist %s -library\n", libFile);
    }
    else if (strstr(libName, "skywater"))
    {
        if(strstr(libFile, "NA"))
            fprintf(tmax_get_pattern_file, "read_netlist %s/sky130.v -library\n", exeDir);
        else
            fprintf(tmax_get_pattern_file, "read_netlist %s -library\n", libFile);
    }  

    //read netlist
    fprintf(tmax_get_pattern_file, "read_netlist %s\n", inputFile);    
    
    fprintf(tmax_get_pattern_file, "set_build -nodelete_unused_gates -merge noglobal_tie_propagate\n");            

    //build top module 
    fprintf(tmax_get_pattern_file, "run_build_model %s\n", moduleName);            

    if(strstr(cktType, "seq"))
    {
        //split multiple clocks 
        array_t *clkNArr = string_strip(clkN, ",");
        array_t *clkVArr = string_strip(clkV, ",");
        for(int c=0; c<array_n(clkNArr); c++)
        {
            char *tempClkN = array_fetch(char*, clkNArr, c);
            char *tempClkV = array_fetch(char*, clkVArr, c);
            fprintf(tmax_get_pattern_file, "add_clocks %s %s\n", tempClkV, tempClkN);
        }
        array_free(clkNArr);
        array_free(clkVArr);                    
        // fprintf(tmax_get_pattern_file, "add_clocks %s %s\n", clkV, clkN);            
        if(atoi(wrst) == 1)
        {
            //split multiple resets
            array_t *rstNArr = string_strip(rstN, ",");
            array_t *rstVArr = string_strip(rstV, ",");
            for(int c=0; c<array_n(rstNArr); c++)
            {
                char *temprstN = array_fetch(char*, rstNArr, c);
                char *temprstV = array_fetch(char*, rstVArr, c);
                //fprintf(tmax_get_pattern_file, "add_clocks %s %s\n", temprstV, temprstN);            
            }
            array_free(rstNArr);
            array_free(rstVArr);
            // fprintf(tmax_get_pattern_file, "add_clocks %s %s\n", rstV, rstN);            
        }
    }

    //scan ability
    if(strstr(cktType, "seq"))
        fprintf(tmax_get_pattern_file, "set_scan_ability on -all \n");    

    //drc
    fprintf(tmax_get_pattern_file, "drc \n");            

    //test
    fprintf(tmax_get_pattern_file, "test \n");    

    //pindata
    fprintf(tmax_get_pattern_file, "set pindata seq_sim_data \n");        
    
    //command to get id of rare nets
    for(int i=0; i<array_n(rare_nets); i++)
    {
        edge* edg = array_fetch(edge*, rare_nets, i);
        if(edg->lowProbVal == 0 )
        {
            fprintf(tmax_get_pattern_file, "#run_justification -full_sequential -set { %s 0 } -verbose -store\n", edg->origName);            
            fprintf(tmax_get_pattern_file, "#current_net:%s\n", edg->origName);            
            fprintf(tmax_get_pattern_file, "run_justification -full_sequential -set { %d 0 } -verbose -store\n", edg->tmax_id);            
        }            
        else if(edg->lowProbVal == 1 )
        {
            fprintf(tmax_get_pattern_file, "#run_justification -full_sequential -set { %s 1 } -verbose -store\n", edg->origName);            
            fprintf(tmax_get_pattern_file, "#current_net:%s\n", edg->origName);            
            fprintf(tmax_get_pattern_file, "run_justification -full_sequential -set { %d 1 } -verbose -store\n", edg->tmax_id);            
        }            
        else
        {
            printf("!!ERROR: edge excitation value is wrong: %d\n", edg->lowProbVal);
            exit(0);
        }            
    }

    //report patterns
    fprintf(tmax_get_pattern_file, "report_patterns -internal -all \n");    

    char *tmaxPIFileName = (char*)malloc(sizeof(char)*10000);
    strcpy(tmaxPIFileName, dumpDir);
    strcat(tmaxPIFileName, "/");
    strcat(tmaxPIFileName, "tmax_pi.txt");
    
    //dump rmax pi to file
    fprintf(tmax_get_pattern_file, "report_primitives -pis > %s\n",tmaxPIFileName);    

    //dump rmax FF pi to file
    if(strstr(cktType, "seq"))
    {
        fprintf(tmax_get_pattern_file, "echo scan_cells >> %s\n",tmaxPIFileName); 
        fprintf(tmax_get_pattern_file, "report_scan_cells -all >> %s\n",tmaxPIFileName); 
    }
        
    //exit
    fprintf(tmax_get_pattern_file, "exit \n");  

    fclose(tmax_get_pattern_file);
    
    char *tmaxpatternFileName = (char*)malloc(sizeof(char)*10000);
    strcpy(tmaxpatternFileName, dumpDir);
    strcat(tmaxpatternFileName, "/");
    strcat(tmaxpatternFileName, "pattern_op.txt");


    char tmax_command[10000];
    if(strstr(tmaxSource, "NA")) 
        sprintf(tmax_command, "tmax -shell -tcl %s > %s\n", scriptFileName, tmaxpatternFileName);
    else if(strstr(tmaxSource, "ECE")) 
        sprintf(tmax_command, "source /apps/settings && tmax -shell -tcl %s > %s\n", scriptFileName, tmaxpatternFileName);
    else
        sprintf(tmax_command, "%s && tmax -shell -tcl %s > %s\n", tmaxSource, scriptFileName, tmaxpatternFileName);

    
    
    // printf(tmax_command);
    
    // Execute the TCL command
    system(tmax_command);

    // parsing issue
    // array_t *valid_rare_nets = parse_pattern_file(G, dumpDir, rare_nets, tmaxpatternFileName, cktType);


    // printf("-------!!!!!!!!---------\n");
    array_t *valid_rare_nets = array_alloc(edge*, 1);


    // dumps output to parsed_patterns.csv file


    char parsed_file[10000];
    sprintf(parsed_file, "%s/parsed_patterns.csv", dumpDir);


    char parse_command[10000];
    sprintf(parse_command, "python3 %s/parse_patterns.py -pF %s -d %s -%s -oF %s -v\n", exeDir, tmaxpatternFileName, dumpDir, cktType, parsed_file);

    // printf("%s\n", parse_command);

    system(parse_command);


    //remove primitive file if already present as we are appending data
    if( access( parsed_file, F_OK ) != 0 ) {
        printf("!!ERROR: File not present: %s.\n", parsed_file);
        exit(0);
    }

    FILE *parsed_file_handle = fopen(parsed_file, "r");


    char *tempWord;
    array_t* wordArr;
    char* pstr = (char*)malloc(sizeof(char)*50000000);
    char* pstr1 = (char*)malloc(sizeof(char)*50000000);
    int sat_count = 0;

    while(!feof(parsed_file_handle))
    {
        fscanf(parsed_file_handle, "%[^\n]\n", pstr);
		if (pstr[0] == '/' && pstr[1] == '/')
            continue; // line comment
		
        if (pstr[0] != '/' || pstr[1] != '/')
        {
			// remove trailing white spaces
            for (int i = strlen(pstr)-1; i >= 0; i--)
            {
                if (pstr[i] == ' ') 
                    pstr[i] = '\0';
                else break;
            }
			
            while (pstr[strlen(pstr)-1] != ';' )
            {
				//printf("%d\n", line++);
        
                fscanf(parsed_file_handle, "%[^\n]\n", pstr1);
	
                // remove trailing white spaces
                for (int i = strlen(pstr1)-1; i >= 0; i--)
                {
                    if (pstr1[i] == ' ') 
                        pstr1[i] = '\0';
                    else break;
                }
				//pstr = realloc(pstr, sizeof(pstr)+sizeof(pstr1));
                strcat(pstr, pstr1);
            }			        
        }
		wordArr = string_strip(pstr, ",;");
        
        tempWord = array_fetch(char*, wordArr, 1);         //net
        if(strstr(tempWord, "SATISFIED"))
        {
            edge *edg = array_fetch(edge*, rare_nets, sat_count);
            array_insert_last(edge*, valid_rare_nets, edg);

            tempWord = array_fetch(char*, wordArr, 2);         //pattern

            array_insert_last(char*, edg->tmax_pattern, strdup(tempWord));
        }        
        sat_count = sat_count + 1;
    } 
    fclose(parsed_file_handle);
    
    char *basePatternFileName = (char*)malloc(sizeof(char)*10000);
    strcpy(basePatternFileName, dumpDir);
    strcat(basePatternFileName, "/");
    strcat(basePatternFileName, "base_patterns.csv");
    
    FILE *base_pattern_file_handle = fopen(basePatternFileName, "w");

    for(int i=0; i<array_n(valid_rare_nets); i++)
    {
        edge* edg=array_fetch(edge*, valid_rare_nets, i);
        fprintf(base_pattern_file_handle, "%s,%d,%s\n", edg->origName, edg->lowProbVal ,array_fetch(char*, edg->tmax_pattern, 0));
    }
    fclose(base_pattern_file_handle);

    free(scriptFileName);
    free(tmaxPIFileName);
    free(tmaxpatternFileName);
    free(pstr);
    free(pstr1);
    free(basePatternFileName);

    return valid_rare_nets;
}

/**
 * @brief 
 * 
 * @param G                 - CAST graph structure.
 * @param valid_rare_nets   - Array of pointers to valid rare nets.
 * @param exeDir            - executables directory. Provide location of all executable files required for MERS.
 * @param dumpDir           - Output directory to store all the results for current file. 
 * @param trigN             - Number of triggers per Trojan.
 * @param trojN             - Number of virtual Trojans to be inserted in the design.
 * @param verboseFlag       - quiet/verbose flag.
 * 
 * @note Function dumps valid rare nets, their tetraMax id and rare value in valid_rare_nets.txt file.
 */
// Function to dump valid rare nets in respective op directory
void dump_valid_rare_nets(graph* G, array_t *valid_rare_nets, char *exeDir, char *dumpDir, char *trigN, char *trojN, char *verboseFlag)
{
    if(array_n(valid_rare_nets) < atoi(trigN))
    {
        printf("!!ERROR: Total valid nets < trigger number\n");
        exit(0);
    }

    char *rarenetFileName;
    asprintf(&rarenetFileName, "%s/valid_rare_nets.txt", dumpDir);
    FILE *rare_net_handle = fopen(rarenetFileName, "w");

    for(int i=0; i<array_n(valid_rare_nets); i++)
    {
        edge *edg = array_fetch(edge*, valid_rare_nets, i);
        fprintf(rare_net_handle, "%s,%d,%d\n", edg->origName, edg->tmax_id, edg->lowProbVal);
    }
    fclose(rare_net_handle);    
    free(rarenetFileName);
}

/**
 * @brief Create a trojans object
 * 
 * @param G                 - CAST graph structure.
 * @param valid_rare_nets   - Array of pointers to valid rare nets.
 * @param trigN             - Number of triggers per Trojan.
 * @param trojN             - Number of virtual Trojans to be inserted in the design.
 * @param exeDir            - executables directory. Provide location of all executable files required for MERS.
 * @param dumpDir           - Output directory to store all the results for current file.
 * @param verboseFlag       - quiet/verbose flag.
 * @param triggers          - Double pointer to trigger array.
 * @param payloads          - Double pointer to payload array.
 * @param topoArr           - Topologically sorted graph vertices.
 * @param randomness        - Randomnes parameter. {-1:time base, 0:systmatic, seed: seed based}.
 * 
 * @note
 * 
 * - Function creates Trojans from set of valid rare nets. 
 *      -# get_comb.py script is ran to get all possible combinations of Triggers.
 *      -# results are parsed and used to create virtual Trojans. 
 *      -# valid payload is selected and final results are dumped in trojans.txt file.
 * 
 */
// Function to create Trojans when Trojan file not provided
void create_trojans(graph* G, array_t* valid_rare_nets, char *trigN, char *trojN, char *exeDir, char *dumpDir, char *verboseFlag, array_t **triggers, array_t **payloads, array_t* topoArr, char *randomness)
{

    // array_t *Trojans = array_alloc(array_t*, 1);
    
    //--------------------getting possible combinations of set of rare nets nCr --------------------
    char *rarenetFileName = (char*)malloc(sizeof(char)*10000);
    strcpy(rarenetFileName, dumpDir);
    strcat(rarenetFileName, "/");
    strcat(rarenetFileName, "valid_rare_nets.txt");

    char *getCombFile;
    if(atoi(verboseFlag)==1)
        asprintf(&getCombFile, "python3 %s/get_comb.py -f %s -trigN %s -trojN %s -d %s -v -seed %s\n", exeDir, rarenetFileName, trigN, trojN, dumpDir, randomness);
    else
        asprintf(&getCombFile, "python3 %s/get_comb.py -f %s -trigN %s -trojN %s -d %s -q -seed %s\n", exeDir, rarenetFileName, trigN, trojN, dumpDir, randomness);

    free(rarenetFileName);
    // printf("Script to get combinations: %s\n", getCombFile);

    system(getCombFile);
    free(getCombFile);

    //-------------------- creating random Trojans --------------------

    array_t *trigEntry;                                                     //not freed
    array_t *randTrigEntry;
    array_t* temptriggers = array_alloc(array_t*, 1);
    // array_t *new_triggers = array_alloc(array_t*, 1);

    // --- reading rare combinations file ---
    char *combFile = (char*)malloc(sizeof(char)*10000);
    strcpy(combFile, dumpDir);
    strcat(combFile, "/rare_net_comb.csv");

    FILE *combFileHandle = fopen(combFile, "r");
    char buffer[1000];
    char *tempWord;
    int comb_triggers_count = 0;
    while (fgets(buffer,1000,combFileHandle) != NULL)
    {
        trigEntry = array_alloc(edge*, 1);
        array_t *data = string_strip(buffer, ",");
        for(int i=0; i<array_n(data)-1; i++)
        {
            tempWord = array_fetch(char*, data, i);                         //edge comb name
            edge* edg = findEdgeOrig(strdup(tempWord), G->edgArr);
            if(edg)
            {
                array_insert_last(edge*, trigEntry, edg);
            }
            else
            {
                printf("!!ERROR: Edge Not found in graph while creating Trojans: %s\n", tempWord);
                exit(0);
            }                
        }
        array_insert_last(array_t*, temptriggers, trigEntry);
        comb_triggers_count = comb_triggers_count + 1;
    }
    fclose(combFileHandle);
    free(combFile);

    // --- randomizing Trojan order ---
    // printf("--- randomizing Trojan order ---\n");
    //int seed = 15;
    if(!strstr(randomness, "-1"))
        srandom(atoi(randomness));

    char *opFileName = (char*)malloc(sizeof(char)*10000);
    strcpy(opFileName, dumpDir);
    strcat(opFileName, "/trojans.txt");

    FILE *tptr = fopen(opFileName, "w");


    int rest = comb_triggers_count;
    int k=0, r1;
    while (rest > 0)
    {
        rest /= 2;
        k++;
    }

    int mask = (1 << k) - 1;
    
    for (int i = 0; i < atoi(trojN); i++)
    {
        
        trigEntry = array_alloc(edge*, 1);
        int maxtopo = 0;
        fprintf(tptr, "%d.--", i);
        
        //randomly select trigger combinations  // already craeted required random Trojans trigger set 
        do
        {
            r1 = random() & mask;
        } while (r1 >= comb_triggers_count);
        randTrigEntry = array_fetch(array_t*, temptriggers, r1);

        for (int j = 0; j < atoi(trigN); j++)
        {   
            //get trigger signal and figure out its excitation         
            edge *tedg = array_fetch(edge*, randTrigEntry, j);            
            array_insert_last(edge*, trigEntry, tedg);

            if(tedg->lowProbVal == 0)
                fprintf(tptr, "%s(val: %d, idx: %d)--", tedg->origName, 0, (tedg->fromNode) ? tedg->fromNode->topoIdx : 0);
            else
                fprintf(tptr, "%s(val: %d, idx: %d)--", tedg->origName, 1, (tedg->fromNode) ? tedg->fromNode->topoIdx : 0);
            maxtopo = (tedg->fromNode && tedg->fromNode->topoIdx > maxtopo) ? tedg->fromNode->topoIdx : maxtopo;
        }
        array_insert_last(array_t*, *triggers, trigEntry);
        edge *pedg = findRandomPayload(topoArr, maxtopo);
        //randomly selecting payload without removing any duplicates
        array_insert_last(edge*, *payloads, pedg);
        fprintf(tptr, "%s(idx: %d);\n", pedg->origName, (pedg->fromNode) ? pedg->fromNode->topoIdx : 0);        
    }
    fclose(tptr);
    free(opFileName);

    array_free(temptriggers);
    printf("INFO: Trojans generated \n");

}

/**
 * @brief Function to find random payload > topo_level
 * 
 * @param topoArr   - Topologically sorted graph vertices.
 * @param maxtopo   - Current maximum topolevel number.
 * @return edge*    - Returns payload edge.
 * 
 */

edge* findRandomPayload(array_t* topoArr, int maxtopo)
{
    int i, j, k = 0, mask, r1, flag = false, rest, range, nvert = array_n(topoArr);
    edge* pedg;
    vertex* v;

    range = nvert - maxtopo;
    if (range < 2)
        v = array_fetch_last(vertex*, topoArr);
    else
    {
        rest = range;
        while (rest > 0)
        {
            rest /= 2;
            k++;
        }
    
        mask = (1 << k) - 1;
        while (true)
        {
            do
            {
                r1 = random() & mask;
            } while (r1 >= range);
            v = array_fetch(vertex*, topoArr, maxtopo + r1);
            //if (!strstr(v->type->name, "dff"))
                break;
        }
    }
    pedg = array_fetch(edge*, v->outEdges, 0);

    return pedg;
}

/**
 * @brief Function dumps cast PI information.
 * 
 * @param G         - CAST graph data structure.
 * @param dumpDir   - Output directory to store all the results for current file.
 * 
 * @note 
 * 
 * CAST PI are dumped in cast_pi.csv file.
 */
void dumpPI(graph *G, char *dumpDir)
{
    int i=0, j=0;
    vertex* vert;

    char *opFileName = (char*)malloc(sizeof(char)*10000);
    strcpy(opFileName, dumpDir);
	strcat(opFileName, "/cast_pi.csv");
    FILE *piHandle = fopen(opFileName, "w");

    for(i=0; i< array_n(G->primInEdges); i++)
    {
        fprintf(piHandle, "%d,%s\n", i, array_fetch(edge*, G->primInEdges, i)->origName);
    }
    for(i=0; i< array_n(G->seqGates); i++)
    {
        vert = array_fetch(vertex*, G->seqGates, i);
        if(array_n(vert->outEdges) == 1)
        {
            for(j=0; j< array_n(vert->outEdges); j++)
            {
                char *port = array_fetch(char*, vert->outPorts, j);
                fprintf(piHandle, "%d,%s,%s,%s\n", i, array_fetch(edge*, vert->outEdges, j)->origName, array_fetch(char*, vert->outPorts, j), vert->name);
            }
        }
        else
        {
            for(j=0; j< array_n(vert->outEdges); j++)
            {
                char *port = array_fetch(char*, vert->outPorts, j);
                if(strstr(port, ".QN"))
                    continue;
                fprintf(piHandle, "%d,%s,%s,%s\n", i, array_fetch(edge*, vert->outEdges, j)->origName, array_fetch(char*, vert->outPorts, j), vert->name);
            }
        }
        
    }
    fclose(piHandle);
    free(opFileName);
}

/**
 * @brief Get the fanin pi conflict object
 * 
 * @param G         - CAST graph structure.
 * @param dumpDir   - Output directory to store all the results for current file.
 * @param rare_nets - Array of pointers to valid rare nets.
 * 
 * Function performs bfs on provided rare nets and finds out conflicting PI nets 
 * \todo add proper description for get_fanin_pi_conflict()
 */
void get_fanin_pi_conflict(graph *G, char *dumpDir, array_t *rare_nets)
{
	char *opFileName = (char*)malloc(sizeof(char)*10000);
	strcpy(opFileName, dumpDir);
	strcat(opFileName, "/fanin_cone_pi.csv");	

    //collect nets for which fan-in cone analysis is to be performed 
    FILE *outputFile;
	outputFile = fopen(opFileName, "w");

    // array_t *faninPIEdges = array_alloc(edge*, 1);
    // array_t *faninPIVertices = array_alloc(vertex*, 1);
    edge* edg, *tempEdg, *edg1, *edg2;
    vertex *vert;

	int flag;
		
    array_t* pri_stage_ip = G->primInEdges;
	// array_t* fanin = array_alloc(edge*, 1);
	// array_t* fanin_wo_dup = array_alloc(edge*, 1);

    //assinging bPseudoPrimIn=1 for sequential outputs
    int totalpseudo_count = 0;
    for(size_t i = 0; i < array_n(G->seqGates); i ++)
    {
        vert = array_fetch(vertex*, G->seqGates, i);
        for(size_t j = 0; j < array_n(vert->outEdges); j ++)
        {
            edg = array_fetch(edge*, vert->outEdges, j);
            edg->bPseudoPrimIn = 1;
            totalpseudo_count++;
        }
    }

    // printf("Total edges: %d\n", array_n(G->edgArr));
    // printf("Total vertices: %d\n", array_n(G->vertexArr));
    // printf("Total seq vertices: %d\n", array_n(G->seqGates));
    // printf("Total pseudo edge count: %d\n", totalpseudo_count);
    // printf("Total topo levels: %d\n", G->topoLevels);
    
    array_t* edgArr=NULL;// = array_alloc(edge*, 1);
    array_t* edgArrOp = array_alloc(edge*, 1);
    int *coveredFlag;// = (int*)calloc(array_n(G->edgArr), sizeof(int));
    int *coveredPI;// = (int*)calloc(array_n(G->edgArr), sizeof(int));
    int *coveredPseudoPI;// = (int*)calloc(array_n(G->seqGates), sizeof(int));
    int totalPI = totalpseudo_count + array_n(G->primInEdges);

    int coveredPI_count = 0;
    int innerBreak = 0;

    int total_vert = array_n(G->seqGates) + array_n(G->combGates);
        
	for(size_t i = 0; i < array_n(rare_nets); i ++)
	{
		int count = 0;
        coveredPI_count = 0;

		edg = array_fetch(edge*, rare_nets, i);
        //printf("%s: %d\n", edg->name, edg->fromNode->lvlIdx);
        //fprintf(inFile, "rare_edge,%s\n", edg->name);
        fprintf(outputFile, "%s,", edg->origName);
        
        //array_free(edgArr);
        edgArr = array_alloc(edge*, 1);

        coveredFlag = (int*)calloc(array_n(G->edgArr), sizeof(int));
        
        coveredPI = (int*)calloc(array_n(G->edgArr), sizeof(int));

        //free(coveredPseudoPI);
        coveredPseudoPI = (int*)calloc(total_vert, sizeof(int));

        if(edg == NULL)
        {
            printf("ERROR: No such net in current design. \n");
            return NULL;
        }
        else
        {
            //find driving cell
            vert = edg->fromNode;
            //if driving cell is present obtain its input edges
            int coveredAllPiF = 0;
            if(vert != NULL)
            {
                for(size_t j = 0; j < array_n(vert->inEdges); j ++)
                {
                    edg2 = array_fetch(edge*, vert->inEdges, j);
                    if(coveredFlag[edg2->idx] == 0)
                    {
                        array_insert_last(edge*, edgArr, edg2);
                        coveredFlag[edg2->idx] = 1;

                        //fanin cone primary inputs                        
                        if( edg2->bPrimIn == true && coveredPI[edg2->idx] == 0)
                        {
                            coveredPI[edg2->idx] = 1;
                            coveredPI_count++;
                        }
                        else if(edg2->bPseudoPrimIn == true && coveredPseudoPI[edg2->fromNode->idx] == 0)
                        {
                            coveredPseudoPI[edg2->fromNode->idx] = 1;
                            coveredPI_count++;
                        }                        
                    }                        
                }
                if(coveredPI_count == totalPI)
                {
                    //all PI covered no need to further fanin
                    //dump all PI
                    coveredAllPiF = 1;
                    for(int l=0; l<array_n(G->primInEdges);l++)
                    {
                        fprintf(outputFile, "%s,", array_fetch(edge*, G->primInEdges, l)->origName);            
                    }
                    for(int l=0; l<array_n(G->seqGates);l++)
                    {
                        fprintf(outputFile, "%s,", array_fetch(vertex*, G->seqGates, l)->name);            
                    }
                    fprintf(outputFile, "\n"); 
                    continue;
                }
                    
            }
                
            while(array_n(edgArr)!=0 )
            {
                if(coveredAllPiF == 1)
                    break;
                edgArrOp = array_alloc(edge*, 1);

                free(coveredFlag);
                innerBreak = 0;
                coveredFlag = (int*)calloc(array_n(G->edgArr), sizeof(int));
                for(size_t k=0; k<array_n(edgArr); k++)
                {
                    //edg1 = findEdge(array_fetch(char*, edgArr, k), G->edgArr);
                    edg1 = array_fetch(edge*, edgArr, k);
                    vert = edg1->fromNode;
                    if(vert != NULL && strstr(vert->type->name, "df") == NULL)
                    {
                        for(size_t j = 0; j < array_n(vert->inEdges); j ++)
                        {
                            edg2 = array_fetch(edge*, vert->inEdges, j);
                            if(coveredFlag[edg2->idx] == 0) //to make sure no duplicates are added
                            {
                                array_insert_last(edge*, edgArrOp, edg2);
                                coveredFlag[edg2->idx] = 1;

                                //fanin cone primary inputs                        
                                if( edg2->bPrimIn == true && coveredPI[edg2->idx] == 0)
                                {
                                    coveredPI[edg2->idx] = 1;
                                    coveredPI_count++;
                                }
                                else if(edg2->bPseudoPrimIn == true && coveredPseudoPI[edg2->fromNode->idx] == 0)
                                {
                                    coveredPseudoPI[edg2->fromNode->idx] = 1;
                                    coveredPI_count++;
                                }   
                            }
                            
                        }
                    }
                    if(coveredPI_count == totalPI)
                    {
                        //all PI covered no need to further fanin
                        coveredAllPiF = 1;
                        innerBreak = 1;
                        break;
                    }                    
                }
                //empty edge array - for next iteration
                //printf("edgArr: %d\n", array_n(edgArr));
                //printf("edgArrOp: %d\n", array_n(edgArrOp));
                //array_free(edgArr);
                //edgArr = array_alloc(edge*, 1);
                //edgArr = array_dup(edgArrOp);
                edgArr = edgArrOp;
                // for(int l=0; l<array_n(edgArrOp); l++)
                // {
                //     array_insert_last(edge*, edgArr, array_fetch(edge*, edgArrOp, l));
                // }

                //array_free(edgArrOp);
                //edgArrOp = array_alloc(edge*, 1);
                edgArrOp = NULL;
                
                if(innerBreak == 1)
                {   //dump all PI
                    
                    for(int l=0; l<array_n(G->primInEdges);l++)
                    {
                        fprintf(outputFile, "%s,", array_fetch(edge*, G->primInEdges, l)->origName);            
                    }
                    for(int l=0; l<array_n(G->seqGates);l++)
                    {
                        fprintf(outputFile, "%s,", array_fetch(vertex*, G->seqGates, l)->name);            
                    }
                    fprintf(outputFile, "\n"); 
                    
                    break;
                }
            }
            
            array_free(edgArr);
            //array_free(edgArrOp);
            
            //all graph till PI traversed fill up fanin cone
            if(coveredAllPiF == 0)
            {
                for(int l=0; l<array_n(G->primInEdges);l++)
                {
                    edg1 = array_fetch(edge*, G->primInEdges, l);
                    if(coveredPI[edg1->idx] == 1)
                        fprintf(outputFile, "%s,", array_fetch(edge*, G->primInEdges, l)->origName);            
                }
                for(int l=0; l<array_n(G->seqGates);l++)
                {
                    vert = array_fetch(vertex*, G->seqGates, l);
                    if(coveredPseudoPI[vert->idx] == 1)
                        fprintf(outputFile, "%s,", vert->name);            
                }
                fprintf(outputFile, "\n"); 
            }
            

            free(coveredPseudoPI);
            free(coveredPI);
            free(coveredFlag);
            //array_free(faninPIEdges);
            //array_free(faninPIVertices);
        
        }

        
	}
	fclose(outputFile);
	free(opFileName);
    // fclose(inFile);
	// free(inFileName);
	//array_free(fanin);
	// array_free(fanin_wo_dup);

}

/**
 * @brief Get the fanin set object
 * 
 * @param G         - CAST graph structure.
 * @param dumpDir   - Output directory to store all the results for current file.
 * @param rare_nets - Array of pointers to valid rare nets.
 * 
 * Function performs bfs on provided rare nets and finds out nets in fanin cone
 * \todo add proper description for get_fanin_set()
 */
void get_fanin_set(graph *G, char *dumpDir, array_t *rare_nets)
{
	char *opFileName = (char*)malloc(sizeof(char)*10000);
	strcpy(opFileName, dumpDir);
	strcat(opFileName, "/fanin_cone_set.csv");	

    // char *inFileName = (char*)malloc(sizeof(char)*10000);
	// strcpy(inFileName, dumpDir);
	// strcat(inFileName, "/fanin_detail.csv");

    //collect nets for which fan-in cone analysis is to be performed 

	FILE *outputFile;
	outputFile = fopen(opFileName, "w");

    // FILE *outputFile_result;
	// outputFile_result = fopen(opFileName_result, "w");

    // printf("!!!!!!! %s\n", inFileName);
    // FILE *inFile;
	// inFile = fopen(inFileName, "w");
	
    // array_t *faninPIEdges = array_alloc(edge*, 1);
    // array_t *faninPIVertices = array_alloc(vertex*, 1);
    edge* edg, *tempEdg, *edg1, *edg2;
    vertex *vert;

	int flag;
	//fprintf(outputFile, "Net_Name,minfaninEntropy_l1,avgfaninEntropy_l1\n");
	//for(size_t i=0; i<array_n(excite_0_edges); i++){
		
    array_t* pri_stage_ip = G->primInEdges;
	// array_t* fanin = array_alloc(edge*, 1);
	// array_t* fanin_wo_dup = array_alloc(edge*, 1);

    //array_t* lowEdges = array_join(excite_0_edges, excite_1_edges) ;
    

    //assinging bPseudoPrimIn=1 for sequential outputs
    int totalpseudo_count = 0;
    for(size_t i = 0; i < array_n(G->seqGates); i ++)
    {
        vert = array_fetch(vertex*, G->seqGates, i);
        for(size_t j = 0; j < array_n(vert->outEdges); j ++)
        {
            edg = array_fetch(edge*, vert->outEdges, j);
            edg->bPseudoPrimIn = 1;
            totalpseudo_count++;
        }
    }

    // printf("Total edges: %d\n", array_n(G->edgArr));
    // printf("Total vertices: %d\n", array_n(G->vertexArr));
    // printf("Total seq vertices: %d\n", array_n(G->seqGates));
    // printf("Total pseudo edge count: %d\n", totalpseudo_count);
    // printf("Total topo levels: %d\n", G->topoLevels);
    

    array_t* edgArr=NULL;// = array_alloc(edge*, 1);
    array_t* edgArrOp = array_alloc(edge*, 1);
    int *coveredFlag;// = (int*)calloc(array_n(G->edgArr), sizeof(int));
    int *coveredPI;// = (int*)calloc(array_n(G->edgArr), sizeof(int));
    int *coveredRareNet;
    int *rareNetArray = (int*)calloc(array_n(G->edgArr), sizeof(int));
    int *coveredPseudoPI;// = (int*)calloc(array_n(G->seqGates), sizeof(int));
    int totalPI = totalpseudo_count + array_n(G->primInEdges);

    int coveredPI_count = 0;
    int coveredRareNet_count = 0;
    int innerBreak = 0;

    int total_vert = array_n(G->seqGates) + array_n(G->combGates);
        
    int *set_size_array = (int*)calloc(array_n(rare_nets), sizeof(int));

    int totalRare = array_n(rare_nets);
    for(size_t i = 0; i < array_n(rare_nets); i ++)
	{
        edg = array_fetch(edge*, rare_nets, i);
        rareNetArray[edg->idx] = 1;
    }

    //fprintf(outputFile, "Total rare edges: %d\n", totalRare);
    // fprintf(outputFile_result, "Total rare edges: %d\n", totalRare);

	for(size_t i = 0; i < array_n(rare_nets); i ++)
	{
		int count = 0;
        coveredPI_count = 0;

        //current rare net
		edg = array_fetch(edge*, rare_nets, i);
        //printf("%s: %d\n", edg->name, edg->fromNode->lvlIdx);
        
        fprintf(outputFile, "%s,", edg->origName);
        
        //array_free(edgArr);
        edgArr = array_alloc(edge*, 1);

        coveredFlag = (int*)calloc(array_n(G->edgArr), sizeof(int));
        
        coveredPI = (int*)calloc(array_n(G->edgArr), sizeof(int));

        coveredRareNet = (int*)calloc(array_n(G->edgArr), sizeof(int));

        //free(coveredPseudoPI);
        coveredPseudoPI = (int*)calloc(total_vert, sizeof(int));

        if(edg == NULL)
        {
            printf("ERROR: No such net in current design. \n");
            return NULL;
        }
        else
        {
            //find driving cell
            vert = edg->fromNode;
            //if driving cell is present obtain its input edges
            if(vert != NULL)
            {
                for(size_t j = 0; j < array_n(vert->inEdges); j ++)
                {
                    edg2 = array_fetch(edge*, vert->inEdges, j);
                    if(rareNetArray[edg2->idx] == 1 && coveredRareNet[edg2->idx] == 0)
                    {
                        //printf("%s,", edg2->name);
                        fprintf(outputFile, "%s,", edg2->origName);
                        coveredRareNet[edg2->idx] = 1;
                        set_size_array[i]++;
                        coveredRareNet_count++;

                    }
                    if(coveredFlag[edg2->idx] == 0)
                    {
                        array_insert_last(edge*, edgArr, edg2);
                        coveredFlag[edg2->idx] = 1;

                        //fanin cone primary inputs                        
                        if( edg2->bPrimIn == true && coveredPI[edg2->idx] == 0)
                        {
                            coveredPI[edg2->idx] = 1;
                            coveredPI_count++;
                        }
                        else if(edg2->bPseudoPrimIn == true && coveredPseudoPI[edg2->fromNode->idx] == 0)
                        {
                            coveredPseudoPI[edg2->fromNode->idx] = 1;
                            coveredPI_count++;
                        }                        
                    }                        
                }
                if(coveredPI_count == totalPI)
                {
                    //all PI covered no need to further fanin
                    continue;
                }
                    
            }
                
            while(array_n(edgArr)!=0)
            {
                edgArrOp = array_alloc(edge*, 1);

                free(coveredFlag);
                innerBreak = 0;
                coveredFlag = (int*)calloc(array_n(G->edgArr), sizeof(int));
                for(size_t k=0; k<array_n(edgArr); k++)
                {
                    //edg1 = findEdge(array_fetch(char*, edgArr, k), G->edgArr);
                    edg1 = array_fetch(edge*, edgArr, k);
                    vert = edg1->fromNode;
                    if(vert != NULL && strstr(vert->type->name, "df") == NULL)
                    {
                        for(size_t j = 0; j < array_n(vert->inEdges); j ++)
                        {
                            edg2 = array_fetch(edge*, vert->inEdges, j);
                            if(rareNetArray[edg2->idx] == 1 && coveredRareNet[edg2->idx] == 0)
                            {
                                //printf("%s,", edg2->name);
                                fprintf(outputFile, "%s,", edg2->origName);
                                coveredRareNet[edg2->idx] = 1;
                                coveredRareNet_count++;
                                set_size_array[i]++;
                            }
                            if(coveredFlag[edg2->idx] == 0) //to make sure no duplicates are added
                            {
                                array_insert_last(edge*, edgArrOp, edg2);
                                coveredFlag[edg2->idx] = 1;

                                //fanin cone primary inputs                        
                                if( edg2->bPrimIn == true && coveredPI[edg2->idx] == 0)
                                {
                                    coveredPI[edg2->idx] = 1;
                                    coveredPI_count++;
                                }
                                else if(edg2->bPseudoPrimIn == true && coveredPseudoPI[edg2->fromNode->idx] == 0)
                                {
                                    coveredPseudoPI[edg2->fromNode->idx] = 1;
                                    coveredPI_count++;
                                }   
                            }
                            
                        }
                    }
                    if(coveredPI_count == totalPI)
                    {
                        //all PI covered no need to further fanin
                        innerBreak = 1;
                        break;
                    }                    
                }
                edgArr = edgArrOp;
                edgArrOp = NULL;
                
                if(coveredRareNet_count ==totalRare)
                {
                    coveredRareNet_count = 0;
                    break;
                }

                if(innerBreak == 1)
                {   //dump all PI
                    break;
                }
                
                    
            }
            //printf("\n");
            fprintf(outputFile, "\n");
            array_free(edgArr);
            
            free(coveredPseudoPI);
            free(coveredPI);
            free(coveredFlag);
            free(coveredRareNet);
        
        }

        
	}
    free(rareNetArray);
	fclose(outputFile);
	free(opFileName);
    free(set_size_array);
    //fclose(inFile);
	//free(inFileName);
	//array_free(fanin);
	// array_free(fanin_wo_dup);

}

/**
 * @brief Get the single optimization object
 * 
 * @param G                 - CAST graph structure.
 * @param inputFile         - Flatttened gate-level verilog netlist.   
 * @param exeDir            - executables directory. Provide location of all executable files required for MERS.
 * @param dumpDir           - Output directory to store all the results for current file.
 * @param ndetect           - n-detect optimization
 * @param moduleName        - Top module of the design.
 * @param libName           - Library name {"LEDA", "skywater"}. Current iteration supports mentioned libraries.
 * @param cktType           - Type of circuit {comb/seq}
 * @param clkN              - Clock name for designs with clock.
 * @param clkV              - Off-state clock value.
 * @param wrst              - Reset flag. {1: use reset, 0:do not use reset}
 * @param rstN              - Reset name for designs with reset.
 * @param rstV              - Off-state reset value.
 * @param verboseFlag       - quiet/verbose flag.
 * @param ntrig             - Number of triggers per Trojan.
 * @param randomness        - Randomnes parameter. {-1:time base, 0:systmatic, seed: seed based}.
 * @param exhaustive        - Flag used innternally.
 * @param libFile           - Library file if working with separate reduce library file.
 * @param justOptCov        - Flag to perform only optimization and coverage.
 * @param tmaxSource        - Path to tetramax source file.
 * @param ndetectApp        - n-detect optimization.
 * @param valid_rare_nets   - Array of pointers to valid rare nets.
 * @param fullScan          - Scan flag set to 1.
 * @param topoArr           - Topologically sorted graph vertices.
 * 
 * @note
 * 
 * Function calls single_flow.py script to perform optimization to get test vectors
 * \todo Write better description for get_single_optimization() function.
 */
// Function to call basic optimization script
void get_single_optimization(graph *G, char *inputFile, char *exeDir, char *dumpDir, char *ndetect, char *moduleName, char *libName, char *cktType, char *clkN, char *clkV, char *wrst, char *rstN, char *rstV, char *verboseFlag, char *ntrig, char *randomness, int exhaustive, char *libFile, int justOptCov, char *tmaxSource, char *ndetectApp, array_t *valid_rare_nets, int fullScan, array_t *topoArr)
{
    char *get_basic_opt_command;

    if(release == 0)
    {
        if(atoi(verboseFlag)==1)
            if(atoi(wrst) == 1)
                asprintf(&get_basic_opt_command, "python3 %s/single_flow.py -vF %s -f %s/base_patterns.csv -d %s -e %s -N %s -T %s -m %s -lib %s -%s -clk %s -clkV %s -wreset -rst %s -rstV %s -v -seed %s -libFile %s -justOpt %d -ndApp %s -tmaxSrc %s\n", exeDir, inputFile, dumpDir, dumpDir, exeDir, ndetect, ntrig, moduleName, libName, cktType, clkN, clkV, rstN, rstV, randomness, libFile, justOptCov, ndetectApp, tmaxSource);
            else
                asprintf(&get_basic_opt_command, "python3 %s/single_flow.py -vF %s -f %s/base_patterns.csv -d %s -e %s -N %s -T %s -m %s -lib %s -%s -clk %s -clkV %s -woreset -rst %s -rstV %s -v -seed %s -libFile %s -justOpt %d -ndApp %s -tmaxSrc %s\n", exeDir, inputFile, dumpDir, dumpDir, exeDir, ndetect, ntrig, moduleName, libName, cktType, clkN, clkV, rstN, rstV, randomness,libFile, justOptCov, ndetectApp, tmaxSource);
        else
            if(atoi(wrst) == 1)
                asprintf(&get_basic_opt_command, "python3 %s/single_flow.py -vF %s -f %s/base_patterns.csv -d %s -e %s -N %s -T %s -m %s -lib %s -%s -clk %s -clkV %s -wreset -rst %s -rstV %s -q -seed %s -libFile %s -justOpt %d -ndApp %s -tmaxSrc %s\n", exeDir, inputFile, dumpDir, dumpDir, exeDir, ndetect, ntrig, moduleName, libName, cktType, clkN, clkV, rstN, rstV, randomness, libFile, justOptCov, ndetectApp, tmaxSource);
            else
                asprintf(&get_basic_opt_command, "python3 %s/single_flow.py -vF %s -f %s/base_patterns.csv -d %s -e %s -N %s -T %s -m %s -lib %s -%s -clk %s -clkV %s -woreset -rst %s -rstV %s -q -seed %s -libFile %s -justOpt %d -ndApp %s -tmaxSrc %s\n", exeDir, inputFile, dumpDir, dumpDir, exeDir, ndetect, ntrig, moduleName, libName, cktType, clkN, clkV, rstN, rstV, randomness, libFile, justOptCov, ndetectApp, tmaxSource);
    }
    else
    {
        if(atoi(verboseFlag)==1)
            if(atoi(wrst) == 1)
                asprintf(&get_basic_opt_command, "%s/single_flow -vF %s -f %s/base_patterns.csv -d %s -e %s -N %s -T %s -m %s -lib %s -%s -clk %s -clkV %s -wreset -rst %s -rstV %s -v -seed %s -libFile %s -justOpt %d -ndApp %s -tmaxSrc %s\n", exeDir, inputFile, dumpDir, dumpDir, exeDir, ndetect, ntrig, moduleName, libName, cktType, clkN, clkV, rstN, rstV, randomness, libFile, justOptCov, ndetectApp, tmaxSource);
            else
                asprintf(&get_basic_opt_command, "%s/single_flow -vF %s -f %s/base_patterns.csv -d %s -e %s -N %s -T %s -m %s -lib %s -%s -clk %s -clkV %s -woreset -rst %s -rstV %s -v -seed %s -libFile %s -justOpt %d -ndApp %s -tmaxSrc %s\n", exeDir, inputFile, dumpDir, dumpDir, exeDir, ndetect, ntrig, moduleName, libName, cktType, clkN, clkV, rstN, rstV, randomness,libFile, justOptCov, ndetectApp, tmaxSource);
        else
            if(atoi(wrst) == 1)
                asprintf(&get_basic_opt_command, "%s/single_flow -vF %s -f %s/base_patterns.csv -d %s -e %s -N %s -T %s -m %s -lib %s -%s -clk %s -clkV %s -wreset -rst %s -rstV %s -q -seed %s -libFile %s -justOpt %d -ndApp %s -tmaxSrc %s\n", exeDir, inputFile, dumpDir, dumpDir, exeDir, ndetect, ntrig, moduleName, libName, cktType, clkN, clkV, rstN, rstV, randomness, libFile, justOptCov, ndetectApp, tmaxSource);
            else
                asprintf(&get_basic_opt_command, "%s/single_flow -vF %s -f %s/base_patterns.csv -d %s -e %s -N %s -T %s -m %s -lib %s -%s -clk %s -clkV %s -woreset -rst %s -rstV %s -q -seed %s -libFile %s -justOpt %d -ndApp %s -tmaxSrc %s\n", exeDir, inputFile, dumpDir, dumpDir, exeDir, ndetect, ntrig, moduleName, libName, cktType, clkN, clkV, rstN, rstV, randomness, libFile, justOptCov, ndetectApp, tmaxSource);
    }
    
    printf("INFO: Running single flow optimization script...\n");
    // printf("%s\n", get_basic_opt_command);
    system(get_basic_opt_command);
    free(get_basic_opt_command);

    // if(strstr(ndetectApp, "-1"))
    // {
    //     printf("INFO: Processing on the go for pattern optimzation\n");
    //     array_t* final_real_patterns = vector_otg_optimization(G, dumpDir, ndetect, topoArr, fullScan, valid_rare_nets, exeDir);
    //     //-- checked for memory free issue-> freed all allocated memory except final_real_patterns
        
    // }
    // printf("INFO: Optimization complete...\n");
    
}

/**
 * @brief 
 * 
 * @param G                     - CAST graph structure.                   
 * @param valid_triggers        - Nested list of valid triggers.
 * @param valid_payloads        - List of valid payloads. 
 * @param dumpDir               - Output directory to store all the results for current file. 
 * @param verboseFlag           - quiet/verbose flag.       
 * @param libName               - Library name {"LEDA", "skywater"}. Current iteration supports mentioned libraries.
 * @param cktType               - Type of circuit {comb/seq}
 * @param clkN                  - Clock name for designs with clock.
 * @param clkV                  - Off-state clock value.
 * @param wrst                  - Reset flag. {1: use reset, 0:do not use reset}
 * @param rstN                  - Reset name for designs with reset.
 * @param rstV                  - Off-state reset value.
 * @param exeDir                - executables directory. Provide location of all executable files required for MERS.
 * @param inputFile             - Flatttened gate-level verilog netlist.   
 * @param moduleName            - Top module of the design.
 * @param tFileFlag             - Trojan file flag.
 * @param justified_triggers    - Justified trigger netsed list.
 * @param justified_payloads    - Justificed payload list.
 * @param libFile               - Library file if working with separate reduce library file.
 * @param tmaxSource            - Path to tetramax source file.
 * 
 * @note
 * 
 * Function creates script to validate trigger condition
 *  -#  tmax_script_justify.tcl
 *  -#  tmax_script_justify_trojFile.tcl \n \n
 * and stores results in justify.log file. Later file is parsed and results are stored in validTrojanNo.txt file.
 */
// Function to validate created Trojans / provided Trojans
void validate_trojans(graph* G, array_t *valid_triggers, array_t *valid_payloads, char* dumpDir, char *verboseFlag, char *libName, char *cktType, char *clkN, char *clkV, char *wrst, char *rstN, char *rstV, char *exeDir, char *inputFile, char *moduleName, char *tFileFlag, array_t **justified_triggers, array_t **justified_payloads, char *libFile, char *tmaxSource) 
{
    //------------------- To generate script to justify Trojans from TMAX -------------------
    
    char *scriptFileName = (char*)malloc(sizeof(char)*10000);
    strcpy(scriptFileName, dumpDir);
    strcat(scriptFileName, "/");

    if(atoi(tFileFlag) == 0)
    {        
        strcat(scriptFileName, "tmax_script_justify.tcl");
    }
    else
    {
        strcat(scriptFileName, "tmax_script_justify_trojFile.tcl");
    }
    
    //script creation

    FILE *script_file_handle = fopen(scriptFileName, "w");

    //to keep log
    fprintf(script_file_handle, "set_messages -log %s/justify.log -replace \n", dumpDir);    
    
    //library setup to run TMAX
    if(strstr(libName, "LEDA"))
    {
        if(strstr(libFile, "NA"))
            fprintf(script_file_handle, "read_netlist %s/lec25dscc25.v -library\n", exeDir);
        else
            fprintf(script_file_handle, "read_netlist %s -library\n", libFile);
    }
    else if (strstr(libName, "skywater"))
    {
        if(strstr(libFile, "NA"))
            fprintf(script_file_handle, "read_netlist %s/sky130.v -library\n", exeDir);
        else
            fprintf(script_file_handle, "read_netlist %s -library\n", libFile);
    }  

    //read netlist
    fprintf(script_file_handle, "read_netlist %s\n", inputFile);    
    
    fprintf(script_file_handle, "set_build -nodelete_unused_gates -merge noglobal_tie_propagate\n");            

    //build top module 
    fprintf(script_file_handle, "run_build_model %s\n", moduleName);            

    if(strstr(cktType, "seq"))
    {
        //split multiple clocks 
        array_t *clkNArr = string_strip(clkN, ",");
        array_t *clkVArr = string_strip(clkV, ",");
        for(int c=0; c<array_n(clkNArr); c++)
        {
            char *tempClkN = array_fetch(char*, clkNArr, c);
            char *tempClkV = array_fetch(char*, clkVArr, c);
            fprintf(script_file_handle, "add_clocks %s %s\n", tempClkV, tempClkN);
        }
        array_free(clkNArr);
        array_free(clkVArr);
        // fprintf(script_file_handle, "add_clocks %s %s\n", clkV, clkN);            
        if(atoi(wrst) == 1)
        {
            //split multiple resets
            array_t *rstNArr = string_strip(rstN, ",");
            array_t *rstVArr = string_strip(rstV, ",");
            for(int c=0; c<array_n(rstNArr); c++)
            {
                char *temprstN = array_fetch(char*, rstNArr, c);
                char *temprstV = array_fetch(char*, rstVArr, c);
                //fprintf(script_file_handle, "add_clocks %s %s\n", temprstV, temprstN);
            }
            array_free(rstNArr);
            array_free(rstVArr);
            // fprintf(script_file_handle, "add_clocks %s %s\n", rstV, rstN);            
        }
    }

    //scan ability
    if(strstr(cktType, "seq"))
        fprintf(script_file_handle, "set_scan_ability on -all \n");    

    //drc
    fprintf(script_file_handle, "drc \n");            

    //test
    fprintf(script_file_handle, "test \n");    

    //pindata
    fprintf(script_file_handle, "set pindata seq_sim_data \n");        
    
    //command to justify trojans
    for(int i=0; i<array_n(valid_triggers); i++)
    {
        array_t *trigInstances = array_fetch(array_t*, valid_triggers, i);

        fprintf(script_file_handle, "run_justification -full_sequential -set { ");            

        for(int j=0; j<array_n(trigInstances); j++)
        {
            edge* edg = array_fetch(edge*, trigInstances, j);
            if(edg->lowProbVal == 0 )
                fprintf(script_file_handle, "%d 0 ", edg->tmax_id);            
            else if(edg->lowProbVal == 1 )
                fprintf(script_file_handle, "%d 1 ", edg->tmax_id);           
            else
            {
                printf("!!ERROR: edge exciteation value is wrong Trojan justification: %d\n", edg->lowProbVal);
                exit(0);
            }            
        }
        fprintf(script_file_handle, "} -verbose -store\n");                    
    }

    //report patterns
    fprintf(script_file_handle, "report_patterns -internal -all \n");    

    //exit
    fprintf(script_file_handle, "exit \n");  

    fclose(script_file_handle);
    
    char tmax_command[10000];
    if(strstr(tmaxSource, "NA")) 
        sprintf(tmax_command, "tmax -shell -tcl %s > %s/justify.log\n", scriptFileName, dumpDir);
    else if(strstr(tmaxSource, "ECE")) 
        sprintf(tmax_command, "source /apps/settings && tmax -shell -tcl %s > %s/justify.log\n", scriptFileName, dumpDir);
    else
        sprintf(tmax_command, "%s && tmax -shell -tcl %s > %s/justify.log\n", tmaxSource, scriptFileName, dumpDir);

    free(scriptFileName);
    
    // printf(tmax_command);
    
    // Execute the TCL command
    system(tmax_command);

    //------------------- To parse script output and to filter out Trojans -------------------

    // char *justifyFileName = (char*)malloc(sizeof(char)*10000);
    char *justifyFileName;
    asprintf(&justifyFileName, "%s/justify.log", dumpDir);
    // strcpy(justifyFileName, dumpDir);
    // strcat(justifyFileName, "/");
    // strcat(justifyFileName, "/justify.log");
    
    int lineLength = 500000;
    char buffer[lineLength];
    
    //remove primitive file if already present as we are appending data
    if( access( justifyFileName, F_OK ) != 0 ) {
        printf("!!ERROR: justify file not present: %s.\n", justifyFileName);
        exit(0);
    }

    FILE *justFileHandle = fopen(justifyFileName, "r");

    // now read the input file
    int line = 1;
    int counter = 0;
    int statCount = 0;

    // int *trojValidFlag = (int*)calloc(array_n(valid_triggers), sizeof(int));
    int *trojValidFlag = (int*)malloc(sizeof(int)*array_n(valid_triggers));
    memset(trojValidFlag,0,array_n(valid_triggers));

    array_t* wordArr;
    array_t* tempwordArr;
    char *word;
    int satTroj = 0;
    while (fgets(buffer,lineLength,justFileHandle) != NULL)
    {
        if (buffer[0] == '/' && buffer[1] == '/')
            continue; // line comment
		
        if (buffer[0] != '/' || buffer[1] != '/')
        {
			// remove trailing white spaces
            for (int i = strlen(buffer)-1; i >= 0; i--)
            {
                if (buffer[i] == ' ') 
                    buffer[i] = '\0';
                else break;
            }			                    
        }

        if(strstr(buffer, "Full-Sequential Justification status :"))
        {
            wordArr = string_strip(buffer, ": \n");
            word = array_fetch(char*, wordArr, array_n(wordArr)-1);

            //edge* edg = array_fetch(edge*, rare_nets, statCount);
            if(strstr("SATISFIED", word))
            {
                trojValidFlag[statCount++] = 1;
                satTroj++;
            }
            else if(strstr("CONFLICT", word))
            {
                trojValidFlag[statCount++] = 0;                
            }
            else if(strstr("ABORT", word))
            {
                trojValidFlag[statCount++] = -1;
            }
            else{
                printf("!!ERROR: Different justification status: %s\n", word);
                exit(0);
            }       
            free(wordArr);                 
        }                              		 
    }
    if(satTroj == 0)   
    {
        printf("WARNING: All Trojans are invalid Trojans\n");
        fclose(justFileHandle);
        free(justifyFileName);
        exit(0);
    }
    // free(buffer);
    fclose(justFileHandle);
    free(justifyFileName);

    //------------------- To dump justitified Trojans and to update justified(triggers/payloads) -------------------

    char *opFileName = (char*)malloc(sizeof(char)*10000);
    strcpy(opFileName, dumpDir);
    strcat(opFileName, "/validTrojanNo.txt");

    // Open the "just_results.txt" file
    FILE *vptr = fopen(opFileName, "w");

    int justCount = 0;
    for(int i=0; i<array_n(valid_triggers); i++)
    {
        if(trojValidFlag[i] == 1)           //dump valid justified Trojans
        {
            justCount++;
            
            fprintf(vptr, "%d\n", i);                        
            
            array_t *trigger_set = array_fetch(edge*, valid_triggers, i);
            edge *payload = array_fetch(edge*, valid_payloads, i);

            array_insert_last(array_t*, *justified_triggers, trigger_set);
            array_insert_last(edge*, *justified_payloads, payload);                        
        }
        // else                                //dump Trojans that can't be justified
        // {
        // }
    }
    fclose(vptr); 
    free(opFileName);
    // if(justCount)
    //     free(trojValidFlag);

    if(array_n(*justified_triggers) == 0)   
    {
        printf("WARNING: All Trojans are invalid Trojans\n");
        exit(0);
    }
    // printf("INFO: dumping valid trojans\n");
    dump_valid_trojans(justified_triggers, justified_payloads, dumpDir);
}

/**
 * @brief Function to dump valid Trojans.
 * 
 * @param justified_triggers    - Nested list of justified triggers.
 * @param justified_payloads    - List of justified payloads.
 * @param dumpDir               - Output directory to store all the results for current file. 
 * 
 * @note
 * 
 * Valid Trojans are dumped in valid_trojans_<trigSize>.txt file.
 */
void dump_valid_trojans(array_t **justified_triggers, array_t **justified_payloads, char *dumpDir)
{
    
    array_t *trigEntry = array_fetch(array_t*, *justified_triggers, 0);
    int trigSize = array_n(trigEntry);

    char *opFileName;

    asprintf(&opFileName, "%s/valid_trojans_%d.txt", dumpDir, trigSize);
    
    FILE *tptr = fopen(opFileName, "w");

    int trojN = array_n(*justified_triggers);
    for (int i = 0; i < trojN; i++)
    {        
        fprintf(tptr, "%d.--", i);      
        array_t *trigEntry = array_fetch(array_t*, *justified_triggers, i);
        int trigN = array_n(trigEntry);
        for (int j = 0; j < trigN; j++)
        {   
            edge *tedg = array_fetch(edge*, trigEntry, j);                        
            if(tedg->lowProbVal == 0)
                fprintf(tptr, "%s(val: %d, idx: %d)--", tedg->origName, 0, (tedg->fromNode) ? tedg->fromNode->topoIdx : 0);
            else
                fprintf(tptr, "%s(val: %d, idx: %d)--", tedg->origName, 1, (tedg->fromNode) ? tedg->fromNode->topoIdx : 0);            
        }
        edge *pedg = array_fetch(edge*, *justified_payloads, i);                 
        fprintf(tptr, "%s(idx: %d);\n", pedg->origName, (pedg->fromNode) ? pedg->fromNode->topoIdx : 0);        
    }
    fclose(tptr);
    free(opFileName);

}

/**
 * @brief 
 * 
 * @param G                     - CAST graph data structure.
 * @param topoArr               - Topologically sorted list of vertices.
 * @param dumpDir               - Output directory.
 * @param justified_triggers    - Nested list of justified triggers.
 * @param justified_payloads    - List of justified payloads.
 * @param valid_rare_nets       - List of valid rare nets.
 * @param ndetect               - N-detect.
 * @param trigN                 - Number of triggers per Trojan.
 * @param states                - States in Trojan.
 * @param scanFlag              - Scan flag set to 1.
 * @param flowFlag              - Flow flag.?
 * @param exeDir                - Executables directory.
 * @param postOpt               - Post optimization ?
 * @param codeBase              - Code base for iverilog simulation.
 * @param inputFile             - Flattened gate-level netlist.
 * @param moduleName            - Top module name.
 * @param cktType               - Circuit type.
 * @param libName               - Library name.
 * 
 * \todo
 * 
 * Update description
 */
void vector_processing(graph *G, array_t *topoArr, char *dumpDir, array_t *justified_triggers, array_t *justified_payloads, array_t *valid_rare_nets, char *ndetect, char *trigN, char *states, char *scanFlag, int flowFlag, char *exeDir, int postOpt, char *codeBase, char *inputFile, char *moduleName, char *cktType, char *libName)
{
    int trojanCoveredCnt=0;
    array_t* vecArray;
    int firstErrVec;

    char *opFileName = (char*)malloc(sizeof(char)*10000);
    strcpy(opFileName, dumpDir);
    strcat(opFileName, "/results_");
    strcat(opFileName, ndetect);
    strcat(opFileName, "_");
    strcat(opFileName, trigN);
    strcat(opFileName, ".txt");    
    
    FILE *resultHandle = fopen(opFileName, "w");
    fprintf(resultHandle,"Results: \n");
    fclose(resultHandle);
    free(opFileName);

    char *vec_w_nets_file_name = (char*)malloc(sizeof(char)*10000);
    strcpy(vec_w_nets_file_name, dumpDir);
	strcat(vec_w_nets_file_name, "/pre_opt_only_vector_w_nets.txt");

    char *opVecHitName = (char*)malloc(sizeof(char)*10000);
    strcpy(opVecHitName, dumpDir);
	strcat(opVecHitName, "/opt_latest_result.csv");

    char *unCovTrigName = (char*)malloc(sizeof(char)*10000);
    strcpy(unCovTrigName, dumpDir);
	strcat(unCovTrigName, "/pre_opt_uncov_trigg.txt");

    char *unCovTrojName = (char*)malloc(sizeof(char)*10000);
    strcpy(unCovTrojName, dumpDir);
	strcat(unCovTrojName, "/pre_opt_uncov_troj.txt");

    int justVecFlag = 0;

    // printf("__________Coverage Anlaysis with vector_opt_latest __________\n");
    vecArray = simTcov(G, topoArr, dumpDir, valid_rare_nets, 1, vec_w_nets_file_name, justified_triggers, justified_payloads, opVecHitName, justVecFlag, states, unCovTrigName, unCovTrojName, ndetect, trigN, &firstErrVec, codeBase, inputFile, moduleName, cktType, libName);
    free(vec_w_nets_file_name);

    
    if(postOpt == 1)
    {
        char *command;

        asprintf(&command, "python3 %s/post_opt_script.py -f %s -d %s\n", exeDir, opVecHitName, dumpDir);
        
        printf("INFO: Performing post optimization...\n");
        // printf("%s\n", command);
        system(command);

        printf("INFO: Post optimization complete...\n");


        char *vecFileName8 = (char*)malloc(sizeof(char)*10000);
        strcpy(vecFileName8, dumpDir);
        strcat(vecFileName8, "/vector_opt_latest_post_last.out");

        // printf("__________Coverage Anlaysis with vector_opt_latest_post_opt __________\n");

        char *optFileHit = (char*)malloc(sizeof(char)*10000);
        strcpy(optFileHit, dumpDir);
        strcat(optFileHit, "/post_opt_result.csv");

        char *unCovTrigNamePost = (char*)malloc(sizeof(char)*10000);
        strcpy(unCovTrigNamePost, dumpDir);
        strcat(unCovTrigNamePost, "/post_opt_uncov_trigg.txt");

        char *unCovTrojNamePost = (char*)malloc(sizeof(char)*10000);
        strcpy(unCovTrojNamePost, dumpDir);
        strcat(unCovTrojNamePost, "/post_opt_uncov_troj.txt");


        justVecFlag = 1;

        vecArray = simTcov(G, topoArr, dumpDir, valid_rare_nets, 1, vecFileName8, justified_triggers, justified_payloads, optFileHit, justVecFlag, states, unCovTrigNamePost, unCovTrojNamePost, ndetect, trigN, &firstErrVec, codeBase, inputFile, moduleName, cktType, libName);

        free(vecFileName8);
        free(optFileHit);
        free(unCovTrigNamePost);
        free(unCovTrojNamePost);
    }
   
    free(opVecHitName);
    free(unCovTrigName);
    free(unCovTrojName);

    return;

}


/**
 * @brief 
 * 
 * @param G                 - CAST graph data structure.
 * @param topoArr           - Topologically sorted list of vertices.
 * @param dumpDir           - Output directory to store all the results for current file. 
 * @param valid_rare_nets   - List of valid rare nets.
 * @param fullScan          - Scan flag set to 1.
 * @param vecFile           - Vector file to perform simulation.
 * @param triggers          - Nested list of triggers.
 * @param payloads          - List of payloads.
 * @param opVecHitName      - Output hit file for current vector file.
 * @param justVecFlag       - Flag to perform just vector simulation.
 * @param states            - Number of states in Trojans.
 * @param unCovTrigName     - Output file for uncovered triggers.
 * @param unCovTrojName     - Output file for uncovered Trojans for covered triggers.
 * @param ndetect           - N-detect.
 * @param ntrig             - Number of triggers.
 * @param firstErrVec       - First error vector.
 * @param codeBase          - Code base for iVerilog simulation.
 * @param inputFile         - Flattened verilog gate level netlist.
 * @param moduleName        - Top module name.
 * @param cktType           - Circuit type.
 * @param libName           - Library name.
 * @return array_t*         - List of vectors.
 * 
 * \todo Add description for simTcov()
 */
array_t* simTcov(graph *G, array_t* topoArr, char *dumpDir, array_t* valid_rare_nets, int fullScan, char *vecFile, array_t *triggers, array_t *payloads, char *opVecHitName, int justVecFlag, char *states, char *unCovTrigName, char *unCovTrojName, char *ndetect, char *ntrig, int *firstErrVec, char *codeBase, char *inputFile, char *moduleName, char *cktType, char *libName)
{
    int totalVec = 0, firstErrVecFlag =0;
    int maxVectorLength = 500000;
    char vector[maxVectorLength];
    edge *tempEdge, *edg;
    vertex *tempVert;
    char *port;
    int i, j, k, updatesimResultsFlag = 1;

    array_t *exp_edg_array;
    int *err_vec_array;
    int simErrFlag = -1;
    int simErrCnt = 0;


    G->real_vectors = array_alloc(char*, 1);
    G->unk_vectors = array_alloc(char*, 1);
    // G->real_vector_hit = array_alloc(array_t*, 1);
   
    G->real_vector_hit_vecSim = array_alloc(array_t*, 1);
    G->real_vector_hit_expected = array_alloc(array_t*, 1);


    if( access( vecFile, F_OK ) != 0 ) {
        printf("!!ERROR: vector file not present: %s.\n", vecFile);
        exit(0);
    }

    SEQSTATES = atoi(states);

    char *simMissFileName;
    asprintf(&simMissFileName, "%s/sim_error_%s_%s.txt", dumpDir, ndetect, ntrig);

    char *errVecFileName;
    asprintf(&errVecFileName, "%s/sim_error_vectors%s_%s.txt", dumpDir, ndetect, ntrig);

    FILE *vecFileHandle = fopen(vecFile, "r");

    FILE *opVecHitHandle = fopen(opVecHitName, "w");

    array_t *vecArray = array_alloc(char*, 1);
    array_t *uvk_vecArray = array_alloc(char*, 1);
    

    char buffer[maxVectorLength];
    char *tempWord;
    int comb_triggers_count = 0;

    array_t* vecNetArray = array_alloc(edge*, 1);

    while (fgets(buffer,maxVectorLength,vecFileHandle) != NULL)
    {
        
        if(justVecFlag == 0)
        {
            array_t *data = string_strip(buffer, ",\n");
            exp_edg_array = array_alloc(edge*, 1);

            tempWord = array_fetch(char*, data, 0);         //unk vector
            array_insert_last(char*, G->unk_vectors, strdup(tempWord));

            tempWord = array_fetch(char*, data, 1);         //real vector        
            array_insert_last(char*, G->real_vectors, strdup(tempWord));

            for(int i=2; i<array_n(data);i++)
            {
                tempWord = array_fetch(char*, data, i);         //net name
                // printf("%s,", tempWord);

                edge* edg = findEdgeOrig(strdup(tempWord), G->edgArr);            
                if(edg){
                    if(edg->bPrimIn != true)
                        array_insert_last(edge*, exp_edg_array, edg);
                }
                else
                {
                    vertex* vert = findVertex(strdup(tempWord), G->vertexArr);
                    if(vert)
                    {
                        continue;
                        // printf("Found verted in hit edge list: %s\n", tempWord);
                    }
                        
                    else
                    {
                        printf("*****Expected edge Not found in graph*****: %s\n", tempWord);
                        exit(0);
                    }
                }
                // printf("\n");            
            }   
            array_insert_last(array_t*, G->real_vector_hit_expected, exp_edg_array);
        }
        else
        {
            // tempWord = array_fetch(char*, data, 0);         //real vector        
            array_insert_last(char*, G->real_vectors, strdup(buffer));            
        }
        
    }
    // printf("----in graph ----\n");
    // for(int i=0; i<array_n(G->real_vectors); i++)
    // {
    //     printf("%s\t", array_fetch(char*, G->real_vectors,i));
    //     array_t *exp_edg_array = array_fetch(array_t*, G->real_vector_hit_expected, i);
    //     for(int j=0; j<array_n(exp_edg_array);j++)
    //     {
    //         printf("%s,", array_fetch(edge*, exp_edg_array, j)->origName);
    //     }
    //     printf("\n");
    // }

    if(justVecFlag == 0)
    {
        simErrFlag = 0;
        err_vec_array = (int*)calloc(array_n(G->real_vectors), sizeof(int));
    }
    int *trigcoveredList, *trojcoveredList;
    trigcoveredList = (int*) malloc(sizeof(int)* array_n(triggers));
    trojcoveredList = (int*) malloc(sizeof(int)* array_n(triggers));

    int trigcoveredCnt = 0;
    int trojcoveredCnt = 0;

    // for(i = 0; i < array_n(G->edgArr); i++)
    // {
    //     edge *q = array_fetch(edge*, G->edgArr, i);
    //     q->oldVal = q->newVal = 0;
    //     q->atLogic = 0;
    // }


    for (i = 0; i < array_n(triggers); i++)
        trojcoveredList[i] = trigcoveredList[i] = 0;

    // FILE *tcovFileHandle = fopen(opVecHitName, "w");

    for(int v=0; v<array_n(G->real_vectors); v++)
    {
        for(i = 0; i < array_n(G->edgArr); i++)
        {
            edge *q = array_fetch(edge*, G->edgArr, i);
            // q->oldVal = q->newVal = 0;
            q->atLogic = -1;
            if (!strcmp(q->name, "1'b1") || !strcmp(q->name, "1"))
                q->atLogic = 1;
            if (!strcmp(q->name, "1'b0") || !strcmp(q->name, "0"))
                q->atLogic = 0;

        }

        int curr_hit = 0;
        
        char *vector = array_fetch(char*, G->real_vectors, v);
        // printf("Simulation: %d/%d\n", v, array_n(G->real_vectors));
        // apply the test pattern to PI's
        for(i = 0; i < array_n(G->primInEdges); i++)
        {
            tempEdge = array_fetch(edge*, G->primInEdges, i);
            // tempEdge->oldVal = tempEdge->newVal;
            // tempEdge->newVal = (vector[i] == '0' ? 0 : 1);
            tempEdge->atLogic = (vector[i] == '0' ? 0 : 1);
            // if(debug)
            array_insert_last(int, tempEdge->simResults, tempEdge->atLogic);    
        }

        if (fullScan)
        {
            for(i = 0; i < array_n(G->seqGates); i++)
            {
                tempVert = array_fetch(vertex*, G->seqGates, i);
                // if(debug)
                for (j = 0; j < array_n(tempVert->outEdges); j++)
                {
                    tempEdge = array_fetch(edge*, tempVert->outEdges, j);
                    port = array_fetch(char*, tempVert->outPorts, j);
                    //TMAX returns values for .Q port
                    if (!strcmp(port, ".Q"))
                    {
                        // tempEdge->newVal = (vector[array_n(G->primInEdges) + i] == '0' ? 0 : 1);
                        tempEdge->atLogic = (vector[array_n(G->primInEdges) + i] == '0' ? 0 : 1); //add values after PI are over
                        array_insert_last(int, tempEdge->simResults, tempEdge->atLogic);    
                        // if(debug)
                    }                        
                    else if (!strcmp(port, ".QN"))
                    {
                        // tempEdge->newVal = (vector[array_n(G->primInEdges) + i] == '0' ? 1 : 0);
                        tempEdge->atLogic = (vector[array_n(G->primInEdges) + i] == '0' ? 1 : 0);
                        array_insert_last(int, tempEdge->simResults, tempEdge->atLogic);    
                        // if(debug)
                    }
                        
                }
            }
        }

        //propogate logic to priamry outputs
        for(i = 0; i < array_n(topoArr); i++)
        {
            tempVert = array_fetch(vertex*, topoArr, i);
            calLogicSim(G, tempVert, updatesimResultsFlag);
            
        }
        
        int *check_min_hit;
        array_t *exp_edg_array;

        if(justVecFlag == 0)
        {
            check_min_hit = (int*)calloc(array_n(G->edgArr), sizeof(int));
            exp_edg_array = array_fetch(array_t*, G->real_vector_hit_expected, v);
            //exp_edg_array should also be valid rare edge
            for(int h=0; h<array_n(exp_edg_array); h++)
            {
                edge * tempHit = array_fetch(edge*, exp_edg_array, h);
                int hitIsRare = 0;
                for(int r=0; r<array_n(valid_rare_nets); r++)
                {
                    edge *tempRareEdge = array_fetch(edge*, valid_rare_nets, r);
                    if(tempRareEdge->idx == tempHit->idx)
                        hitIsRare = 1;
                }
                if(hitIsRare)
                    check_min_hit[tempHit->idx] = 1;
            }                
        }
        
            
        // printf("Simulation %s: ", vector);

        // for (j = 0; j < array_n(valid_rare_nets); j++)
        // {
        //     edg = array_fetch(edge*, valid_rare_nets, j);
        //     printf("valid: %s\n", edg->name);
        // }
        array_t *hit_edg_array = array_alloc(edge*, 1);
        for (j = 0; j < array_n(valid_rare_nets); j++)
        {
            edg = array_fetch(edge*, valid_rare_nets, j);
            
            if (edg->atLogic == edg->lowProbVal)
            {
                // printf("%s\n", edg->origName);                
                curr_hit++;
                array_insert_last(edge*, hit_edg_array, edg); 
                if(justVecFlag == 0)
                    check_min_hit[edg->idx] = 0;
            }    
            // else
            // {
            //     printf("missing: %s\n", edg->origName);
            // }            
        }
        array_insert_last(array_t*, G->real_vector_hit_vecSim, hit_edg_array);

        if(justVecFlag == 0)
        {
            int tempSum = 0;
            for(int sumI=0;sumI<array_n(G->edgArr);sumI++)
                tempSum = tempSum + check_min_hit[sumI];

            if(tempSum != 0)
            {
                err_vec_array[v] = 1;
                simErrFlag = 1;
                simErrCnt++;
                printf("INFO: Possible simulation error for vector %d in real_vector\n", v);

                // if(firstErrVecFlag == 0)
                // {
                    
                //     // printf("Original graph order\n");
                //     // for(int tempI = 0; tempI < array_n(topoArr); tempI++)
                //     // {
                //     //     vertex *tempVert = array_fetch(vertex*, topoArr, tempI);
                //     //     printf("vert: %s\n", tempVert->name);
                //     // }
                //     *firstErrVec = v;
                //     firstErrVecFlag = 1;
                //     printf("Simulation error for vector %d in real_vector\n", v);
                //     printf("Error for vector %s\n", vector);
                //     printf("Calling internal simulation check \n");
                //     if(strstr(cktType, "comb"))
                //         run_iverilog_simulation_internally(G, dumpDir, ndetect, ntrig, cktType, inputFile, moduleName, codeBase, 0, topoArr, v, valid_rare_nets);                    
                //     else
                //     {
                //         printf("Running seq internal simualtion\n");
                //         run_iverilog_simulation_internally_seq(G, dumpDir, ndetect, ntrig, cktType, inputFile, moduleName, codeBase, 0, topoArr, v, valid_rare_nets, libName);                    
                //     }
                        
                // }
                
                FILE *simErrHandle = fopen(simMissFileName, "a");
                FILE *simErrVecHandle = fopen(errVecFileName, "a");
                
                fprintf(simErrHandle, "!!ERROR: min nets not getting hit\n");
                char *tempVector = array_fetch(char*, G->unk_vectors, v);
                fprintf(simErrHandle,"unk_vector:%s\n", tempVector);
                fprintf(simErrHandle,"real_vector,%s,\n", vector);
                fprintf(simErrVecHandle,"%s\n", vector);
                
                print_pi_details(G, fullScan, dumpDir, ndetect, ntrig);
                fprintf(simErrHandle,"\texp: ");
                for(int j=0; j<array_n(exp_edg_array);j++)
                {
                    edge* deleteEdge = array_fetch(edge*, exp_edg_array, j); 
                    fprintf(simErrHandle,"%s,", array_fetch(edge*, exp_edg_array, j)->origName);
                }
                fprintf(simErrHandle,"\n");
                for(int j=0; j<array_n(exp_edg_array);j++)
                {
                    edge* deleteEdge = array_fetch(edge*, exp_edg_array, j); 
                    fprintf(simErrHandle,"%s:from %s: topo: %d exp: %d act: %d\n", deleteEdge->origName, deleteEdge->fromNode->name, deleteEdge->fromNode->lvlIdx,deleteEdge->lowProbVal, deleteEdge->atLogic);
                }
                fprintf(simErrHandle,"\tact: ");
                for(int j=0; j<array_n(hit_edg_array);j++)
                {
                    fprintf(simErrHandle,"%s,", array_fetch(edge*, hit_edg_array, j)->origName);
                }
                fprintf(simErrHandle,"\n");

                for(int j=0; j<array_n(exp_edg_array);j++)
                {
                    edge* expEdge = array_fetch(edge*, exp_edg_array, j); 
                    int edgeMatchFlag = 0;
                    for(int k=0; k<array_n(hit_edg_array);k++)
                    {
                        edge* actEdge = array_fetch(edge*, hit_edg_array, k); 
                        if(expEdge->idx == actEdge->idx)
                            edgeMatchFlag = 1;

                    }
                    if(edgeMatchFlag == 0)
                        fprintf(simErrHandle,"Missing %s:from %s: topo: %d exp: %d act: %d\n", expEdge->origName, expEdge->fromNode->name, expEdge->fromNode->lvlIdx,expEdge->lowProbVal, expEdge->atLogic);
                }
                // exit(0);
                fclose(simErrHandle);
                fclose(simErrVecHandle);

                // if(firstErrVecFlag == 1)
                //     exit(0);
            }
        }
             
        if(curr_hit > 0)
        {
            int oldTrojanCnt = trojcoveredCnt;
            for(i = 0; i < array_n(triggers); i++)
            {
                
                if (trojcoveredList[i]) 
                    continue;
                array_t *trigger = array_fetch(array_t*, triggers, i);
                
                int bcovered = true;
                for (j = 0; j < array_n(trigger); j++)
                {
                    edg = array_fetch(edge*, trigger, j);
                    
                    if (edg->atLogic != edg->lowProbVal)
                    {
                        bcovered = false;
                        break;
                    }
                }
                if (bcovered)           //Trojan is getting trigger. Now check payload propogation
                {

                    if (trigcoveredList[i] < SEQSTATES)
                    {
                        trigcoveredList[i]++;
                        if (trigcoveredList[i] == SEQSTATES)
                            trigcoveredCnt++;
                    }
                    // printf("trigcoveredCnt: %d \n", trigcoveredCnt);
                    // printf("triggered: %d \n", i);
                    // for (j = 0; j < array_n(trigger); j++)
                    // {
                    //     edg = array_fetch(edge*, trigger, j);
                    //     printf("%s\t", edg->origName);
                    // }
                    // printf("\n");
                    // now try to see if the effect propagates to output
                    edg = array_fetch(edge*, payloads, i);
                    if ((trigcoveredList[i] == SEQSTATES))
                    {
                        if(propagateToPO_debug(G, topoArr, edg, fullScan))
                        {
                            trojcoveredList[i] = true;                            
                            trojcoveredCnt++;                       
                            // printf("trojcoveredCnt: %d \n", trojcoveredCnt);     
                        }                        
                    }                                         
                }
            }
            fprintf(opVecHitHandle, "%d,%s,", v, vector);
            //hit_edg_array
            if(oldTrojanCnt != trojcoveredCnt)
                fprintf(opVecHitHandle, "1,");
            else
                fprintf(opVecHitHandle, "0,");
            for(int j=0; j<array_n(hit_edg_array); j++)
            {                
                fprintf(opVecHitHandle, "%s,", array_fetch(edge*, hit_edg_array, j)->name);
            }            
            fprintf(opVecHitHandle, "\n");
        }
        
        
        totalVec++;
    }
    fclose(opVecHitHandle);

    if( justVecFlag == 0 && simErrFlag==1 )
    {
        printf("==============================================================\n");
        printf("ERROR : possible error in simulation: %d\n", simErrCnt);
        printf("INFo: Calling internal simulation check \n");
        if(strstr(cktType, "comb"))
            run_iverilog_simulation_internally_w_vecArray(G, dumpDir, ndetect, ntrig, cktType, inputFile, moduleName, codeBase, 0, topoArr, err_vec_array, valid_rare_nets);                    
        else
        {
            printf("INFO: Running seq internal simualtion\n");
            run_iverilog_simulation_internally_seq_w_vecArray(G, dumpDir, ndetect, ntrig, cktType, inputFile, moduleName, codeBase, 0, topoArr, err_vec_array, valid_rare_nets, libName);                    
        }
        
    }

    char *opFileName = (char*)malloc(sizeof(char)*10000);
    strcpy(opFileName, dumpDir);
    strcat(opFileName, "/results_");
    strcat(opFileName, ndetect);
    strcat(opFileName, "_");
    strcat(opFileName, ntrig);
    strcat(opFileName, ".txt");    
    
    FILE *resultHandle = fopen(opFileName, "a");
    fprintf(resultHandle, "==============================================================\n");
    fprintf(resultHandle, "0. a. Total primary inputs: (%d)\n0. b. Pseudo PI: (%d)\n0. c. Total inputs: (%d)\n", array_n(G->primInEdges), array_n(G->seqGates), (array_n(G->primInEdges) + array_n(G->seqGates)));
    fprintf(resultHandle, "0. d. N-detect: (%s)\n", ndetect);
    fprintf(resultHandle, "1. Total Vectors: (%d)\n", totalVec);
    fprintf(resultHandle, "2. Suspect rare nets: %d\n", array_n(valid_rare_nets));
    fprintf(resultHandle, "3. Total nets: %d\n", array_n(G->edgArr));
    fprintf(resultHandle, "4. Valid Trojan Instances: %d \n", array_n(triggers));
    fprintf(resultHandle, "5. Triggers Covered: %d \n", trigcoveredCnt);
    fprintf(resultHandle, "6. Trojans Covered: %d \n", (trojcoveredCnt));
    fprintf(resultHandle, "7. Trigger Cov(%): %3.3f \n", (((float)trigcoveredCnt)/(float)array_n(triggers))*100);
    fprintf(resultHandle, "8. Trojan Cov(%): %3.3f\n", ((float)(trojcoveredCnt)/(float)array_n(triggers))*100);         
    fprintf(resultHandle, "8. Vector file used: %s\n", vecFile);         

    fclose(resultHandle);
    
    FILE *uncoveredTrig = fopen(unCovTrigName, "w");
    int uncTrigCnt = 0;
    
    
    fprintf(uncoveredTrig, "UncoveredTrigger ID:\n");
    for(i = 0; i < array_n(triggers); i++)
    {
        if (!trigcoveredList[i])
        {
                fprintf(uncoveredTrig, "%d: ", i);
                array_t *un_trigger = array_fetch(array_t*, triggers, i);
                for (j = 0; j < array_n(un_trigger); j++)
                {
                    edge *edg2 = array_fetch(edge*, un_trigger, j);
                    fprintf(uncoveredTrig, "%s, ",edg2->name);
                }
                fprintf(uncoveredTrig, "\n");
                uncTrigCnt++;
        }
    }
    fclose(uncoveredTrig);
    
    // printf("Total uncovered triggers: %d\n", uncTrigCnt);

    array_t *dedgArr = array_alloc(edge*, 1);
    array_t *dedgArr_no = array_alloc(int*, 1);

    int uncTrojCnt=0;
    
    for(i = 0; i < array_n(triggers); i++)
    {
        if (trigcoveredList[i] && !trojcoveredList[i])
        {
            array_insert_last(edge*, dedgArr, array_fetch(edge*, payloads, i));
            array_insert_last(int*, dedgArr_no, i);
            uncTrojCnt++;
        }
    }
    // printf("Total uncovered Trojans: %d\n",uncTrojCnt);

    for(i = 0; i < array_n(dedgArr); i++)
        array_fetch(edge*, dedgArr, i)->assnFlag = false;
    
    
    int cnt = 0;
    FILE *uncoveredTroj = fopen(unCovTrojName, "w");
    for(i = 0; i < array_n(dedgArr); i++)
    {
        edg = array_fetch(edge*, dedgArr, i);
        if (edg->assnFlag) 
            continue;
        edg->assnFlag = true;
        cnt = 0;
        for(j = 0; j < array_n(dedgArr); j++)
        {
            if (edg == array_fetch(edge*, dedgArr, j)) 
                cnt++;
        }
        fprintf(uncoveredTroj, "%d: ", array_fetch(int*, dedgArr_no, i));
        array_t *un_trigger = array_fetch(array_t*, triggers, array_fetch(int*, dedgArr_no, i));
        for (j = 0; j < array_n(un_trigger); j++)
        {
            edge *edg2 = array_fetch(edge*, un_trigger, j);
            fprintf(uncoveredTroj, "%s, ",edg2->name);
        }
        fprintf(uncoveredTroj, "%s, %d\n", edg->name, cnt);
    }
    fclose(uncoveredTroj);
    
    //     for(i = 0; i < array_n(dedgArr); i++)
    //         array_fetch(edge*, dedgArr, i)->assnFlag = false;
    //     array_free(dedgArr);
    // }
    // // if(debug)    
    // //     fclose(sim_actHandle);
    // // free(opFileName);


    return vecArray;    
}

/**
 * @brief \todo update description
 * 
 * @param G 
 * @param dumpDir 
 * @param ndetect 
 * @param trigN 
 * @param cktType 
 * @param inputFile 
 * @param moduleName 
 * @param codeBase 
 * @param compareiVeriFlag 
 * @param topoArr 
 * @param firstErrVec 
 * @param valid_rare_nets 
 */
void run_iverilog_simulation_internally(graph *G, char *dumpDir, char *ndetect, char *trigN, char *cktType, char *inputFile, char *moduleName, char *codeBase, char *compareiVeriFlag, array_t *topoArr, int firstErrVec, array_t *valid_rare_nets)
{
        char *vector;
    
        int maxVectorLength = 10000;
        char *buffer = (char*)malloc(sizeof(char)*maxVectorLength);
    
        char *tb_vectorFileName;
        asprintf(&tb_vectorFileName, "%s/error_vector.out", dumpDir);
        FILE *errfileHandle = fopen(tb_vectorFileName, "w");
        vector = array_fetch(char*, G->real_vectors, firstErrVec);
        fprintf(errfileHandle, "%s\n", vector);
        fclose(errfileHandle);
        
        char *iverilog_command;
        // python3 top.py -d $bench/LEDA/ISCAS85/c6288/c6288_netlist.v -top c6288 -test $bench/LEDA/ISCAS85/c6288/vector.out -piF $bench/LEDA/ISCAS85/c6288/PI_order.txt -oD $bench/LEDA/ISCAS85/c6288/ -lib ./lec25dscc25.v
        asprintf(&iverilog_command, "python3 %s/tb_generation/top.py -d %s -top %s -test %s -piF %s/PI_order.txt -oD %s -lib %s/tb_generation/lec25dscc25.v -exeDir %s/tb_generation/", codeBase, inputFile, moduleName, tb_vectorFileName, dumpDir, dumpDir, codeBase, codeBase);

        // printf("%s\n", iverilog_command);
        system(iverilog_command);
        printf("INFO: iVerilog simulation internal over\n");
    
        compare_data(G, dumpDir, ndetect, trigN, cktType, inputFile, moduleName, codeBase, 0, topoArr, 0, valid_rare_nets); 
    
}

/**
 * @brief \todo update description
 * 
 * @param G 
 * @param dumpDir 
 * @param ndetect 
 * @param trigN 
 * @param cktType 
 * @param inputFile 
 * @param moduleName 
 * @param codeBase 
 * @param compareiVeriFlag 
 * @param topoArr 
 * @param errVecArr 
 * @param valid_rare_nets 
 */
void run_iverilog_simulation_internally_w_vecArray(graph *G, char *dumpDir, char *ndetect, char *trigN, char *cktType, char *inputFile, char *moduleName, char *codeBase, char *compareiVeriFlag, array_t *topoArr, int *errVecArr, array_t *valid_rare_nets)
{
        char *vector;
    
        int maxVectorLength = 10000;
        char *buffer = (char*)malloc(sizeof(char)*maxVectorLength);
    
        char *tb_vectorFileName;
        asprintf(&tb_vectorFileName, "%s/error_vector.out", dumpDir);
        FILE *errfileHandle = fopen(tb_vectorFileName, "w");
        //dump only vectors in error_vector.out file to be used by iVerilog simulation
        for(int i=0; i<array_n(G->real_vectors); i++)
        {
            if(errVecArr[i] == 1)
            {
                fprintf(errfileHandle, "%s\n", vector);
            }
        }
        // vector = array_fetch(char*, G->real_vectors, firstErrVec);
        // fprintf(errfileHandle, "%s\n", vector);
        fclose(errfileHandle);
        
        char *iverilog_command;
        // python3 top.py -d $bench/LEDA/ISCAS85/c6288/c6288_netlist.v -top c6288 -test $bench/LEDA/ISCAS85/c6288/vector.out -piF $bench/LEDA/ISCAS85/c6288/PI_order.txt -oD $bench/LEDA/ISCAS85/c6288/ -lib ./lec25dscc25.v
        asprintf(&iverilog_command, "python3 %s/tb_generation/top.py -d %s -top %s -test %s -piF %s/PI_order.txt -oD %s -lib %s/tb_generation/lec25dscc25.v -exeDir %s/tb_generation/", codeBase, inputFile, moduleName, tb_vectorFileName, dumpDir, dumpDir, codeBase, codeBase);

        // printf("%s\n", iverilog_command);
        system(iverilog_command);
        printf("INFO: iVerilog simulation internal over\n");
    
        compare_data_w_vecArray(G, dumpDir, ndetect, trigN, cktType, inputFile, moduleName, codeBase, 0, topoArr, errVecArr, valid_rare_nets); 
    
}
/**
 * @brief \todo update description
 * 
 * @param G 
 * @param dumpDir 
 * @param ndetect 
 * @param trigN 
 * @param cktType 
 * @param inputFile 
 * @param moduleName 
 * @param codeBase 
 * @param compareiVeriFlag 
 * @param topoArr 
 * @param firstErrVec 
 * @param valid_rare_nets 
 * @param libName 
 */
void run_iverilog_simulation_internally_seq(graph *G, char *dumpDir, char *ndetect, char *trigN, char *cktType, char *inputFile, char *moduleName, char *codeBase, char *compareiVeriFlag, array_t *topoArr, int firstErrVec, array_t *valid_rare_nets, char *libName)
{
        printf("Deriving combinational design\n");
        array_t *pinEdges = get_combinational_design(G, dumpDir, inputFile, moduleName, libName);
        
        char *combFile;
        int primInCnt=0;
        asprintf(&combFile, "%s/combinational.v", dumpDir);
        graph *G_temp = createGraphFromVerilog(combFile, NULL, moduleName, &primInCnt, NULL, libName);
        array_t *G_temp_topoArr = getTopoOrder(G_temp, 1);
        
        printf("Combinational graph order: %d\n", array_n(G_temp_topoArr));
        printf("Original graph order: %d\n", array_n(topoArr));

        printf("Combinational graph order\n");
        for(int tempI = 0; tempI < array_n(G_temp_topoArr); tempI++)
        {
            vertex *combVert = array_fetch(vertex*, G_temp_topoArr, tempI);
            vertex *originalVert = array_fetch(vertex*, topoArr, tempI);
            
            //comparison not happening correctly
            // if(!strcmp(combVert->name, originalVert->name))
            //     printf("combVert->name: %s originalVert->name: %s\n", combVert->name, originalVert->name);
        }                
        
        char *vector;
        int maxVectorLength = 10000;
        char *buffer = (char*)malloc(sizeof(char)*maxVectorLength);
    
        char *tb_vectorFileName;
        asprintf(&tb_vectorFileName, "%s/error_vector.out", dumpDir);
        FILE *errfileHandle = fopen(tb_vectorFileName, "w");
        vector = array_fetch(char*, G->real_vectors, firstErrVec);
        fprintf(errfileHandle, "%s\n", vector);
        fclose(errfileHandle);

        char *iverilog_command;
        // python3 top.py -d $bench/LEDA/ISCAS85/c6288/c6288_netlist.v -top c6288 -test $bench/LEDA/ISCAS85/c6288/vector.out -piF $bench/LEDA/ISCAS85/c6288/PI_order.txt -oD $bench/LEDA/ISCAS85/c6288/ -lib ./lec25dscc25.v
        if(strstr(libName, "skywater"))
            asprintf(&iverilog_command, "python3 %s/tb_generation/top.py -d %s -top %s -test %s -piF %s/PI_order.txt -oD %s -lib %s/src/sky130.v -exeDir %s/tb_generation/", codeBase, combFile, moduleName, tb_vectorFileName, dumpDir, dumpDir, codeBase, codeBase);
        else if(strstr(libName, "LEDA"))
            asprintf(&iverilog_command, "python3 %s/tb_generation/top.py -d %s -top %s -test %s -piF %s/PI_order.txt -oD %s -lib %s/tb_generation/lec25dscc25.v -exeDir %s/tb_generation/", codeBase, combFile, moduleName, tb_vectorFileName, dumpDir, dumpDir, codeBase, codeBase);

        // printf("%s\n", iverilog_command);

        system(iverilog_command);
        printf("INFO: iVerilog simulation internal over\n");
        
        // for(int i=0; i<array_n(G->edgArr); i++)
        // {
        //     edge *edg =array_fetch(edge*, G->edgArr, i);
        //     if(findEdge(edg->name, G_temp->edgArr) == NULL)
        //         printf("missing edge: %s\t%s\n", edg->name, edg->fromFFName);

        // }

        compare_data(G, dumpDir, ndetect, trigN, cktType, inputFile, moduleName, codeBase, 0, topoArr, firstErrVec, valid_rare_nets); 
        return;
    
}
/**
 * @brief \todo updated description
 * 
 * @param pinEdges 
 * @param pseudo_qn_edge 
 * @return int 
 */
int get_pseudo_q_index(array_t *pinEdges, edge *pseudo_qn_edge)
{
    char* substr_edge = strdup(pseudo_qn_edge->name);
    substr_edge[strlen(substr_edge)-1] = '\0';
    for(int i=0; i<array_n(pinEdges); i++)
    {
        edge *tempEdge = array_fetch(edge*, pinEdges, i);
        if(strstr(tempEdge->name, substr_edge))
            return i;
    }
    return 0;
}

/**
 * @brief \todo update description
 * 
 * @param G 
 * @param dumpDir 
 * @param ndetect 
 * @param trigN 
 * @param cktType 
 * @param inputFile 
 * @param moduleName 
 * @param codeBase 
 * @param compareiVeriFlag 
 * @param topoArr 
 * @param errVecArr 
 * @param valid_rare_nets 
 * @param libName 
 */
void run_iverilog_simulation_internally_seq_w_vecArray(graph *G, char *dumpDir, char *ndetect, char *trigN, char *cktType, char *inputFile, char *moduleName, char *codeBase, char *compareiVeriFlag, array_t *topoArr, int *errVecArr, array_t *valid_rare_nets, char *libName)
{
        printf("INFO: Deriving combinational design\n");
        array_t *pinEdges = get_combinational_design(G, dumpDir, inputFile, moduleName, libName);
        
        char *combFile;
        int primInCnt=0;
        asprintf(&combFile, "%s/combinational.v", dumpDir);
        graph *G_temp = createGraphFromVerilog(combFile, NULL, moduleName, &primInCnt, NULL, libName);
        array_t *G_temp_topoArr = getTopoOrder(G_temp, 1);
        
        // printf("Combinational graph order: %d\n", array_n(G_temp_topoArr));
        // printf("Original graph order: %d\n", array_n(topoArr));

        // printf("Combinational graph order\n");
        for(int tempI = 0; tempI < array_n(G_temp_topoArr); tempI++)
        {
            vertex *combVert = array_fetch(vertex*, G_temp_topoArr, tempI);
            vertex *originalVert = array_fetch(vertex*, topoArr, tempI);
            
            //comparison not happening correctly
            // if(!strcmp(combVert->name, originalVert->name))
            //     printf("combVert->name: %s originalVert->name: %s\n", combVert->name, originalVert->name);
        }                
        
        char *vector;
        int maxVectorLength = 10000;
        char *buffer = (char*)malloc(sizeof(char)*maxVectorLength);
    
        char *tb_vectorFileName;
        asprintf(&tb_vectorFileName, "%s/error_vector.out", dumpDir);
        FILE *errfileHandle = fopen(tb_vectorFileName, "w");
        for(int i=0; i<array_n(G->real_vectors); i++)
        {
            if(errVecArr[i] == 1)
            {
                char *tempVector = array_fetch(char*, G->real_vectors, i);
                fprintf(errfileHandle, "%s\n", tempVector);
                
                // size_t vecLength = strlen(tempVector);
                // printf("Vector length: %d\n", vecLength);
                // char *zeroVector = (int*)calloc(vecLength, sizeof(int));
                fprintf(errfileHandle, "0\n");      //to reset all simulation values
            }
        }
        // vector = array_fetch(char*, G->real_vectors, firstErrVec);
        // fprintf(errfileHandle, "%s\n", vector);
        fclose(errfileHandle);
        free(tb_vectorFileName);

        char *tb_modVecFileName;
        int real_vector_length = array_n(G->primInEdges) + array_n(G->seqGates);
        if(asprintf(&tb_modVecFileName, "%s/error_vector_mod.out", dumpDir) != -1)
        {
            FILE *tbModfileHandle = fopen(tb_modVecFileName, "w");
            for(int i=0; i<array_n(G->real_vectors); i++)
            {
                if(errVecArr[i] == 1)
                {
                    char *tempVector = strdup(array_fetch(char*, G->real_vectors, i));
                    printf("Original vector: %s\n", tempVector);
                    // need to modify this for QN port as TMAX returns values for Q
                    // fprintf(tbModfileHandle, "%s", tempVector);                       //base vector with PI + ff once
                    
                    //for pseudo pi > real_vector size flip bit based on Q value
                    //need to flip bits for QN as TMAX returns values for Q
                    for(int j=array_n(G->primInEdges); j<real_vector_length; j++)
                    {
                        edge *pseudo_edge = array_fetch(edge*, pinEdges, j);        //got the pseudo edge
                        //check if this edge has QN in it
                        // if yes, flip the bit
                        if(strstr(pseudo_edge->name, "_QN"))
                        {
                            tempVector[j] = (tempVector[j] == '0' ? '1' : '0');
                        }
                    }
                    printf("Modified vector: %s\n", tempVector);
                    fprintf(tbModfileHandle, "%s", tempVector);                 //dumping modified vector
                    for(int j=real_vector_length; j<array_n(pinEdges); j++)
                    {
                        edge *pseudo_qn_edge = array_fetch(edge*, pinEdges, j);
                        //look for pseudo_q_edge in same array and get its position 
                        //use this position to get its vector value and flip it for QN
                        
                        int pseudo_q_index = -1;
                        pseudo_q_index = get_pseudo_q_index(pinEdges, pseudo_qn_edge);
                        if(pseudo_q_index == -1)
                        {
                            printf("ERROR in run_iverilog_simulation_internally_seq_w_vecArray\n");
                        }
                        else
                        {
                            printf("%s\n", array_fetch(edge*, pinEdges, pseudo_q_index)->name);
                            printf("%c\n", tempVector[pseudo_q_index]);
                            printf("%s->%d\n", pseudo_qn_edge->name, (tempVector[pseudo_q_index] == '0' ? 1 : 0));
                            //flipping bit for QN
                            fprintf(tbModfileHandle, "%d", (tempVector[pseudo_q_index] == '0' ? 1 : 0) );                            
                        }
                    }
                    fprintf(tbModfileHandle, "\n");
                    fprintf(tbModfileHandle, "0\n");      //to reset all simulation values
                }
            }
            // vector = array_fetch(char*, G->real_vectors, firstErrVec);
            // fprintf(errfileHandle, "%s\n", vector);
            fclose(tbModfileHandle);            
        }
        else
        {
            printf("Malloc failed in run_iverilog_simulation_internally_seq_w_vecArray\n");
        }

        char *iverilog_command;
        // python3 top.py -d $bench/LEDA/ISCAS85/c6288/c6288_netlist.v -top c6288 -test $bench/LEDA/ISCAS85/c6288/vector.out -piF $bench/LEDA/ISCAS85/c6288/PI_order.txt -oD $bench/LEDA/ISCAS85/c6288/ -lib ./lec25dscc25.v
        if(strstr(libName, "skywater"))
            asprintf(&iverilog_command, "python3 %s/tb_generation/top.py -d %s -top %s -test %s -piF %s/PI_for_comb.txt -oD %s -lib %s/src/sky130.v -exeDir %s/tb_generation/", codeBase, combFile, moduleName, tb_modVecFileName, dumpDir, dumpDir, codeBase, codeBase);
        else if(strstr(libName, "LEDA"))
            asprintf(&iverilog_command, "python3 %s/tb_generation/top.py -d %s -top %s -test %s -piF %s/PI_for_comb.txt -oD %s -lib %s/tb_generation/lec25dscc25.v -exeDir %s/tb_generation/", codeBase, combFile, moduleName, tb_modVecFileName, dumpDir, dumpDir, codeBase, codeBase);

        free(tb_modVecFileName);
        // printf("%s\n", iverilog_command);

        system(iverilog_command);
        printf("INFO: iVerilog simulation internal over\n");
        
        // for(int i=0; i<array_n(G->edgArr); i++)
        // {
        //     edge *edg =array_fetch(edge*, G->edgArr, i);
        //     if(findEdge(edg->name, G_temp->edgArr) == NULL)
        //         printf("missing edge: %s\t%s\n", edg->name, edg->fromFFName);

        // }

        compare_data_w_vecArray(G, dumpDir, ndetect, trigN, cktType, inputFile, moduleName, codeBase, 0, topoArr, errVecArr, valid_rare_nets); 
        return;
    
}


/**
 * @brief Get the combinational design \todo update description
 * 
 * @param G 
 * @param dumpDir 
 * @param inputFile 
 * @param moduleName 
 * @param libName 
 * @return array_t* 
 */
array_t* get_combinational_design(graph *G, char *dumpDir, char *inputFile, char *moduleName, char *libName)
{
    char *castfileName;
    asprintf(&castfileName, "%s/cast_graph.v", dumpDir);
    FILE *cast_fptr  = fopen(castfileName, "w");
    convertGraph2Verilog(G, cast_fptr, 0, 0);
    fclose(cast_fptr);


    char *fileName;
    asprintf(&fileName, "%s/combinational.v", dumpDir);
    printf("Combinational design at: %s\n", fileName);
    FILE *fptr  = fopen(fileName, "w");

    int primInCnt = 0;
    graph *G_copy = createGraphFromVerilog(inputFile, NULL, moduleName, &primInCnt, NULL, libName);
    array_t *pinEdges = convertGraph2Verilog_comb(G_copy, fptr, 0, 0, dumpDir, G);
    fclose(fptr);

    return pinEdges;   
}

/**
 * @brief \todo update description
 * 
 * @param G 
 * @param dumpDir 
 * @param ndetect 
 * @param trigN 
 * @param cktType 
 * @param inputFile 
 * @param moduleName 
 * @param codeBase 
 * @param compareiVeriFlag 
 * @param topoArr 
 * @param firstErrVec 
 * @param valid_rare_nets 
 */
void compare_data(graph *G, char *dumpDir, char *ndetect, char *trigN, char *cktType, char *inputFile, char *moduleName, char *codeBase, char *compareiVeriFlag, array_t *topoArr, int firstErrVec, array_t *valid_rare_nets)
{
    char *simulated_file;
    asprintf(&simulated_file, "%s/iv_sim_result.txt", dumpDir);
    if( access( simulated_file, F_OK ) != 0 ) {
        printf("!!ERROR: Simulation file is not present: %s.\n", simulated_file);
        return;
    }

    FILE *simfileHandle = fopen(simulated_file, "r");
    char *buffer = (char*)malloc(sizeof(char)*10000);

    printf("INFO: adding simulated values in graph\n");
    //working with only one vector currently
    printf("Edge,simulated,tcov\n");                    
    while (!feof(simfileHandle))
    {
        fscanf(simfileHandle, "%[^\n]\n", buffer);
        printf("%s\n", buffer);
        array_t *data = breakInWords(buffer);            
        char *tempWord = array_fetch(char*, data, 0);         //edge name
        edge* edg = findEdge(strdup(tempWord), G->edgArr);
        if(edg)
        {
            char *tempWord = array_fetch(char*, data, 1);         //edge simulated value
            edg->simulated = atoi(tempWord);
            // printf("Edge,%s,%d,%d\n", edg->name, edg->simulated, edg->atLogic);                    
        }     
        else   
        {
            vertex *tempVert = findVertex(strdup(tempWord), G->vertexArr);
            if(tempVert != NULL)
            {
                // printf("simulated vertex present in original design: %s\n", tempWord);
                edge *edgeQ = array_fetch(edge*, tempVert->outEdges, 0);                 //for now only working with Q output
                char *tempWord = array_fetch(char*, data, 1);         //edge simulated value
                edgeQ->simulated = atoi(tempWord);
                printf("Updating : %s \t from %s \t simulated : %d \t atLogic : %d\n", edgeQ->name, tempVert->name, edgeQ->simulated, edgeQ->atLogic);
            }
                
            else
                printf("simulated edge not present in original design: %s\n", tempWord);
        }                
    }
    fclose(simfileHandle);

    printf("Comparing simualted with iVerilog and tcov, internal\n");
    // simulateOneVector(G, topoArr, vector);
    printf("Comparing simualted with iVerilog and tcov with same function, internal\n");
    simulateOneVectorsimTcov(G, topoArr, dumpDir, 1, 0, firstErrVec, valid_rare_nets);
}

/**
 * @brief \todo update description
 * 
 * @param G 
 * @param dumpDir 
 * @param ndetect 
 * @param trigN 
 * @param cktType 
 * @param inputFile 
 * @param moduleName 
 * @param codeBase 
 * @param compareiVeriFlag 
 * @param topoArr 
 * @param errVecArr 
 * @param valid_rare_nets 
 */
void compare_data_w_vecArray(graph *G, char *dumpDir, char *ndetect, char *trigN, char *cktType, char *inputFile, char *moduleName, char *codeBase, char *compareiVeriFlag, array_t *topoArr, int* errVecArr, array_t *valid_rare_nets)
{
    char *simulated_file;
    asprintf(&simulated_file, "%s/iv_sim_result.txt", dumpDir);
    if( access( simulated_file, F_OK ) != 0 ) {
        printf("!!ERROR: Simulation file is not present: %s.\n", simulated_file);
        return;
    }

    FILE *simfileHandle = fopen(simulated_file, "r");
    char *buffer = (char*)malloc(sizeof(char)*10000);

    printf("INFO: adding simulated values in graph\n");
    //working with only one vector currently
    // printf("Edge,simulated,tcov\n");                    
    while (!feof(simfileHandle))
    {
        fscanf(simfileHandle, "%[^\n]\n", buffer);
        // printf("Simulated file data: %s\n", buffer);
        array_t *data = breakInWords(buffer);            
        char *tempWord = array_fetch(char*, data, 0);         //edge name
        edge* edg = findEdge(strdup(tempWord), G->edgArr);
        if(edg)
        {
            // char *tempWord = array_fetch(char*, data, 1);         //edge simulated value
            // edg->simulated = atoi(tempWord);
            for(int i=1; i<array_n(data)-1; i++)
            {
                
                if(i%2 == 0)        //  skipping one data bit as that valus is obtained for simulation with all '0'
                    continue;
                char *ivSimulated = array_fetch(char*, data, i);         //edge simulated value
                // printf("iv_simulated: %s\t%s\n", edg->name, ivSimulated);
                array_insert_last(int, edg->iv_simResults, atoi(ivSimulated));
            }
            
            // printf("Edge,%s,%d,%d\n", edg->name, edg->simulated, edg->atLogic);                    
        }     
        else   
        {
            // vertex name is appended with _Q / _QN
            // remove last part and check vertex
            char* substr_edge = strdup(tempWord);
            int qEdgType = 0;
            if(strstr(tempWord, "_QN"))
            {
                substr_edge[strlen(substr_edge)-3] = '\0';      //removing _QN
                qEdgType = 1;
            }                
            else
            {
                substr_edge[strlen(substr_edge)-2] = '\0';      //removing _Q
                qEdgType = 0;
            }
            // vertex *tempVert = findVertex(strdup(tempWord), G->vertexArr);
            vertex *tempVert = findVertex(strdup(substr_edge), G->vertexArr);
            if(tempVert != NULL)
            {
                // printf("simulated vertex present in original design: %s\n", tempWord);
                // edge *edgeQ = array_fetch(edge*, tempVert->outEdges, 0);                 //for now only working with Q output
                //update edge based on its type
                edge *outEdge;
                for(int i=0; i<array_n(tempVert->outEdges); i++)
                {
                    char *currPort = array_fetch(char*, tempVert->outPorts, i);
                    // edge *edgeQ = array_fetch(edge*, tempVert->outEdges, 0);
                    if(qEdgType == 1)
                    {
                        if(strstr(currPort, ".QN"))     //edge type _QN and port name .QN
                        {
                            outEdge = array_fetch(edge*, tempVert->outEdges, i);
                        }
                    }
                    else
                    {
                        if(!strstr(currPort, ".QN"))    //edge type _Q and port name ! .QN
                        {
                            outEdge = array_fetch(edge*, tempVert->outEdges, i);
                        }
                    }
                }
                // char *tempWord = array_fetch(char*, data, 1);         //edge simulated value
                // edgeQ->simulated = atoi(tempWord);
                for(int i=1; i<array_n(data)-1; i++)
                {
                    
                    if(i%2 == 0)        //  skipping one data bit as that valus is obtained for simulation with all '0'
                        continue;
                    char *ivSimulated = array_fetch(char*, data, i);         //edge simulated value
                    // printf("FF iv_simulated: %s\t%s\n", outEdge->name, ivSimulated);
                    // array_insert_last(int, edgeQ->iv_simResults, atoi(ivSimulated));
                    array_insert_last(int, outEdge->iv_simResults, atoi(ivSimulated));
                }
                
                // printf("Updating : %s \t from %s \t simulated : %d \t atLogic : %d\n", edgeQ->name, tempVert->name, edgeQ->simulated, edgeQ->atLogic);
            }
                
            else
                printf("simulated edge not present in original design: %s\n", tempWord);
        }                
    }
    fclose(simfileHandle);

    // printf("Comparing simualted with iVerilog and tcov, internal\n");
    // simulateOneVector(G, topoArr, vector);
    printf("Comparing simualted with iVerilog and tcov with same function, internal\n");
    simulateOneVectorsimTcov_w_vecArray(G, topoArr, dumpDir, 1, 0, errVecArr, valid_rare_nets);
}


/**
 * @brief Function checks if paylaod effect can be propogated to PO.
 * 
 * @param G         - CAST graph data structure.
 * @param topoArr   - Topologically sorted list of vertices.
 * @param tedg      - Payload edge.
 * @param fullScan  - Scan flag set to 1.
 * @return int      - 1:Effect can be propogate to PO, Otherwise:Not propogated.
 */
int propagateToPO_debug(graph* G, array_t* topoArr, edge* tedg, int fullScan)
{
    int i, startIdx, match = 0, nedges;
    int* prevOutVal, *prevSeqVal;
    int* oldValArr, *newValArr;
    vertex* s, *tempVert;
    edge* edg1;
    int updatesimResultsFlag = 0;
    
    // if the payload is primary output, effect surely propagates
    if (tedg->bPrimOut) 
        return true;

    nedges = array_n(G->edgArr);
    oldValArr = (int*) malloc(sizeof(int) * nedges);
    newValArr = (int*) malloc(sizeof(int) * nedges);
    prevOutVal = (int*) malloc(sizeof(int) * array_n(G->primOutEdges));
    prevSeqVal = (int*) malloc(sizeof(int) * (array_n(G->seqGates) + 1));

    // capturing old and new values(?) of all edges
    for(i = 0; i < nedges; i++)
    {
        edg1 = array_fetch(edge*, G->edgArr, i);
        //oldValArr[i] = array_fetch(int, edg1->simResults, vecIdx); // edg1->oldVal;
        oldValArr[i] = edg1->atLogic;
        
    }

    // capturing prev values of output edges
    for(i = 0; i < array_n(G->primOutEdges); i++)
    {
        edg1 = array_fetch(edge*, G->primOutEdges, i);
        //prevOutVal[i] = array_fetch(int, edg1->simResults, vecIdx);
        prevOutVal[i] = edg1->atLogic;
    }
        

    // capturing prev values of data edge of flip-flops
    for(i = 0; i < array_n(G->seqGates); i++)
    {
        s = array_fetch(vertex*, G->seqGates, i);
        edg1 = findDataEdge(s);
        //prevSeqVal[i] = array_fetch(int, edg1->simResults, vecIdx);
        prevSeqVal[i] = edg1->atLogic;
    }

    //startIdx = (tedg->fromNode) ? tedg->fromNode->topoIdx + 1 : 0;

    //obtaining start index of current vertex in topo-order
    startIdx = (tedg->fromNode) ? tedg->fromNode->topoIdx : 0;

    // inject a fault in the tedg
    // tedg->atLogic = array_fetch(int, edg1->simResults, vecIdx) ? 0 : 1;   
    tedg->atLogic = (tedg->atLogic) ? 0 : 1;   

    // propagate fault effect
    for(i = startIdx; i < array_n(topoArr); i++)
    {
        //calculateOutTransition(array_fetch(vertex*, topoArr, i));
        tempVert = array_fetch(vertex*, topoArr, i);
        // calLogicSim(G, tempVert, updatesimResultsFlag);
    }   

    // checking if fault is propogated to PO or input of flip-flops
    match = true;
    for(i = 0; i < array_n(G->primOutEdges); i++)
    {
        edg1 = array_fetch(edge*, G->primOutEdges, i);
        if (prevOutVal[i] != edg1->atLogic)
        {
            match = false;
            break;
        }
    }

    //_sb check the inputs of FFs
    if (fullScan && match) // check only if all match in POs
    {
        for(i = 0; i < array_n(G->seqGates); i++)
        {
            tempVert = array_fetch(vertex*, G->seqGates, i);
            edg1 = findDataEdge(tempVert);
            if (edg1->atLogic != prevSeqVal[i])
            {
                match = false;
                break;
            }
        }
    }

    for(i = 0; i < nedges; i++)
    {
        edg1 = array_fetch(edge*, G->edgArr, i);
        edg1->atLogic = oldValArr[i];
        //edg1->newVal = newValArr[i];
    }

    free(oldValArr);
    free(newValArr);
    free(prevOutVal);
    free(prevSeqVal);
    return !match;
}

/**
 * @brief \todo update description
 * 
 * @param G 
 * @param fullScan 
 * @param dumpDir 
 * @param ndetect 
 * @param ntrig 
 */
void print_pi_details(graph *G, int fullScan, char *dumpDir, char *ndetect, char *ntrig)
{
    char *simMissFileName;
    asprintf(&simMissFileName, "%s/sim_error_%s_%s.txt", dumpDir, ndetect, ntrig);

    FILE *fileHandle = fopen(simMissFileName, "a");
    for(int i = 0; i < array_n(G->primInEdges); i++)
    {
        edge *tempEdge = array_fetch(edge*, G->primInEdges, i);
        fprintf(fileHandle,"%s\t%d\n", tempEdge->origName, tempEdge->atLogic);        
    }

    if (fullScan)
    {
        for(int i = 0; i < array_n(G->seqGates); i++)
        {
            vertex* tempVert = array_fetch(vertex*, G->seqGates, i);
            fprintf(fileHandle,"%s\t", tempVert->name);
            for (int j = 0; j < array_n(tempVert->outEdges); j++)
            {
                edge *tempEdge = array_fetch(edge*, tempVert->outEdges, j);
                char *port = array_fetch(char*, tempVert->outPorts, j);
                if (!strcmp(port, ".Q"))
                {
                    fprintf(fileHandle,"%s %s:%d\n", tempEdge->origName, port, tempEdge->atLogic);
                }                        
                else if (!strcmp(port, ".QN"))
                {
                    fprintf(fileHandle,"%s %s:%d\n", tempEdge->origName, port, tempEdge->atLogic);                    
                }
                    
            }
        }
    }
    fclose(fileHandle);
}

/**
 * @brief Get the only coverage object
 * 
 * @param G                     - CAST graph structure.
 * @param topoArr               - Topologically sorted graph vertices.
 * @param dumpDir               - Output directory to store all the results for current file.
 * @param justified_triggers    - Justified nested list of triggers.
 * @param justified_payloads    - Justified list of payloads.
 * @param valid_rare_nets       - List of valid rare nets.
 * @param ndetect               - N-detect
 * @param trigN                 - Trigger numbers/Trojan.
 * @param states                - Number of states for Trojan.
 * @param scanFlag              - Scan flag set to 1.
 * @param flowFlag              - Flow flag. w/wo Trojan file.
 * @param exeDir                - executables directory. Provide location of all executable files required for MERS.
 * @param vecFile               - File with vectors.
 * @param onlyVec               - Flag to tell if vector file contains only vectors or vectors + expected hit nets.
 * @param codeBase              - Code base for iVerilog verification.
 * @param inputFile             - Flatttened gate-level verilog netlist.
 * @param moduleName            - Top module of the design.
 * @param cktType               - Type of circuit {comb/seq}
 * @param libName               - Library name {"LEDA", "skywater"}. Current iteration supports mentioned libraries.
 * @return int                  - Returnig first error vector.
 * 
 * @note
 * 
 * Function calls simTcov() to perform simulation based on file type.
 */
int get_only_coverage(graph *G, array_t *topoArr, char *dumpDir, array_t *justified_triggers, 
                        array_t *justified_payloads, array_t *valid_rare_nets, char *ndetect, char *trigN, 
                            char *states, char *scanFlag, int flowFlag, char *exeDir, char *vecFile, int onlyVec, char *codeBase, char *inputFile, char *moduleName, char *cktType, char *libName)
{
    array_t* vecArray;
    int justVecFlag;
    int firstErrVec = -1;
    if(onlyVec == 1)
    {
        char *optFileHit;
        asprintf(&optFileHit, "%s/only_vec_result.csv", dumpDir);

        char *unCovTrigName;
        asprintf(&unCovTrigName, "%s/only_vec_uncov_trigg.txt", dumpDir);

        char *unCovTrojName;
        asprintf(&unCovTrojName, "%s/only_vec_uncov_troj.txt", dumpDir);

        justVecFlag = 1;
        vecArray = simTcov(G, topoArr, dumpDir, valid_rare_nets, 1, vecFile, justified_triggers, justified_payloads, optFileHit, justVecFlag, states, unCovTrigName, unCovTrojName, ndetect, trigN, &firstErrVec, codeBase, inputFile, moduleName, cktType, libName);
        //-- checked for memory free issue-> freed all allocated memory except vecArray which contains nothing        
        free(optFileHit);
        free(unCovTrigName);
        free(unCovTrojName);
    }
    else
    {
        char *optFileHit;
        asprintf(&optFileHit, "%s/vec_w_nets_result.csv", dumpDir);

        char *unCovTrigName;
        asprintf(&unCovTrigName, "%s/vec_w_nets_uncov_trigg.txt", dumpDir);

        char *unCovTrojName;
        asprintf(&unCovTrojName, "%s/vec_w_nets_uncov_troj.txt", dumpDir);
        
        justVecFlag = 0;
        vecArray = simTcov(G, topoArr, dumpDir, valid_rare_nets, 1, vecFile, justified_triggers, justified_payloads, optFileHit, justVecFlag, states, unCovTrigName, unCovTrojName, ndetect, trigN, &firstErrVec, codeBase, inputFile, moduleName, cktType, libName);
        //-- checked for memory free issue-> freed all allocated memory except vecArray which contains nothing        
        free(optFileHit);
        free(unCovTrigName);
        free(unCovTrojName);
    }
    
    return firstErrVec;
}

/**
 * @brief Get the rare nets from Trojan file
 *  
 * @param G             - CAST graph structure.
 * @param exeDir        - executables directory. Provide location of all executable files required for MERS.
 * @param dumpDir       - Output directory to store all the results for current file. 
 * @param trigN         - Number of triggers per Trojan.
 * @param tFile         - Trojan file.
 * @param triggers      - To return nested list of triggers.
 * @param payload       - To return list of payloads.
 * @return array_t*     - Rare nets from Trojan file.
 * 
 * @note
 * 
 * Function performs parse on Trojan file, stores data in triggers/payload list and return unique rare nets.
 */
// Function to parse Trojan file and extract rare nets
array_t* get_rare_nets_from_Trojan(graph* G, char *exeDir, char *dumpDir, char *trigN, char *tFile, array_t **triggers, array_t **payload)
{
    array_t *rare_nets=array_alloc(edge*, 1);

    array_t *trigEntry;
    
    FILE *inputFile = fopen(tFile, "r");
    char buffer[1000];
    char *tempWord;
    int lineNo = 1;
    int counter2 = 0;

    array_t* wordArr;
    array_t* tempwordArr;
    char *word;
    char* pstr = (char*)malloc(sizeof(char)*50000000);
    char* pstr1 = (char*)malloc(sizeof(char)*50000000);

    int *edgIdxArray, *uniqeRareEdge;
    
    edgIdxArray = (int*)calloc(array_n(G->edgArr), sizeof(int));
    
    //remove primitive file if already present as we are appending data
    if( access( tFile, F_OK ) != 0 ) {
        printf("!!ERROR: Trojan file not present: %s.\n", tFile);
        exit(0);
    }

    // now read the input file
    int line = 1;
    while(!feof(inputFile))
    {
        fscanf(inputFile, "%[^\n]\n", pstr);
		if (pstr[0] == '/' && pstr[1] == '/')
            continue; // line comment
		
        if (pstr[0] != '/' || pstr[1] != '/')
        {
			// remove trailing white spaces
            for (int i = strlen(pstr)-1; i >= 0; i--)
            {
                if (pstr[i] == ' ') 
                    pstr[i] = '\0';
                else break;
            }
			
            while (pstr[strlen(pstr)-1] != ';' )
            {
				//printf("%d\n", line++);
        
                fscanf(inputFile, "%[^\n]\n", pstr1);
	
                // remove trailing white spaces
                for (int i = strlen(pstr1)-1; i >= 0; i--)
                {
                    if (pstr1[i] == ' ') 
                        pstr1[i] = '\0';
                    else break;
                }
				//pstr = realloc(pstr, sizeof(pstr)+sizeof(pstr1));
                strcat(pstr, pstr1);
            }			        
        }
		wordArr = string_strip(pstr, "--");
        
        trigEntry = array_alloc(edge*, 1);

        for(int i=1; i<array_n(wordArr); i++)
        {
            tempWord = array_fetch(char*, wordArr, i);         //Trojan pin
            tempwordArr = string_strip(tempWord, "(:,);");

            if(array_n(tempwordArr)==5)                         //Trigger pin
            {
                char *checkEdge = array_fetch(char*, tempwordArr, 0);
                edge* edg = findEdgeOrig(strdup(checkEdge), G->edgArr);
                if(edg)
                {
                    array_insert_last(edge*, trigEntry, edg);
                    if(edgIdxArray[edg->idx] > 0)  //duplicate edge
                    {
                        //just adding it to trigger edge array
                        continue;                                                
                    }
                    else                            //edge occurred first time
                    {
                        edgIdxArray[edg->idx]++;
                        //updating lowEdge value and adding it resptive excite edge array
                        char *lowEdgeValue = array_fetch(char*, tempwordArr, 2);
                        edg->lowProbVal = atoi(lowEdgeValue);                        
                        if( !((edg->lowProbVal==1) || (edg->lowProbVal ==0)))
                        {
                            printf("!!ERROR: Unexpected excite value [%d]\n", atoi(lowEdgeValue));
                            exit(0);
                        }
                    }
                    
                }
                else{
                    printf("!!ERROR: Edge Not found in graph : %s\n", checkEdge);
                    exit(0);
                }
            }
            else if(array_n(tempwordArr)==3)                    //Payload pin
            {
                char *checkEdge = array_fetch(char*, tempwordArr, 0);
                edge* edg = findEdgeOrig(strdup(checkEdge), G->edgArr);
                if(edg)
                {
                    array_insert_last(edge*, *payload, edg);                                                                
                }
                else{
                    printf("!!ERROR: Edge Not found in graph : %s\n", checkEdge);
                    exit(0);
                }
            }
            else
            {
                printf("Exiting: In Trojan File Parsing)....\n");
                exit(0);
            }                        
        }     
        array_insert_last(array_t*, *triggers, trigEntry);   
    }
    fclose(inputFile);
    free(pstr);
    free(pstr1);

    for(int i=0; i<array_n(G->edgArr);i++)
    {
        if (edgIdxArray[i] > 0)
        {
            edge* edg = array_fetch(edge*, G->edgArr, i);
            array_insert_last(edge*, rare_nets, edg);
        }
            
    }
    free(edgIdxArray);
    
    return rare_nets;
}

/**
 * @brief 
 * 
 * Function is used to perform simulation using iVerilog. 
 * 
 */
void run_iverilog_simulation(graph *G, char *dumpDir, char *ndetect, char *trigN, char *cktType, char *inputFile, char *moduleName, char *codeBase, char *compareiVeriFlag, array_t *topoArr, int firstErrVec, array_t *valid_rare_nets)
{
    int filePresent = 0;

    char *simMissFileName;
    asprintf(&simMissFileName, "%s/sim_error_%s_%s.txt", dumpDir, ndetect, trigN);

    char *errVecFileName;
    asprintf(&errVecFileName, "%s/sim_error_vectors%s_%s.txt", dumpDir, ndetect, trigN);
    
    if( access( errVecFileName, F_OK ) == 0 ) {
        // file exists  --> remove
        filePresent = 1;
    }        
    char *vector;
    
    if(filePresent == 1 && strstr(cktType, "comb"))
    {
        int maxVectorLength = 10000;
        char *buffer = (char*)malloc(sizeof(char)*maxVectorLength);
        
    
        FILE *fileHandle = fopen(errVecFileName, "r");
        printf("Reading vectors from %s\n", errVecFileName);

        char *tb_vectorFileName;
        asprintf(&tb_vectorFileName, "%s/error_vector.out", dumpDir);
        FILE *errfileHandle = fopen(tb_vectorFileName, "w");
        vector = array_fetch(char*, G->real_vectors, firstErrVec);
        fprintf(errfileHandle, "%s\n", vector);
        fclose(errfileHandle);
        fclose(fileHandle);

        char *iverilog_command;
        // python3 top.py -d $bench/LEDA/ISCAS85/c6288/c6288_netlist.v -top c6288 -test $bench/LEDA/ISCAS85/c6288/vector.out -piF $bench/LEDA/ISCAS85/c6288/PI_order.txt -oD $bench/LEDA/ISCAS85/c6288/ -lib ./lec25dscc25.v
        asprintf(&iverilog_command, "python3 %s/tb_generation/top.py -d %s -top %s -test %s -piF %s/PI_order.txt -oD %s -lib %s/tb_generation/lec25dscc25.v -exeDir %s/tb_generation/", codeBase, inputFile, moduleName, tb_vectorFileName, dumpDir, dumpDir, codeBase, codeBase);

        // printf("%s\n", iverilog_command);
        system(iverilog_command);
        printf("INFO: iVerilog simulation over\n");
    }
    
    if(atoi(compareiVeriFlag)==1)
    {
        printf("Calling from main\n");
        // compare_data(G, dumpDir, ndetect, trigN, cktType, inputFile, moduleName, codeBase, compareiVeriFlag, topoArr, firstErrVec, valid_rare_nets);

        // char *simulated_file;
        // asprintf(&simulated_file, "%s/iv_sim_result.txt", dumpDir);
        // if( access( simulated_file, F_OK ) != 0 ) {
        //     printf("!!ERROR: Simulation file is not present: %s.\n", simulated_file);
        //     return;
        // }

        // FILE *simfileHandle = fopen(simulated_file, "r");
        // char *buffer = (char*)malloc(sizeof(char)*10000);

        // printf("INFO: adding simulated values in graph\n");
        // //working with only one vector currently
        // while (!feof(simfileHandle))
        // {
        //     fscanf(simfileHandle, "%[^\n]\n", buffer);
        //     printf("%s\n", buffer);
        //     array_t *data = breakInWords(buffer);            
        //     char *tempWord = array_fetch(char*, data, 0);         //edge name
        //     edge* edg = findEdgeOrig(strdup(tempWord), G->edgArr);
        //     if(edg)
        //     {
        //         char *tempWord = array_fetch(char*, data, 1);         //edge simulated value
        //         edg->simulated = atoi(tempWord);
        //         // printf("Edge: %s: %d\n", edg->origName, edg->simulated );                    
        //     }                        
        // }
        // fclose(simfileHandle);

        // printf("Comparing simualted with iVerilog and tcov\n");
        // simulateOneVector(G, topoArr, vector);
        // printf("Comparing simualted with iVerilog and tcov with same function\n");
        // simulateOneVectorsimTcov(G, topoArr, dumpDir, 1, 0, firstErrVec, valid_rare_nets);

    }
}

/**
 * @brief 
 * 
 * @param G                 - CAST graph data strcuture.
 * @param valid_rare_nets   - List of valid rare nets.
 * @param rare_nets         - List of rare nets from Trojan file.    
 * @param triggers          - Nested list of triggers.
 * @param payloads          - List of payloads.
 * @param valid_triggers    - Nested list to return valid triggers.
 * @param valid_payloads    - List to return valid payloads.
 * @return int              - Returns 0 if invalid edge is found.
 */
// Function to remove invalid trojans when Trojan file is provided and net pattern is not available
int remove_invalid_trojans(graph* G, array_t* valid_rare_nets, array_t* rare_nets, array_t *triggers, array_t *payloads, array_t **valid_triggers, array_t **valid_payloads)
{
    // if(array_n(valid_rare_nets) == array_n(rare_nets))
    // {        
    //     return;
    // }
        
    int found_invalid = 0;
    int *valid_net_flag_array = (int*)calloc(array_n(G->edgArr), sizeof(int));

    for(int i=0; i<array_n(valid_rare_nets); i++)
    {
        edge* edg = array_fetch(edge*, valid_rare_nets, i);
        valid_net_flag_array[edg->idx] = 1;
    }

    for(int i=0; i<array_n(triggers); i++)
    {
        array_t *trigger_set = array_fetch(edge*, triggers, i);
        edge *payload = array_fetch(edge*, payloads, i);

        int invalid_triggers = 0;
        for(int j=0; j<array_n(trigger_set); j++)
        {
            edge* edg = array_fetch(edge*, trigger_set, j);
            if(valid_net_flag_array[edg->idx] == 0)         //found invalid edge
            {
                invalid_triggers = 1;
                found_invalid = 1;
            }
        }
        
        if(invalid_triggers == 0)       // add it to valid trigger set
        {
            array_insert_last(array_t*, *valid_triggers, trigger_set);
            array_insert_last(edge*, *valid_payloads, payload);
        }        
    }
    free(valid_net_flag_array);
    if(found_invalid)
        return 0;
    return 1;
}

/**
 * @brief \todo update description
 * 
 * @param G 
 * @param topoArr 
 * @param dumpDir 
 * @param fullScan 
 * @param justVecFlag 
 * @param vecNo 
 * @param valid_rare_nets 
 */
void simulateOneVectorsimTcov(graph *G, array_t* topoArr, char *dumpDir, int fullScan, int justVecFlag, int vecNo, array_t *valid_rare_nets)
{
    
        int v= vecNo;

        for(int i = 0; i < array_n(G->edgArr); i++)
        {
            edge *q = array_fetch(edge*, G->edgArr, i);
            // q->oldVal = q->newVal = 0;
            q->atLogic = -1;
            if (!strcmp(q->name, "1'b1") || !strcmp(q->name, "1"))
                q->atLogic = 1;
            if (!strcmp(q->name, "1'b0") || !strcmp(q->name, "0"))
                q->atLogic = 0;
        }

        int curr_hit = 0;
        
        char *vector = array_fetch(char*, G->real_vectors, v);

        printf("Error vector: %s\n", vector);
        // apply the test pattern to PI's
        for(int i = 0; i < array_n(G->primInEdges); i++)
        {
            edge *tempEdge = array_fetch(edge*, G->primInEdges, i);
            // tempEdge->oldVal = tempEdge->newVal;
            // tempEdge->newVal = (vector[i] == '0' ? 0 : 1);
            tempEdge->atLogic = (vector[i] == '0' ? 0 : 1);
            // if(debug)
            if(tempEdge->atLogic != tempEdge->simulated)
            {
                printf("Mismatch in primary assignments: %s atLogic : %d simulated : %d\n", tempEdge->origName, tempEdge->atLogic, tempEdge->simulated);
                return;
            }
            array_insert_last(int, tempEdge->simResults, tempEdge->atLogic);    
        }

        if (fullScan)
        {
            for(int i = 0; i < array_n(G->seqGates); i++)
            {
                vertex *tempVert = array_fetch(vertex*, G->seqGates, i);
                // if(debug)
                for (int j = 0; j < array_n(tempVert->outEdges); j++)
                {
                    edge *tempEdge = array_fetch(edge*, tempVert->outEdges, j);
                    char *port = array_fetch(char*, tempVert->outPorts, j);
                    if (!strcmp(port, ".Q"))
                    {
                        // tempEdge->newVal = (vector[array_n(G->primInEdges) + i] == '0' ? 0 : 1);
                        tempEdge->atLogic = (vector[array_n(G->primInEdges) + i] == '0' ? 0 : 1); //add values after PI are over
                        array_insert_last(int, tempEdge->simResults, tempEdge->atLogic);    
                        // if(debug)
                    }                        
                    else if (!strcmp(port, ".QN"))
                    {
                        // tempEdge->newVal = (vector[array_n(G->primInEdges) + i] == '0' ? 1 : 0);
                        tempEdge->atLogic = (vector[array_n(G->primInEdges) + i] == '0' ? 1 : 0);
                        array_insert_last(int, tempEdge->simResults, tempEdge->atLogic);    
                        // if(debug)
                    }
                    if(tempEdge->atLogic != tempEdge->simulated)
                    {
                        printf("FF Mismatch in primary assignments: %s atLogic : %d simulated : %d\n", tempEdge->origName, tempEdge->atLogic, tempEdge->simulated);
                        return;
                    }
                        
                }
            }
        }

        //propogate logic to priamry outputs
        int misMatchErrFlag = 0;
        for(int i = 0; i < array_n(topoArr); i++)
        {
            vertex *tempVert = array_fetch(vertex*, topoArr, i);
            int updatesimResultsFlag = 0;
            calLogicSim(G, tempVert, updatesimResultsFlag);
            for(int temp=0; temp<array_n(tempVert->outEdges); temp++)
            {
                edge *tempEdge = array_fetch(edge*, tempVert->outEdges, temp++);
                if(tempEdge->atLogic != tempEdge->simulated)
                {
                    printf("topo: %d\tError in outedge (%s) of vert: %s\t atLogic %d \t simulated %d\n", i, tempEdge->name, tempVert->name, tempEdge->atLogic ,tempEdge->simulated);
                    misMatchErrFlag = 1;
                }
                    
                
            }
        }
        if(misMatchErrFlag == 0)
        {
            printf("!! iVerilog simulation and tcov simulation exactly matching\n");
        }
        int *check_min_hit;
        array_t *exp_edg_array;

        if(justVecFlag == 0)
        {
            check_min_hit = (int*)calloc(array_n(G->edgArr), sizeof(int));
            exp_edg_array = array_fetch(array_t*, G->real_vector_hit_expected, v);
            for(int h=0; h<array_n(exp_edg_array); h++)
            {
                edge * tempHit = array_fetch(edge*, exp_edg_array, h);
                check_min_hit[tempHit->idx] = 1;
            }                
        }
        
            
        // printf("Simulation %s: ", vector);

        // for (j = 0; j < array_n(valid_rare_nets); j++)
        // {
        //     edg = array_fetch(edge*, valid_rare_nets, j);
        //     printf("valid: %s\n", edg->name);
        // }
        array_t *hit_edg_array = array_alloc(edge*, 1);
        for (int j = 0; j < array_n(valid_rare_nets); j++)
        {
            edge *edg = array_fetch(edge*, valid_rare_nets, j);
            
            if (edg->atLogic == edg->lowProbVal)
            {
                // printf("%s\n", edg->origName);                
                curr_hit++;
                array_insert_last(edge*, hit_edg_array, edg); 
                if(justVecFlag == 0)
                    check_min_hit[edg->idx] = 0;
            }    
            // else
            // {
            //     printf("missing: %s\n", edg->origName);
            // }            
        }
        array_insert_last(array_t*, G->real_vector_hit_vecSim, hit_edg_array);

        if(justVecFlag == 0)
        {
            int tempSum = 0;
            for(int sumI=0;sumI<array_n(G->edgArr);sumI++)
                tempSum = tempSum + check_min_hit[sumI];

            if(tempSum != 0)
            {
                // FILE *simErrHandle = fopen(simMissFileName, "a");

                printf("!!ERROR: min nets not getting hit\n");
                char *tempVector = array_fetch(char*, G->unk_vectors, v);
                printf("unk_vector:%s\n", tempVector);
                printf("real_vector:%s\n", vector);
                //print_pi_details(G, fullScan, dumpDir, ndetect, ntrig);
                printf("\texp: ");
                for(int j=0; j<array_n(exp_edg_array);j++)
                {
                    edge* deleteEdge = array_fetch(edge*, exp_edg_array, j); 
                    printf("%s,", array_fetch(edge*, exp_edg_array, j)->origName);
                }
                printf("\n");
                for(int j=0; j<array_n(exp_edg_array);j++)
                {
                    edge* deleteEdge = array_fetch(edge*, exp_edg_array, j); 
                    printf("%s:from %s: topo: %d exp: %d act: %d\n", deleteEdge->origName, deleteEdge->fromNode->name, deleteEdge->fromNode->lvlIdx,deleteEdge->lowProbVal, deleteEdge->atLogic);
                }
                printf("\tact: ");
                for(int j=0; j<array_n(hit_edg_array);j++)
                {
                    printf("%s,", array_fetch(edge*, hit_edg_array, j)->origName);
                }
                printf("\n");

                for(int j=0; j<array_n(exp_edg_array);j++)
                {
                    edge* expEdge = array_fetch(edge*, exp_edg_array, j); 
                    int edgeMatchFlag = 0;
                    for(int k=0; k<array_n(hit_edg_array);k++)
                    {
                        edge* actEdge = array_fetch(edge*, hit_edg_array, k); 
                        if(expEdge->idx == actEdge->idx)
                            edgeMatchFlag = 1;

                    }
                    if(edgeMatchFlag == 0)
                        printf("Missing %s:from %s: topo: %d exp: %d act: %d\n", expEdge->origName, expEdge->fromNode->name, expEdge->fromNode->lvlIdx,expEdge->lowProbVal, expEdge->atLogic);
                }
                // exit(0);
                // fclose(simErrHandle);
            }
        }

    return;
}

/**
 * @brief \todo update description
 * 
 * @param G 
 * @param topoArr 
 * @param dumpDir 
 * @param fullScan 
 * @param justVecFlag 
 * @param errVecArr 
 * @param valid_rare_nets 
 */
void simulateOneVectorsimTcov_w_vecArray(graph *G, array_t* topoArr, char *dumpDir, int fullScan, int justVecFlag, int *errVecArr, array_t *valid_rare_nets)
{
    int currErrVecCnt = 0;
    for(int v=0; v<array_n(G->real_vectors); v++)
    {
        if(errVecArr[v] == 1)       //vector with error simulation
        {
            //simulating for error with with same function without internal calls
            for(int i = 0; i < array_n(G->edgArr); i++)
            {
                edge *q = array_fetch(edge*, G->edgArr, i);
                q->atLogic = -1;
                if (!strcmp(q->name, "1'b1") || !strcmp(q->name, "1"))
                    q->atLogic = 1;
                if (!strcmp(q->name, "1'b0") || !strcmp(q->name, "0"))
                    q->atLogic = 0;
            }

            int curr_hit = 0;
            char *vector = array_fetch(char*, G->real_vectors, v);
            printf("Error vector(%d): %s\n", v, vector);
            // apply the test pattern to PI's
            for(int i = 0; i < array_n(G->primInEdges); i++)
            {
                edge *tempEdge = array_fetch(edge*, G->primInEdges, i);
                tempEdge->atLogic = (vector[i] == '0' ? 0 : 1);
                int curr_iv_sim = array_fetch(int, tempEdge->iv_simResults, currErrVecCnt);
                // if(tempEdge->atLogic != tempEdge->simulated)
                if(tempEdge->atLogic != curr_iv_sim)
                {
                    printf("Mismatch in primary assignments: %s atLogic : %d simulated : %d\n", tempEdge->origName, tempEdge->atLogic, curr_iv_sim);
                    return;
                }
                array_insert_last(int, tempEdge->simResults, tempEdge->atLogic);    
            }

            if (fullScan)
            {
                for(int i = 0; i < array_n(G->seqGates); i++)
                {
                    vertex *tempVert = array_fetch(vertex*, G->seqGates, i);
                    // if(debug)
                    for (int j = 0; j < array_n(tempVert->outEdges); j++)
                    {
                        edge *tempEdge = array_fetch(edge*, tempVert->outEdges, j);
                        char *port = array_fetch(char*, tempVert->outPorts, j);
                        if (!strcmp(port, ".Q"))
                        {
                            // tempEdge->newVal = (vector[array_n(G->primInEdges) + i] == '0' ? 0 : 1);
                            tempEdge->atLogic = (vector[array_n(G->primInEdges) + i] == '0' ? 0 : 1); //add values after PI are over
                            array_insert_last(int, tempEdge->simResults, tempEdge->atLogic);    
                            // if(debug)
                        }                        
                        else if (!strcmp(port, ".QN"))
                        {
                            // tempEdge->newVal = (vector[array_n(G->primInEdges) + i] == '0' ? 1 : 0);
                            tempEdge->atLogic = (vector[array_n(G->primInEdges) + i] == '0' ? 1 : 0);
                            array_insert_last(int, tempEdge->simResults, tempEdge->atLogic);    
                            // if(debug)
                        }
                        int curr_iv_sim = array_fetch(int, tempEdge->iv_simResults, currErrVecCnt);
                        if(tempEdge->atLogic != curr_iv_sim)
                        {
                            printf("FF Mismatch in primary assignments: %s atLogic : %d simulated : %d\n", tempEdge->origName, tempEdge->atLogic, curr_iv_sim);
                            return;
                        }
                            
                    }
                }
            }

            //propogate logic to priamry outputs
            int misMatchErrFlag = 0;
            for(int i = 0; i < array_n(topoArr); i++)
            {
                vertex *tempVert = array_fetch(vertex*, topoArr, i);
                int updatesimResultsFlag = 0;
                calLogicSim(G, tempVert, updatesimResultsFlag);
                for(int temp=0; temp<array_n(tempVert->outEdges); temp++)
                {
                    edge *tempEdge = array_fetch(edge*, tempVert->outEdges, temp++);
                    int curr_iv_sim = array_fetch(int, tempEdge->iv_simResults, currErrVecCnt);
                    if(tempEdge->atLogic != curr_iv_sim)
                    {
                        printf("topo: %d\tError in outedge (%s) of vert: %s\t atLogic %d \t simulated %d\n", i, tempEdge->name, tempVert->name, tempEdge->atLogic ,curr_iv_sim);
                        misMatchErrFlag = 1;
                    }
                        
                    
                }
            }
            if(misMatchErrFlag == 0)
            {
                printf("!! iVerilog simulation and tcov simulation exactly matching for err vec:%d\n", v);
            }            
            currErrVecCnt++;        
        }
    }
        

    return;
}

/**
 * @brief \todo update description
 * 
 * @param G                 - CAST graph data structure
 * @param dumpDir           - Output directory
 * @param ndetect           - N-detect
 * @param topoArr           - Sorted list of vertices
 * @param fullScan          - Fullscan flag set to 1
 * @param valid_rare_nets   - List of valid rare nets
 * @param exeDir            - Directory of executables
 * @return array_t*         - Returns NULL
 * 
 * - Functions works on 'unk_vector_w_nets.txt' file.
 *      -# file content: {vector with unknowns: expected hit nets}
 * - Unknown vectors are store in G->unk_vectors variable.
 * - corresponding hit nets are stored in G->real_vector_hit_expected
 * - real vectors are obtained by substituting from RHS.
 *      -# unk_vec = ith vector with unknwon is taken
 *      -# expHit  = ith vector's expected hit edges are taken
 *      -# unk_no  = unknown numbers in vector are obtained
 *      -# possible_patt = smaller{ log2(atoi(ndetect)), ndetect }
 *      -# if unk_no != 0 -> real vectors are generated till possible patterns
 *          -# real_pattern -> unk_vec is copied
 *          -# real patterns are obtained by adding 1 to curr_add
 *          -# real pattern is checked for duplication
 *              -# if duplicate, simulation is not performed and curr_add++
 *              -# else check for isGoodRealVec()
 *                  -# good real vector if real_hit >= expected_hit + at least one new hit for next iteration
 *              -# if validReal -> vector added to vector_otg.out file
 *      -# vector with no unkown -> alread a real vector
 *          -# checked for duplication and added to vector_otg.out file
 * 
 */     
array_t* vector_otg_optimization(graph *G, char *dumpDir, char *ndetect, array_t *topoArr, int fullScan, array_t *valid_rare_nets, char *exeDir)
{
    char *unkVecwNets_name;
    printf("\n[DEBUG] 1 ");
    asprintf(&unkVecwNets_name, "%s/unk_vector_w_nets.txt", dumpDir);

    FILE *fileHandle = fopen(unkVecwNets_name, "r");

    G->unk_vectors = array_alloc(char*, 1);    
    G->real_vector_hit_expected = array_alloc(array_t*, 1);

    array_t *exp_edg_array;
    int maxVectorLength = 500000;
    char buffer[maxVectorLength];
    char *tempWord;
    int count =0;
    while (fgets(buffer,maxVectorLength,fileHandle) != NULL)
    {
        array_t *data = string_strip(buffer, ",\n");
        exp_edg_array = array_alloc(edge*, 1);

        tempWord = array_fetch(char*, data, 0);         //unk vector
        array_insert_last(char*, G->unk_vectors, strdup(tempWord));

        for(int i=1; i<array_n(data);i++)
        {
            tempWord = array_fetch(char*, data, i);         //net name
            edge* edg = findEdgeOrig(strdup(tempWord), G->edgArr);            
            if(edg){
                if(edg->bPrimIn != true)
                    array_insert_last(edge*, exp_edg_array, edg);
            }
            else
            {
                printf("*****Expected edge Not found in graph*****: %s\n", tempWord);
                exit(0);
            }
        }   
        array_insert_last(array_t*, G->real_vector_hit_expected, exp_edg_array);       
        count++;
    }
    fclose(fileHandle);
    free(unkVecwNets_name);

    printf("Total unk vectors: %d\n", array_n(G->unk_vectors));

    printf("\n[DEBUG] 2");

    array_t *final_real_patterns = array_alloc(char*, 1);

    char *otg_file;
    asprintf(&otg_file, "%s/vector_otg.out", dumpDir);
    FILE *otg_fileHandle;

    if( access( otg_file, F_OK ) == 0 ) {
        // file exists  --> remove
        if(remove(otg_file) != 0)
            printf("!!WARNING: Can't remove otg_file file.\n");
    }

    FILE *fp;
    char command_op[10];

    int duplicateCnt = 0;

    //change this flag to 1 for RHS substitution 0 for LHS substitution
    int lhs_rhs = 1;

    for(int i=0; i<array_n(G->unk_vectors); i++)
    {
        char *unk_vec = array_fetch(char*, G->unk_vectors, i);
        
        array_t *expHit = array_fetch(array_t*, G->real_vector_hit_expected, i);

        int unk_no = get_no_unk(unk_vec);
        int curr_add = 0, intNo = 0;    
        int curr_attempt = 0;    

        /**
         * @brief updated possbile pattern value
         * \todo check possible_patt one more time 
         * Initial condition unk_no < log2(atoi(ndetect)/2)
         * now,              unk_no < log2(atoi(ndetect))
         */
        int possible_patt = 0;
        if(unk_no < log2(atoi(ndetect)))
            possible_patt = (int)pow(2, unk_no);
        else
            possible_patt = atoi(ndetect);

        int firstRealFlag = 1;
        if(unk_no != 0) //generate real pattern
        {
            //creating n-detect patterns
            while(curr_attempt < possible_patt)
            {
                int last_X;                                                                         
                if(lhs_rhs == 0)
                    last_X = 0;                                                                     //substiuting from left to right                
                else
                    last_X = strlen(unk_vec)-1;                                                     //substiuting from right to left

                curr_attempt++;
                // char *real_pattern = create_real_pattern(unk_vec, curr_add, unk_no);

                //create real pattern with current add number and unk_cnt
                char *real_pattern = strdup(unk_vec);                                               //making copy of string 
                // printf("org :%s\n", real_pattern);
                int rem=0;
                intNo = curr_add;
                //substituting all possible bits based on curr_add
                while (intNo!=0)
                {
                    rem = intNo%2;
                    intNo = intNo / 2;
                    //binOp[bit_pos] = (rem == 1 ? '1' :'0');        
                    //substitute 'X' with either 0/1 in unk pattern
                    if(lhs_rhs == 0)                                                                //substiuting from left to right
                    {
                        for(int idx=last_X; idx<strlen(real_pattern); idx++)            
                        {
                            if(real_pattern[idx] == 'X')
                            {
                                real_pattern[idx] = (rem == 1 ? '1' :'0');
                                last_X = idx;
                                break;                                                              //starting next serach from last X
                            }                            
                        }
                    }
                    else                                                                            //substiuting from right to left
                    {
                        for(int idx=last_X; idx>=0; idx--)            
                        {
                            if(real_pattern[idx] == 'X')
                            {
                                real_pattern[idx] = (rem == 1 ? '1' :'0');
                                last_X = idx;
                                break;                                                              //starting next serach from last X
                            }                            
                        }
                    }
                    
                }
                // printf("part:%s\n", real_pattern);
                //substitute remaining "X" with '0'
                if(lhs_rhs == 0)  
                {
                    for(int idx=last_X; idx<strlen(real_pattern); idx++)                                //substiuting from left to right
                    {
                        if(real_pattern[idx] == 'X')
                        {
                            real_pattern[idx] = '0';                        
                        }                            
                    }
                }
                else
                {
                    for(int idx=last_X; idx>=0; idx--)                                                   //substiuting from right to left
                    {
                        if(real_pattern[idx] == 'X')
                        {
                            real_pattern[idx] = '0';                        
                        }                            
                    }
                }
                
                // printf("real:%s\n", real_pattern);
                
                int checkDup = 0;
                // for(int j=0; j<array_n(final_real_patterns); j++)
                // {
                //     char *tempVec = array_fetch(char*, final_real_patterns, j);
                //     if(tempVec == NULL)
                //     {
                //         printf("NULL pointer\n");
                //         exit(0);
                //     }
                //     if(strlen(tempVec) != strlen(real_pattern))
                //     {
                //         printf("String lengths not same\n");
                //         exit(0);
                //     }
                //     if(!strcmp(tempVec, real_pattern))
                //     {
                //         checkDup = 1;
                //         break;
                //     }                        
                // }

                // char command[maxVectorLength];
                // strcpy(command, "\"grep -c \'");
                // strcat(command, real_pattern);
                // strcat(command, "\' ");
                // strcat(command, dumpDir);
                // strcat(command, "/vector_otg.out\", \"r\"");

                // asprintf(&command, "\"grep -c \'%s\' %s/vector_otg.out\", \"r\" ", real_pattern, dumpDir);
                // printf("command: popen(%s)\n", command);
                
                // const char *temp = command;
                // fp = popen("grep -c '00000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000100000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000' /home/UFAD/pravin.gaikwad/Benchmarks/LEDA/ISCAS85/c2670///vector_otg.out", "r" );
                // fp = popen(command);                
                // if (fp == NULL) {
                //     printf("Failed to run command\n" );
                //     exit(1);
                // }
                // pclose(fp);

                //check if vector is present in vector_otg
                char *command;
                if( access( otg_file, F_OK ) == 0 ) {
                    // file exists  --> remove
                    asprintf(&command, "sh %s/check_dup.sh %s %s/vector_otg.out > %s/check_dup.txt", exeDir, real_pattern, dumpDir, dumpDir);    
                    system(command);

                    // printf("command: %s\n", command);
                    free(command);

                    char *checkDupFile;
                    asprintf(&checkDupFile, "%s/check_dup.txt", dumpDir);

                    //read check_dup.txt file and update checkDup flag
                    fp = fopen(checkDupFile, "r");

                    while(!feof(fp))
                    {
                        fscanf(fp, "%[^\n]\n", buffer);
                        // printf("%s\n", buffer);
                        if(!strcmp(buffer, "1"))
                            checkDup = 1;
                        else
                            checkDup = 0;
                    }
                    fclose(fp);
                }

                if(checkDup == 1)       //if real pattern is duplicate no need to run simulation
                {
                    curr_add++;
                    continue;
                }
                //for first time flag all actual hit edges
                //next time onwards for new vector act>prev_act + expHit
                int validReal=0;
                if(firstRealFlag == 1)
                {
                    validReal = isGoodRealVec(G, topoArr, dumpDir, fullScan, real_pattern, expHit, valid_rare_nets, firstRealFlag);
                    firstRealFlag = 0;
                }
                else
                {
                    validReal = isGoodRealVec(G, topoArr, dumpDir, fullScan, real_pattern, expHit, valid_rare_nets, firstRealFlag);
                }

                // printf("%d, %s\n%s\n", curr_add, unk_vec, real_pattern);            
                if(validReal == 1)
                {
                    //insert if hit count is > prev hit count 
                    // array_insert_last(char*, final_real_patterns, strdup(real_pattern));                        
                    otg_fileHandle = fopen(otg_file, "a");
                    fprintf(otg_fileHandle, "%s\n", real_pattern);
                    fclose(otg_fileHandle);
                }
                curr_add++;
                free(real_pattern);
            }            
        }
        else            //already real pattern
        {
            int checkDup = 0;
            // for(int j=0; j<array_n(final_real_patterns); j++)
            // {
            //     char *tempVec = array_fetch(char*, final_real_patterns, j);
            //     if(strlen(tempVec) != strlen(unk_vec))
            //     {
            //         printf("String lengths not same\n");
            //         exit(0);
            //     }
            //     if(!strcmp(tempVec, unk_vec))
            //     {
            //         checkDup = 1;
            //         break;
            //     }                        
            // }
            //check if vector is present in vector_otg
            if( access( otg_file, F_OK ) == 0 ) {
                //file exists    
                char *command;
                asprintf(&command, "sh %s/check_dup.sh %s %s/vector_otg.out > %s/check_dup.txt", exeDir, unk_vec, dumpDir, dumpDir);

                system(command);

                // printf("command: %s\n", command);
                free(command);

                char *checkDupFile;
                asprintf(&checkDupFile, "%s/check_dup.txt", dumpDir);

                //read check_dup.txt file and update checkDup flag
                fp = fopen(checkDupFile, "r");

                while(!feof(fp))
                {
                    fscanf(fp, "%[^\n]\n", buffer);
                    // printf("%s\n", buffer);
                    if(!strcmp(buffer, "1"))
                        checkDup = 1;
                    else
                        checkDup = 0;
                }
                fclose(fp);
            }

            if(checkDup == 1)       //if real pattern is duplicate no need to run simulation
            {
                curr_add++;
                continue;
            }
            
            // int validReal = isGoodRealVec(G, topoArr, dumpDir, fullScan, unk_vec, expHit, valid_rare_nets);
            // printf("Add real pattern later\n");
            // if(validReal == 1)
            // {
                //insert if hit count is > prev hit count 
                // array_insert_last(char*, final_real_patterns, strdup(unk_vec));                                                          
                otg_fileHandle = fopen(otg_file, "a");
                fprintf(otg_fileHandle, "%s\n", unk_vec);
                fclose(otg_fileHandle);
            // }                     
        }
    }
    printf("\n[DEBUG] 3 ");
    // printf("Total real vectors: %d\n", array_n(final_real_patterns));
    // return final_real_patterns;
    return NULL;
}

/**
 * @brief \todo update description
 * 
 * @param unk_vec 
 * @return int 
 */
int get_no_unk(char *unk_vec)
{
    int unk_cnt = 0;
    for(int i=0; i<strlen(unk_vec); i++)
    {
        unk_cnt = unk_cnt + (unk_vec[i] == 'X' ? 1 : 0);            
    }
    return unk_cnt;
}

/**
 * @brief \todo update description
 * 
 * @param unk_vec 
 * @param curr_add 
 * @param unk_cnt 
 * @return char* 
 */
char *create_real_pattern(char *unk_vec, int curr_add, int unk_cnt)
{
    // char *real_vec = (char*)malloc(sizeof(char)*(strlen(unk_vec)+1));
    // if(real_vec == NULL)
    // {
    //     printf("malloc failure\n");
    //     exit(0);
    // }
    char *real_vec = strdup(unk_vec);
    if(real_vec == NULL)
    {
        printf("malloc failure in strdup\n");
        exit(0);
    }
    // printf("unk: %s\n", unk_vec);
    char *binOp = intToBin(curr_add, unk_cnt);
    // printf("unk cpy%s\n", real_vec);
    int bitSubCnt = 0;
    for(int i=0; i<strlen(real_vec); i++)
    {
        if(real_vec[i] == 'X')
        {
            real_vec[i] = binOp[bitSubCnt];
            //real_vec[i] = '0';
            bitSubCnt++;
        }
            
    }
    free(binOp);

    return real_vec;
}

/**
 * @brief \todo update description
 * 
 * @param intNo 
 * @param unk_cnt 
 * @return char* 
 */
char *intToBin(int intNo, int unk_cnt)
{
    char *binOp = (char*)malloc(sizeof(char)*unk_cnt);
    memset (binOp,'0',unk_cnt);

    int rem, temp = 1;

    int bit_pos = 0 ;

    while (intNo!=0)
    {
        rem = intNo%2;
        intNo = intNo / 2;
        binOp[bit_pos] = (rem == 1 ? '1' :'0');        
        bit_pos++;
    }
    return binOp;
}

/**
 * @brief vector sanity check
 * 
 * @param G                 - CAST graph structure
 * @param topoArr           - Topologically sorted list of vertices
 * @param dumpDir           - Output directory
 * @param fullScan          - Scan flag set to 1.
 * @param vector            - Vector with 0/1
 * @param expHit            - Minimum expected hit nets
 * @param valid_rare_nets   - Valid set of rare nets
 * @param firstRealFlag     - Flag to check if current unk vector is sued for first time
 * @return int              - 1 if its good vector, 0 otherwise
 * 
 * @note
 * 
 * - Function simOneVectorwExp() is called to simulate the vector.
 *      -# if actual hit == 0 -> WARNING id produced
 *      -# else if it is firstRealVector for current unk vector
 *              -# edg->meroCovered flag is set to 1 for actual hit nets and newHitEdge is set to 1
 *              else
 *              -# edg->meroCovered flag is set to 1 for actual hit nets and newHitEdge is set to 1
 *                  if it is a new hit edge
 * - if newHitEdge is set to 1 vector is valid vector.
 */
int isGoodRealVec(graph *G, array_t* topoArr, char *dumpDir, int fullScan, char *vector, array_t *expHit, array_t *valid_rare_nets, int firstRealFlag)
{   
    int newHitEdge = 0;
    //simulate and get actual hit edges
    array_t *actual_hit = simOneVectorwExp(G, topoArr, dumpDir, fullScan, vector, expHit, valid_rare_nets);
    if(array_n(actual_hit) == 0)
    {
        printf("WARNING: Not a single valid rare net got triggered by %s\n", vector);
    }
    else    //check if act >= exp and update edg->covered
    {
        // printf("%s:", vector);
        if(firstRealFlag == 1)      //first real vector from unk_vector, store hit edge requried for next set of vectors
        {
            //reset all valid rare edge flag
            for(int i=0; i<array_n(valid_rare_nets); i++)
            {
                edge *edg = array_fetch(edge*, valid_rare_nets, i);
                edg->meroCovered = 0;
            }
            //set only actual hit/valid rare edges
            for(int i=0; i<array_n(actual_hit); i++)
            {
                edge *edg = array_fetch(edge*, actual_hit, i);
                // printf("%s,", edg->name);
                edg->meroCovered = 1;
                newHitEdge = 1;                
            }
        }
        else
        {
            //set additional actual hit/valid rare edges
            for(int i=0; i<array_n(actual_hit); i++)
            {
                edge *edg = array_fetch(edge*, actual_hit, i);
                // printf("%s,", edg->name);
                if(edg->meroCovered == 0)
                {
                    edg->meroCovered = 1;
                    newHitEdge = 1;
                }
            }
        }
        // printf("\n");
        array_free(actual_hit);
    }
    if(newHitEdge == 1)
        return 1;
    return 0;
}


/**
 * @brief Performs simulation with one vector.
 * 
 * @param G                 - CAST graph data structure.
 * @param topoArr           - Topologically sorted list of vertices.
 * @param dumpDir           - Output directory to store all the results for current file. 
 * @param fullScan          - Scan flag set to 1.
 * @param vector            - Vector for simulation.
 * @param expHit            - List of expected hit nets.
 * @param valid_rare_nets   - Valid rare nets.
 * @return array_t*         - Returns hit_edg_array.
 * 
 * @note
 * 
 * - edge->atLogic for ground and vdd are set to 0 and 1.
 * - apply the test pattern to PI's
 * - for sequential elements, FF output are set to respective value
 *      -# vector[array_n(G->primInEdges) + ith ff] is assigned to Q/QN
 *          -# TMAX is giving pattern with Q bit value
 * - logic propogation through toposort array using calLogicSim() function
 * - minimum edge hit check is performed and hit_edg_array is returned
 * 
 */
array_t* simOneVectorwExp(graph *G, array_t* topoArr, char *dumpDir, int fullScan, char *vector, array_t *expHit, array_t *valid_rare_nets)
{
    //assigning default values for all egdges
    for(int i = 0; i < array_n(G->edgArr); i++)
    {
        edge *q = array_fetch(edge*, G->edgArr, i);
        q->atLogic = -1;
        if (!strcmp(q->name, "1'b1") || !strcmp(q->name, "1") || !strncmp(q->name,"VDD",4))
            q->atLogic = 1;
        if (!strcmp(q->name, "1'b0") || !strcmp(q->name, "0") || !strncmp(q->name,"GND",4))
            q->atLogic = 0;
    }

    
    // apply the test pattern to PI's
    for(int i = 0; i < array_n(G->primInEdges); i++)
    {
        edge *tempEdge = array_fetch(edge*, G->primInEdges, i);
        tempEdge->atLogic = (vector[i] == '0' ? 0 : 1);
    }

    if (fullScan)
    {
        for(int i = 0; i < array_n(G->seqGates); i++)
        {
            vertex *tempVert = array_fetch(vertex*, G->seqGates, i);
            for (int j = 0; j < array_n(tempVert->outEdges); j++)
            {
                edge *tempEdge = array_fetch(edge*, tempVert->outEdges, j);
                char *port = array_fetch(char*, tempVert->outPorts, j);
                if (!strcmp(port, ".Q"))
                {
                    // tempEdge->newVal = (vector[array_n(G->primInEdges) + i] == '0' ? 0 : 1);
                    tempEdge->atLogic = (vector[array_n(G->primInEdges) + i] == '0' ? 0 : 1); //add values after PI are over
                }                        
                else if (!strcmp(port, ".QN"))
                {
                    // tempEdge->newVal = (vector[array_n(G->primInEdges) + i] == '0' ? 1 : 0);
                    tempEdge->atLogic = (vector[array_n(G->primInEdges) + i] == '0' ? 1 : 0);
                }
            }
        }
    }

    //propogate logic to priamry outputs
    for(int i = 0; i < array_n(topoArr); i++)
    {
        vertex *tempVert = array_fetch(vertex*, topoArr, i);
        int updatesimResultsFlag=0;
        calLogicSim(G, tempVert, updatesimResultsFlag);
    }

    int *check_min_hit;
    check_min_hit = (int*)calloc(array_n(G->edgArr), sizeof(int));

    for(int h=0; h<array_n(expHit); h++)
    {
        edge * tempHit = array_fetch(edge*, expHit, h);
        check_min_hit[tempHit->idx] = 1;
    }                
    
    array_t *hit_edg_array = array_alloc(edge*, 1);
    int curr_hit = 0;

    for (int j = 0; j < array_n(valid_rare_nets); j++)
    {
        edge *edg = array_fetch(edge*, valid_rare_nets, j);
        
        if (edg->atLogic == edg->lowProbVal)
        {
            curr_hit++;
            array_insert_last(edge*, hit_edg_array, edg); 
            check_min_hit[edg->idx] = 0;
        }    
    }
    int tempSum = 0;
    for(int sumI=0;sumI<array_n(G->edgArr);sumI++)
        tempSum = tempSum + check_min_hit[sumI];

    free(check_min_hit);

    if(tempSum != 0 && debug == 1)
    {
        printf("!!ERROR: min nets not getting hit single vector w expected edges\n");
        // char *tempVector = array_fetch(char*, G->unk_vectors, v);
        // printf("unk_vector:%s\n", tempVector);
        printf("real_vector:%s\n", vector);
        
        //-----------printing expected hit edges
        printf("\texp: ");
        for(int j=0; j<array_n(expHit);j++)
        {
            edge* deleteEdge = array_fetch(edge*, expHit, j); 
            printf("%s,", array_fetch(edge*, expHit, j)->origName);
        }
        printf("\n");
        //-----------printing expected hit edges with topo level
        for(int j=0; j<array_n(expHit);j++)
        {
            edge* deleteEdge = array_fetch(edge*, expHit, j); 
            printf("%s:from %s: topo: %d exp: %d act: %d\n", deleteEdge->origName, deleteEdge->fromNode->name, deleteEdge->fromNode->lvlIdx,deleteEdge->lowProbVal, deleteEdge->atLogic);
        }
        //-----------printing actual hit edges
        printf("\tact: ");
        for(int j=0; j<array_n(hit_edg_array);j++)
        {
            printf("%s,", array_fetch(edge*, hit_edg_array, j)->origName);
        }
        printf("\n");
        //-----------printing missing edges
        for(int j=0; j<array_n(expHit);j++)
        {
            edge* expEdge = array_fetch(edge*, expHit, j); 
            int edgeMatchFlag = 0;
            for(int k=0; k<array_n(hit_edg_array);k++)
            {
                edge* actEdge = array_fetch(edge*, hit_edg_array, k); 
                if(expEdge->idx == actEdge->idx)
                    edgeMatchFlag = 1;

            }
            if(edgeMatchFlag == 0)
                printf("Missing %s:from %s: topo: %d exp: %d act: %d\n", expEdge->origName, expEdge->fromNode->name, expEdge->fromNode->lvlIdx,expEdge->lowProbVal, expEdge->atLogic);
        }
    }
    return hit_edg_array;
}

/**
 * @brief Get the valid rare nets from Trojan object
 * 
 * @param G                         - CAST graph structure
 * @param justified_triggers        - Justified triggers
 * @param trojan_valid_rare_nets    - valid nets in Trojans
 * 
 */
void get_valid_rare_nets_from_Trojan(graph *G, array_t *justified_triggers, array_t **trojan_valid_rare_nets)
{
    if(array_n(justified_triggers) == 0)
    {
        printf("No justified Trojans\n");
        exit(0);
    }
    int *edgFlagArray = (int*)calloc(array_n(G->edgArr), sizeof(int));
    if (!edgFlagArray) 
    {
        printf("edgFlagArray mem failure, exiting \n");
        exit(0);
    }

    for(int i=0; i<array_n(justified_triggers); i++)
    {
        array_t *triggerSet = array_fetch(array_t*, justified_triggers, i);
        for(int e=0; e<array_n(triggerSet); e++)
        {
            edge *tempEdge = array_fetch(edge*, triggerSet, e);
            if(edgFlagArray[tempEdge->idx] == 0)
            {
                array_insert_last(edge*, *trojan_valid_rare_nets, tempEdge);
                edgFlagArray[tempEdge->idx] = 1;
            }
        }
    }
}

/**
 * @brief 
 * 
 * @param G                 - CAST graph structure
 * @param dumpDir           - Output directory
 * @param valid_rare_nets   - Valid set of rare nets
 * 
 * @note
 * 
 * Function removes valid rare nets which are not present in current set of Trojans
 * - base_patterns.csv file is read
 * - all valid rare nets are flagged
 * - base_patterns_cp is created to dump only those nets that are present in Trojans
 *      -# File structure: edg->origName, edg->lowProbVal ,tempPattern
 * - files are moved mv %s/base_patterns_cp.csv %s/base_patterns.csv  as this file is 
 *   used further
 * 
 */
void remove_invalid_base_patterns(graph *G, char *dumpDir, array_t *valid_rare_nets)
{
    char *base_pattern;
    if(asprintf(&base_pattern, "%s/base_patterns.csv", dumpDir) == -1)
    {
        printf("ERROR: malloc failed for base_pattern file name.\n");
        exit(0);
    }
    if( access( base_pattern, F_OK ) != 0 ) {
        printf("!!WARNING: Can't find file base_patterns in op directory.\n");
        free(base_pattern);
        exit(0);
    }
    
    //settiong valid edge flags
    int *edgFlagArray = (int*)calloc(array_n(G->edgArr), sizeof(int));
    if (!edgFlagArray) 
    {
        printf("ERROR: edgFlagArray mem failure, exiting \n");
        exit(0);
    }
    for(int e=0; e<array_n(valid_rare_nets); e++)
    {
        edge *tempEdge = array_fetch(edge*, valid_rare_nets, e);
        edgFlagArray[tempEdge->idx] = 1;
    }

    //reading base_patterns file
    FILE *fileHandle = fopen(base_pattern, "r");

    char *base_pattern_cp;
    if(asprintf(&base_pattern_cp, "%s/base_patterns_cp.csv", dumpDir) == -1)
    {
        printf("ERROR: malloc failed for base_pattern_cp file name.\n");
        exit(0);
    }
    FILE *writeHandle = fopen(base_pattern_cp, "w");
    
    int maxVectorLength = 500000;
    char buffer[maxVectorLength];

    while (fgets(buffer,maxVectorLength,fileHandle) != NULL)
    {
        array_t *data = string_strip(buffer, ",\n");
        
        char *tempWord = array_fetch(char*, data, 0);         //rare edge
        edge* edg = findEdgeOrig(strdup(tempWord), G->edgArr);            
        if(edg)
        {
            if(edgFlagArray[edg->idx] == 1)
            {
                char *tempPattern = array_fetch(char*, data, 2);    // unk_pattern
                fprintf(writeHandle, "%s,%d,%s\n", edg->origName, edg->lowProbVal ,tempPattern);
            }            
        }
        else
        {
            printf("ERROR: Edge not found while removing from invalid nets.\n");
            exit(0);
        }
    }

    // mv student1.txt /var/students/class1-student1.txt
    fclose(fileHandle);
    fclose(writeHandle);

    char *command;
    if(asprintf(&command, "mv %s/base_patterns_cp.csv %s/base_patterns.csv", dumpDir, dumpDir) == -1)
    {
        printf("ERROR: malloc error in mocing files\n");
        exit(0);
    }
    system(command);
    
    free(command);
    free(base_pattern_cp);
    free(base_pattern);
}

/**
 * @brief Get the sorted valid nets object
 * 
 * @param valid_rare_nets       - input edge array
 * @param sorted_valid_rare     - sorted output array as per G->edgArr
 * 
 */
void get_sorted_valid_nets(graph *G, array_t *valid_rare_nets, array_t **sorted_valid_rare)
{
    int *edgFlagArray = (int*)calloc(array_n(G->edgArr), sizeof(int));
    for(int e=0; e<array_n(valid_rare_nets); e++)
    {
        edge* tempEdge = array_fetch(edge*,valid_rare_nets, e);
        edgFlagArray[tempEdge->idx] = 1;
    }

    for(int e=0; e<array_n(G->edgArr); e++)
    {
        edge* tempEdge = array_fetch(edge*,G->edgArr, e);
        if(edgFlagArray[tempEdge->idx])
            array_insert_last(edge*, *sorted_valid_rare, tempEdge);
    }

    free(edgFlagArray);
}