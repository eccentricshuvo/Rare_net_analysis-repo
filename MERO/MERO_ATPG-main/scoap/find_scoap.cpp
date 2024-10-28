//
// Created by m588h354 on 10/22/24.
//

#include "mero.h"
#include "scoap.h"
#include "graph.h"
extern int debug;

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