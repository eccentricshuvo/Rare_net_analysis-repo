/**************************************************************************************
VIPR: Verification of IP trust
Copyright: University of Florida, Gainesville, FL, USA

This document is copyright protected and property of the above mentioned entity. 
Any disclosure, alteration, re-distribution, or commercial use is NOT allowed without 
the consent of the developers and/or the entity mentioned above.

For copyright issues, contact information can be found in the following site.
Link: http://swarup.ece.ufl.edu/

***************************************************************************************/

#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include "array.h"
#include "graph.h"
#include <limits.h>
#include<math.h>
#include<ctype.h>
#include <limits.h>

#define IN 0
#define OUT 1

#define IN_RES 500    // voltage source resistance value
extern int bDebug;
int      globalVertIdx;
int      globalEdgIdx;
array_t* convertGraph2Verilog_comb(graph* G, FILE* fptr, int hier, int bgated, char *dumpDir, graph *G_original)
{
    int i, j, k, bFirst;
    char* str, *tstr, *word, *prevGating = NULL;
    vertex* vert;
    edge* edg;
    // array_t* vertices = array_dup(G->vertexArr);
    array_t* poutEdges = array_alloc(edge*, 1);
    array_t* pinEdges = array_alloc(edge*, 1);

    // printf("Original primary inputs: \n");
    for (i = 0; i < array_n(G->primInEdges); i++)
    {
        edg = array_fetch(edge*, G->primInEdges, i);
        //if (edg->bSeqOut) continue;		// removed by Hitesh
        edg->fromFFName = strdup(edg->name);
        // printf("%s\n", edg->name);
        array_insert_last(edge*, pinEdges, edg);
    }

    int seqinPins = 0;   
    int *seqOutPinsUnique = (int*)malloc(sizeof(int)*array_n(G->edgArr));
    int *pOutToRemove = (int*)malloc(sizeof(int)*array_n(G->edgArr));

    int seq_w_two_op = 0;
    int seq_w_one_op = 0;
    //collecting unique FF output edges -> converted to pseudo PI 
    for(i=0; i<array_n(G->seqGates); i++)
    {
        vertex *vert = array_fetch(vertex*, G->seqGates, i);
        if(array_n(vert->outEdges)==2)
            seq_w_two_op++;
        else
            seq_w_one_op++;
        for(j=0; j<array_n(vert->outEdges); j++)
        {
            edge *edg = array_fetch(edge*, vert->outEdges, j);
            if(edg->bPrimOut == 1)
            {
                pOutToRemove[edg->idx] = 1;
            }
            // if(array_n(edg->toNodes)!=0)             //getting all FF output edge even though they are not connected to anything
                seqOutPinsUnique[edg->idx] = 1;
            char *port = array_fetch(char*, vert->outPorts, j);
            char *tempEdgeName;
            if (!strcmp(port, ".Q"))    //edge coming from Q-> add reg_name + Q
            {
                asprintf(&tempEdgeName, "%s_Q", edg->fromNode->name);
            }
            else if (!strcmp(port, ".QN"))      //edge coming from Q-> add reg_name + QN
            {
                asprintf(&tempEdgeName, "%s_QN", edg->fromNode->name);
            }   
            // edg->name = strdup(edg->fromNode->name);            
            edg->name = strdup(tempEdgeName);            
            
        }
    }
    
    //Note: as here multiple edges can get added in prim input, order will not match with 
    //cast pi --> make sure vector and primary input have 1:1 mapping
    // printf("FF op converted to primary inputs: \n");
    array_t *tempQnpinEdges = array_alloc(edge*, 1);
    for(i=0; i<array_n(G->seqGates); i++)
    {
        vertex *vert = array_fetch(vertex*, G->seqGates, i);
        for(j=0; j<array_n(vert->outEdges); j++)
        {
            edge *edg = array_fetch(edge*, vert->outEdges, j);
            if(array_n(vert->outEdges) == 1)
            {
                if(seqOutPinsUnique[edg->idx] == 1)
                {
                    //edg->fromFFName = strdup(edg->fromNode->name);        //updating name to driving FF name
                    // edg->name = strdup(edg->fromNode->name);        //updating name to driving FF name
                    array_insert_last(edge*, pinEdges, edg);
                    // printf("%s\n", edg->name);
                    seqinPins++;
                }
            }
            else    //if there are two output edge take edge with Q and edge with QN later
            {
                char *currPort = array_fetch(char*, vert->outPorts, j);
                if (!strcmp(currPort, ".Q")) 
                {
                    if(seqOutPinsUnique[edg->idx] == 1)
                    {
                        array_insert_last(edge*, pinEdges, edg);
                        seqinPins++;
                    }   
                }
                else
                {
                    if(seqOutPinsUnique[edg->idx] == 1)
                    {
                        array_insert_last(edge*, tempQnpinEdges, edg);
                        seqinPins++;
                    }   
                }
            }
            
        }
    }
    //this is to take all primary input edges first, then single edge for each FF
    //and finally qn_bar edge of FF with 2 ouptuts
    //after processing vector based on primary_inputs+len(seq_elements)
    //remainning vectors are flipped for qn_bar edges
    for(int i=0; i<array_n(tempQnpinEdges); i++)
    {
        edge *qn_edge = array_fetch(edge*, tempQnpinEdges, i);
        array_insert_last(edge*, pinEdges, qn_edge);
    }
    //below code does not keep same order of FF as that of cast appraoch
    // for(i=0; i<array_n(G->edgArr); i++)
    // {
    //     edge *edg = array_fetch(edge*, G->edgArr, i);
    //     if(seqOutPinsUnique[edg->idx] == 1)
    //     {
    //         // edg->fromFFName = strdup(edg->fromNode->name);        //updating name to driving FF name
    //         array_insert_last(edge*, pinEdges, edg);
    //         seqinPins++;
    //     }
    // }

    printf("Added additional sequntial pins as input: %d\n", seqinPins);

    //check match with original graph
        printf("Total pseudo primInEdges in original: %d\n", array_n(G->primInEdges)+array_n(G->seqGates));
        printf("Total primInEdges in comb    : %d\n", array_n(pinEdges));
        printf("Total primInEdges in original design   : %d\n", array_n(G->primInEdges));
        printf("Sequential elements with 2 op edges    : %d\n", seq_w_two_op);
        printf("Sequential elements with 1 op edges    : %d\n", seq_w_one_op);

        for(int tempI=0; tempI<array_n(G->primInEdges); tempI++)
        {
            edge *origEdge = array_fetch(edge*, G->primInEdges, tempI);
            edge *combEdge = array_fetch(edge*, pinEdges, tempI);
            //comparison not happening correctly
            // if(!strcmp(origEdge, combEdge))
            // {
            //     printf("primEdge mismatch: original: %s\tcomb: %s\n", origEdge->name, combEdge->name);
            // }
        }
        for(int tempI=0; tempI<array_n(G->seqGates); tempI++)
        {
            vertex *origVert = array_fetch(vertex*, G->seqGates, tempI);
            edge *combEdge = array_fetch(edge*, pinEdges, (tempI + array_n(G->primInEdges)));
            //comparison not happening correctly
            // if(!strcmp(origVert, combEdge))
            // {
            //     printf("primEdge mismatch: originalV: %s\tcombE: %s\n", origVert->name, combEdge->name);
            // }
        }

    // printf("Original primary outputs: \n");
    for (i = 0; i < array_n(G->primOutEdges); i++)
    {
        edg = array_fetch(edge*, G->primOutEdges, i);
        //if (edg->bSeqIn) continue;		// removed by Hitesh
        if(pOutToRemove[edg->idx])
            continue;        
        // edg->fromFFName = strdup(edg->name);
        array_insert_last(edge*, poutEdges, edg);
        // printf("%s\n", edg->name);
    }

   
    int seqoutPins = 0;
    int *seqInPinsUnique = (int*)malloc(sizeof(int)*array_n(G->edgArr));
    for(i=0; i<array_n(G->seqGates); i++)
    {
        vertex *vert = array_fetch(vertex*, G->seqGates, i);
        // printf("\tvert: %s\n", vert->name);
        for(j=0; j<array_n(vert->inEdges); j++)
        {
            edge *edg = array_fetch(edge*, vert->inEdges, j);
            // printf("\t\tinEdges: %s\n", edg->name);
            if(edg->fromNode != NULL)
            {
                if(vert->isSeq && edg->fromNode->isSeq)
                    continue;
                seqInPinsUnique[edg->idx] = 1;
            }
                
            // array_insert_last(edge*, poutEdges, edg);
            // seqoutPins++;
        }
    }

    // printf("FF ip converted to primary outputs: \n");
    //here order of PO does not matter, hence pseudo PO are added in order from edgArr
    for(i=0; i<array_n(G->edgArr); i++)
    {
        edge *edg = array_fetch(edge*, G->edgArr, i);
        // edg->fromFFName = strdup(edg->name);
        if(seqInPinsUnique[edg->idx] == 1)
        {
            array_insert_last(edge*, poutEdges, edg);
            seqoutPins++;
            // printf("%s\n", edg->name);
        }
    }
    printf("Added additional sequntial pins as output: %d\n", seqoutPins);

    //no need to dump file as previous PI-order file can be used again 

    // char *piCombFileName;
    // asprintf(&piCombFileName, "%s/PI_order_comb.txt", dumpDir);
    // FILE *piHandle = fopen(piCombFileName, "w");

    // for(int i=0; i<array_n(pinEdges); i++)
    // {
    //     edge *edg = array_fetch(edge*, pinEdges, i);
    //     fprintf(piHandle, "%s\n", edg->name);
    // }
    // fclose(piHandle);
    
    fprintf(fptr, "module %s (", G->header);
    bFirst = true;
    printf("primary ordered edges\n");
    char *modPIEdgeFile;
    asprintf(&modPIEdgeFile, "%s/PI_for_comb.txt", dumpDir);
    FILE *modPIHandle = fopen(modPIEdgeFile, "w");
    for (i = 0; i < array_n(pinEdges); i++)
    {
        edg = array_fetch(edge*, pinEdges, i);
        str = edg->name; // for verilog compatibility
        fprintf(modPIHandle, "%s\n", edg->name);
        //str = edg->fromFFName; // for verilog compatibility        
        str = strncmp(str, "dummy_", 6) ? str : str + 6;
        //if (!strcmp("VDD", str) || !strcmp("GND", str))
            //continue;
        if (bFirst)
        {
            fprintf(fptr, "%s",  str);
            bFirst = false;
        }
        else
            fprintf(fptr, ", %s",  str);
    }
    fclose(modPIHandle);
    free(modPIEdgeFile);

	if (array_n(poutEdges))
	{
	     edg = array_fetch(edge*, poutEdges, 0);
		 if (array_n(pinEdges))
         {
             fprintf(fptr, ", %s", edg->name);
             //fprintf(fptr, ", %s", edg->fromFFName);
         }             
         else
         {
             fprintf(fptr, "%s", edg->name);
             //fprintf(fptr, "%s", edg->fromFFName);
         }
             
	}
    for (i = 1; i < array_n(poutEdges); i++)
    {
        edg = array_fetch(edge*, poutEdges, i);
        fprintf(fptr, ", %s", edg->name);
        //fprintf(fptr, ", %s", edg->fromFFName);
    }
    fprintf(fptr, ");\n");
    if (array_n(pinEdges))
        fprintf(fptr, "\ninput ");
    bFirst = true;
    for (i = 0; i < array_n(pinEdges); i++)
    {
        edg = array_fetch(edge*, pinEdges, i);
        str = edg->name; // for verilog compatibility
        //str = edg->fromFFName; // for verilog compatibility
        str = strncmp(str, "dummy_", 6) ? str : str + 6;
        //if (!strcmp("VDD", str) || !strcmp("GND", str))
            //continue;
        if (bFirst)
        {
            fprintf(fptr, "%s", str);
            bFirst = false;
        }
        else
            fprintf(fptr, ", %s", str);
    }
    if (array_n(pinEdges))
        fprintf(fptr, ";\n");
    if (array_n(poutEdges))
        fprintf(fptr, "\noutput ");
    for (i = 0; i < array_n(poutEdges); i++)
    {
        edg = array_fetch(edge*, poutEdges, i);
        str = edg->name; // for verilog compatibility
        //str = edg->fromFFName; // for verilog compatibility
        if (i < array_n(poutEdges) - 1)
            fprintf(fptr, "%s, ", str);
        else
            fprintf(fptr, "%s;\n", str);
    }

    
    array_t* vertices = array_dup(G->combGates);
    for (i = 0; i < array_n(vertices); i++)
    {
        vert = array_fetch(vertex*, vertices, i);
        // printf("Inside: %s\n", vert->name);
        //swaroop
        if(vert->bDummy || vert->bDeleted)
            continue;

        if (prevGating != vert->gatingCtrl)
        {
            prevGating = vert->gatingCtrl;
            fprintf(fptr, "\n");
        }

        if (strncmp(vert->type->name, "i1", 2))
            fprintf(fptr, "%s ", vert->type->name);
        else
            fprintf(fptr, "hi1s1 ");

        fprintf(fptr, "%s (", vert->name);

        for (j = 0; j < array_n(vert->outEdges); j++)
        {
            edg = array_fetch(edge*, vert->outEdges, j);
            fprintf(fptr, "%s(%s), ", array_fetch(char*, vert->outPorts, j), edg->name);
            //fprintf(fptr, "%s(%s), ", array_fetch(char*, vert->outPorts, j), edg->fromFFName);
        }

        for (j = 0; j < array_n(vert->inEdges)-1; j++)
        {
            edg = array_fetch(edge*, vert->inEdges, j);
            fprintf(fptr, "%s(%s), ", array_fetch(char*, vert->inPorts, j), edg->name);
            //fprintf(fptr, "%s(%s), ", array_fetch(char*, vert->inPorts, j), edg->fromFFName);
        }
        edg = array_fetch_last(edge*, vert->inEdges);
        fprintf(fptr, "%s(%s)", array_fetch_last(char*, vert->inPorts), edg->name);
        //fprintf(fptr, "%s(%s)", array_fetch_last(char*, vert->inPorts), edg->fromFFName);
        fprintf(fptr, " );\n");
    }
    fprintf(fptr, "\nendmodule\n\n");
    array_free(vertices);
    array_free(poutEdges);
    // array_free(pinEdges);
    
    return pinEdges;
}


void convertGraph2Verilog(graph* G, FILE* fptr, int hier, int bgated)
{
    int i, j, k, bFirst;
    char* str, *tstr, *word, *prevGating = NULL;
    vertex* vert;
    edge* edg;
    array_t* vertices = array_dup(G->vertexArr);
    array_t* poutEdges = array_alloc(edge*, 1);
    array_t* pinEdges = array_alloc(edge*, 1);

    for (i = 0; i < array_n(G->primInEdges); i++)
    {
        edg = array_fetch(edge*, G->primInEdges, i);
        //if (edg->bSeqOut) continue;		// removed by Hitesh
        array_insert_last(edge*, pinEdges, edg);
    }

    for (i = 0; i < array_n(G->primOutEdges); i++)
    {
        edg = array_fetch(edge*, G->primOutEdges, i);
        //if (edg->bSeqIn) continue;		// removed by Hitesh
        array_insert_last(edge*, poutEdges, edg);
    }

    //array_append(vertices, G->seqGates);	// removed by Hitesh

    fprintf(fptr, "module %s (", G->header);
    bFirst = true;
    for (i = 0; i < array_n(pinEdges); i++)
    {
        edg = array_fetch(edge*, pinEdges, i);
        str = edg->name; // for verilog compatibility
        str = strncmp(str, "dummy_", 6) ? str : str + 6;
        //if (!strcmp("VDD", str) || !strcmp("GND", str))
            //continue;
        if (bFirst)
        {
            fprintf(fptr, "%s",  str);
            bFirst = false;
        }
        else
            fprintf(fptr, ", %s",  str);
    }

	if (array_n(poutEdges))
	{
	     edg = array_fetch(edge*, poutEdges, 0);
		 if (array_n(pinEdges))
             fprintf(fptr, ", %s", edg->name);
         else
             fprintf(fptr, "%s", edg->name);
	}
    for (i = 1; i < array_n(poutEdges); i++)
    {
        edg = array_fetch(edge*, poutEdges, i);
        fprintf(fptr, ", %s", edg->name);
    }
    fprintf(fptr, ");\n");
    if (array_n(pinEdges))
        fprintf(fptr, "\ninput ");
    bFirst = true;
    for (i = 0; i < array_n(pinEdges); i++)
    {
        edg = array_fetch(edge*, pinEdges, i);
        str = edg->name; // for verilog compatibility
        str = strncmp(str, "dummy_", 6) ? str : str + 6;
        //if (!strcmp("VDD", str) || !strcmp("GND", str))
            //continue;
        if (bFirst)
        {
            fprintf(fptr, "%s", str);
            bFirst = false;
        }
        else
            fprintf(fptr, ", %s", str);
    }
    if (array_n(pinEdges))
        fprintf(fptr, ";\n");
    if (array_n(poutEdges))
        fprintf(fptr, "\noutput ");
    for (i = 0; i < array_n(poutEdges); i++)
    {
        edg = array_fetch(edge*, poutEdges, i);
        str = edg->name; // for verilog compatibility
        if (i < array_n(poutEdges) - 1)
            fprintf(fptr, "%s, ", str);
        else
            fprintf(fptr, "%s;\n", str);
    }

    for (i = 0; i < array_n(vertices); i++)
    {
        vert = array_fetch(vertex*, vertices, i);

        //swaroop
        if(vert->bDummy || vert->bDeleted)
            continue;

        if (prevGating != vert->gatingCtrl)
        {
            prevGating = vert->gatingCtrl;
            fprintf(fptr, "\n");
        }

        if (strncmp(vert->type->name, "i1", 2))
            fprintf(fptr, "%s ", vert->type->name);
        else
            fprintf(fptr, "hi1s1 ");

        fprintf(fptr, "%s (", vert->name);

        for (j = 0; j < array_n(vert->outEdges); j++)
        {
            edg = array_fetch(edge*, vert->outEdges, j);
            fprintf(fptr, "%s(%s), ", array_fetch(char*, vert->outPorts, j), edg->name);
        }

        for (j = 0; j < array_n(vert->inEdges)-1; j++)
        {
            edg = array_fetch(edge*, vert->inEdges, j);
            fprintf(fptr, "%s(%s), ", array_fetch(char*, vert->inPorts, j), edg->name);
        }
        edg = array_fetch_last(edge*, vert->inEdges);
        fprintf(fptr, "%s(%s)", array_fetch_last(char*, vert->inPorts), edg->name);
        fprintf(fptr, " );\n");
    }
    fprintf(fptr, "\nendmodule\n\n");
    array_free(vertices);
    array_free(poutEdges);
    array_free(pinEdges);
}



net* findNet(char* netName, array_t* netArr)
{
   int i;
   net* Net;

   for(i = 0; i < array_n(netArr); i++)
    {
      Net = array_fetch(net*, netArr, i);
      if(strcmp(Net->name, netName) == 0)
        return Net;
    }
    return NULL;
}

/* createNewNet: if the net is never found before, insert it into Gate->netArr */
net* createNewNet(char* word, Type* Gate)
{
    net* Net;
    array_t* NetArr;

    NetArr = Gate->netArr;
    Net = findNet(word, NetArr);
    if(Net == NULL)
     {
       Net = (net*)malloc(sizeof(net));
       Net->pchArr = array_alloc(trans*, 1);
       Net->nchArr = array_alloc(trans*, 1);
       Net->name = word;
       array_insert_last(net*, Gate->netArr, Net);
     }
     return Net;
}


/* getResistance: determines min & max width for min & max delay of a gate */
void getResistance(Type* Gate)
{
    net* Net;
    array_t* transArr;
    array_t* prmNetArr;
    net* prmNet;
    int i, n;
    array_t* NetArr;
    trans* tran;

    /* WMax induces Min Delay; WMin does Max Delay; */

    if(strncasecmp(Gate->name, "nnd", 3) == 0)
    {
        transArr = Gate->pChannel;
        tran = array_fetch(trans*, transArr, 0);
        Gate->WpMax = (tran->width)*(array_n(transArr)); // Min. Resistance //
        Gate->WpMin = (tran->width);             // Max. Resistance //
        Gate->WpOrg = tran->width;

        transArr = Gate->nChannel;
        tran = array_fetch(trans*, transArr, 0);
        Gate->WnMax = (tran->width)/(array_n(transArr));
        Gate->WnMin = Gate->WnMax;
        Gate->WnOrg = tran->width;

        Gate->NoTr = array_n(transArr);
    }

    else if(strncasecmp(Gate->name, "nor", 3) == 0)
    {
        transArr = Gate->pChannel;
        tran = array_fetch(trans*, transArr, 0);
        Gate->WpMax = (tran->width)/(array_n(transArr));
        Gate->WpMin = Gate->WpMax;
        Gate->WpOrg = tran->width;

        transArr = Gate->nChannel;
        tran = array_fetch(trans*, transArr, 0);
        Gate->WnMax = (tran->width)*(array_n(transArr));
        Gate->WnMin = (tran->width);
        Gate->WnOrg = tran->width;

        Gate->NoTr = array_n(transArr);
    }

    else if(strncasecmp(Gate->name, "i1", 2) == 0)
    {
        transArr = Gate->pChannel;
        tran = array_fetch(trans*, transArr, 0);
        Gate->WpMax = (tran->width);
        Gate->WpMin = Gate->WpMax;
        Gate->WpOrg = tran->width;

        transArr = Gate->nChannel;
        tran = array_fetch(trans*, transArr, 0);
        Gate->WnMax = (tran->width);
        Gate->WnMin = Gate->WnMax;
        Gate->WnOrg = tran->width;

        Gate->NoTr = array_n(transArr);
    }
}


/* words are broken into array */
array_t* breakInWords(char* header)
{
    array_t* wordArr = array_alloc(char*, 1);
    char* word = (char*)malloc(sizeof(char) * 120);
    int i, j, k;

    word[0] = '\0';
    i = j = 0;

    /* get rid of initial blanks */
    while(header[i] == ' ')
        i++;

    while(i < strlen(header))
    {
        if(header[i] == ' ')
        {
            word[j] = '\0';
            array_insert_last(char*, wordArr, strdup(word));
            j = 0;

            i++;
            while(header[i] == ' ')
                i++;
        }
        else
        {
           word[j++] = header[i];
           i++;
        }
    }

    /* add the last word */
    word[j] = '\0';
    array_insert_last(char*, wordArr, strdup(word));
	FREE(word);	// Added by Hitesh

    return wordArr;
}


array_t* breakInWordsVlog(char* header)
{
    array_t* wordArr = array_alloc(char*, 1);
    char* word = (char*)malloc(sizeof(char) * 200);
	char* word1;
    int i, j, k;
    int cnt = 0;

    word[0] = '\0';
    i = j = 0;

    /* get rid of initial blanks */
    while(header[i] == ' ')
        i++;

    while(i < strlen(header))
    {
        if(header[i] == ' ' || header[i] == '(' || header[i] == ')' ||
           header[i] == ',' || header[i] == ';')
        {
            word[j] = '\0';
			if(word[0] == '[')						// Added by Hitesh
			{
				//word1 = (char*)malloc(sizeof(char) * 200);
				word1 = array_fetch(char*, wordArr, array_n(wordArr)-1);
				if(strcmp(word1, "input") && strcmp(word1, "output") && strcmp(word1, "wire"))
					strcat(word1, word);
				else
					array_insert_last(char*, wordArr, word);
			}
			else
            	array_insert_last(char*, wordArr, word);
            word = (char*)malloc(sizeof(char) * 200);
            j = 0;

            i++;
            while(header[i] == ' ' || header[i] == '(' || header[i] == ')' ||
                  header[i] == ',' || header[i] == ';')
                i++;
        }
        else
        {
           word[j++] = header[i];
           i++;
        }
    }

    /* add the last word */
    if (j)
    {
        word[j] = '\0';
        array_insert_last(char*, wordArr, word);
    }

    return wordArr;
}


// Added by Hitesh
int getEdgeIndex(char* edgName, array_t *array)
{
    int i;
    edge *edg;
    for(i = 0; i < array_n(array); i++)
    {
		edg = array_fetch(edge*, array, i);
		if(!strcmp(edgName, edg->name))
	    	return i;
    }
    return -1;
}

edge* findEdgeOrig(char* edgName, array_t* globEdges)
{
    int i;
    edge* edg;

    for(i = 0; i < array_n(globEdges); i++)
    {
        edg = array_fetch(edge*, globEdges, i);
        if(strcmp(edg->origName, edgName) == 0)
            return edg;
    }
    return NULL;
}

edge* findEdge(char* edgName, array_t* globEdges)
{
    int i;
    edge* edg;

    for(i = 0; i < array_n(globEdges); i++)
    {
        edg = array_fetch(edge*, globEdges, i);
		if(strcmp(edg->name, edgName) == 0)
            return edg;
    }
    return NULL;
}

edge* findEdgeIdx(int edgIdx, array_t* globEdges)
{
    if(edgIdx < array_n(globEdges))
        return array_fetch(edge*, globEdges, edgIdx);
    return NULL;
}

void printGraph(graph* G)
{
		FILE *outFile;
		outFile = fopen("test.csv", "w");
    array_t* vertArr;
    array_t* edgArr;
    int i, j, k;
    edge* edg;
    vertex* vert, *tvert;

    vertArr = G->vertexArr;
    edgArr = G->edgArr;

    printf("Graph Description\n");
    printf("\n No of Vertices: %d \n", array_n(vertArr));

    for(i = 0; i < array_n(vertArr); i ++)
    {
        vert = array_fetch(vertex*, vertArr, i);
        if (vert->type)
            printf("Name: %s Type: %s Idx: %d PrimIn %d\n", vert->name,\
                vert->type->name, vert->idx, vert->bPrimIn);
        else
            printf("Name: %s Type: undefined Idx: %d PrimIn %d\n", vert->name,\
                 vert->idx, vert->bPrimIn);
        for(j = 0; j < array_n(vert->outEdges); j ++)
        {
            edg = array_fetch(edge*, vert->outEdges, j);
            printf("Out edgIdx: %d, edgName: %s\n", edg->idx, edg->name);
            printf("Fanout nodes: ");
            for(k = 0; k < array_n(edg->toNodes); k ++)
            {
                tvert = array_fetch(vertex*, edg->toNodes, k);
                if (!tvert)
                    continue;
                printf(" %s ", tvert->name);
            }
            printf("\n");
        }
        for(j = 0; j < array_n(vert->inEdges); j ++)
        {
            edg = array_fetch(edge*, vert->inEdges, j);
            printf("In edgIdx: %d, edgName: %s\n", edg->idx, edg->name);
        }
        printf("----------------\n");
    }

    printf("\n No of Edges: %d \n", array_n(edgArr));
    for(i = 0; i < array_n(edgArr); i ++)
    {
        edg = array_fetch(edge*, edgArr, i);
        if(edg->fromNode == NULL)
        {
            printf("edgIdx: %d edgName: %s Primary input: fromNode: NULL toNodes: ", \
                edg->idx, edg->name);
            for(j = 0; j < array_n(edg->toNodes); j++)
            {
                vert = array_fetch(vertex*, edg->toNodes, j);
                printf("%s ", vert->name);
            }
            printf("\n");
        }
        else if(array_n(edg->toNodes) == 0)
        {
            printf("edgIdx: %d edgName: %s fromNode: %s toNodes: NULL \n", \
                edg->idx, edg->name, edg->fromNode->name);
        }
        else
        {
            printf("edgIdx: %d edgName: %s fromNode: %s toNodes: ", \
                edg->idx, edg->name, edg->fromNode->name);
            fprintf(outFile, "edgIdx: %d edgName: %s fromNode: %s toNodes: ", \
                edg->idx, edg->name, edg->fromNode->name);
            for(j = 0; j < array_n(edg->toNodes); j++)
            {
                vert = array_fetch(vertex*, edg->toNodes, j);
                printf("%s ", vert->name);
            }
            printf("\n");
        }
    }

    return;
}



graph* createGraphFromVerilog(char* inputFileName, char* libFileName, char* moduleName, int* primInCnt, graph* rootG, char* libName)
{
   //int      globalVertIdx;
   //int      globalEdgIdx;
   int dCnt = 0, i, j, k, nFanout, icnt = 0, inidx = 5, ocnt = 0;;
   int gCnt = 0, nInVar = 0, nOutVar = 0, bAssnFlag = 0, assigncnt = 0;
   char *word, *header, *invout;
   char* Qnet, *outputVar, *gatetype, *gatename, *invname;
   int uniqueInvs = 0, uniqueNors = 0, uniqueNands = 0;
   int* marked = NULL;
   graph* G = (graph*)malloc(sizeof(graph));
   array_t* wordArr, *inVarArr, *outVarArr, *globEdges, *newPrimOutEdges;
   edge* edg, *outedg;
   char* pstr = (char*)malloc(sizeof(char)*50000000);
   char* pstr1 = (char*)malloc(sizeof(char)*50000000);
   FILE* fptr = fopen(inputFileName, "r");
   //FILE* libFile = fopen(libFileName, "r");
   FILE* libFile = NULL;
   Type* Gate;
   trans* Trans;
   net* Net;
   vertex* v;
   char* varName;// = malloc(sizeof(char)*400);		// Added by Hitesh
   char* temp;// = malloc(sizeof(char)*200);			// Added by Hitesh
   int bus_width;		// Added by Hitesh
   globalVertIdx = globalEdgIdx = *primInCnt = 0;

   if (!fptr)
   {
       printf("Input file %s not present. Exiting ...\n", inputFileName);
       exit(0);
   }

   inVarArr = array_alloc(char*, 1);
   outVarArr = array_alloc(char*, 1);
   header = (char*)malloc(sizeof(char)*10000);
   gatename = (char*)malloc(sizeof(char)*400);
   gatetype = (char*)malloc(sizeof(char)*400);


   /* initialize the graph */
   G->vertexArr = array_alloc(vertex*, 1);
   G->typeArr = array_alloc(Type*, 1);
   G->edgArr = array_alloc(edge*, 1);
   G->capArr = array_alloc(parasite*, 1);
   G->resArr = array_alloc(parasite*, 1);
   G->primInEdges = array_alloc(edge*, 1);
   G->primOutEdges = array_alloc(edge*, 1);
   G->fNodes = array_alloc(vertex*, 1);
   G->seqGates = array_alloc(vertex*, 1);
   G->nonscanDFF = array_alloc(vertex*, 1);        //added by Pravin on 10/7/19
   G->scanDFF = array_alloc(vertex*, 1);        //added by Pravin on 10/7/19
   G->combGates = array_alloc(vertex*, 1);
   G->processed = false;
   G->gatingDecoderArea = 0;
   G->gatingCtrl = "";
   G->header = strdup(moduleName);
   G->lowprobEdges = array_alloc(edge*, 1);

   G->all_tmax_pi_patterns = array_alloc(char*, 1);
   G->all_tmax_ff_patterns = array_alloc(char*, 1);

   
   if (rootG)
       G->typeArr = rootG->typeArr;
   else
   {
    while(libFile != NULL)
    {
        fscanf(libFile, "%[^\n]\n", header);
        if(strncasecmp(header, ".SUBCKT", 7) == 0)
        {
            /* Create New Gate */

            wordArr = breakInWords(header);
            Gate = (Type*)malloc(sizeof(Type));
            Gate->pChannel = array_alloc(trans*, 1);
            Gate->nChannel = array_alloc(trans*, 1);
            Gate->netArr = array_alloc(net*, 1);
            Gate->primNetArr = array_alloc(net*, 1);
            Gate->name = array_fetch(char*, wordArr, 1);
            for(i = 2; i < array_n(wordArr); i++)
             {
              word = array_fetch(char*, wordArr, i);
              Net = createNewNet(word, Gate);
              array_insert_last(net*, Gate->primNetArr, Net);
             }
            array_insert_last(Type*, G->typeArr, Gate);
        } 

        
        else if(strncasecmp(header, "m", 1) == 0)        // now it's a transistor
        {
            /* Gate Description */

            Trans = (trans*)malloc(sizeof(trans));
            wordArr = breakInWords(header);
            Trans->name = array_fetch(char*, wordArr, 0);
            word = array_fetch(char*, wordArr, 6);
            word[strlen(word) - 1] = '\0';
            Trans->width = atof(word+2)*1e-6;        // transistor width is stored

            word = array_fetch(char*, wordArr, 5);    // type of transistor
            if(strncasecmp(word, "pch", 3) == 0)
            {
                array_insert_last(trans*, Gate->pChannel, Trans);    // pull-up network

                word = array_fetch(char*, wordArr, 1);
                Net = createNewNet(word, Gate);
                array_insert_last(trans*, Net->pchArr, Trans);
                Trans->drain = Net;

                word = array_fetch(char*, wordArr, 2);
                Net = createNewNet(word, Gate);
                array_insert_last(trans*, Net->pchArr, Trans); 
                Trans->gate = Net;

                word = array_fetch(char*, wordArr, 3);
                Net = createNewNet(word, Gate);
                array_insert_last(trans*, Net->pchArr, Trans);
                Trans->source = Net;
             }

            else if(strncasecmp(word, "nch", 3) == 0)
            {
                array_insert_last(trans*, Gate->nChannel, Trans);    // pull-down network

                word = array_fetch(char*, wordArr, 1);
                Net = createNewNet(word, Gate);
                array_insert_last(trans*, Net->nchArr, Trans);
                Trans->drain = Net;

                word = array_fetch(char*, wordArr, 2);
                Net = createNewNet(word, Gate);
                array_insert_last(trans*, Net->nchArr, Trans);
                Trans->gate = Net;

                word = array_fetch(char*, wordArr, 3);
                Net = createNewNet(word, Gate);
                array_insert_last(trans*, Net->nchArr, Trans);
                Trans->source = Net;
            }
        }
        else if(strncasecmp(header, ".ENDS", 5) == 0)        // one gate is done
        {
            getResistance(Gate);        // calculate the effective Wmin and Wmax for Max & Min delay
        }
    }
    //fclose(libFile);    // library parsing is done
   }

   globEdges = G->edgArr;
   fscanf(fptr, "%s", pstr);
   while(!strstr(pstr, "module"))
       fscanf(fptr, "%s", pstr);
	
   // now read the input file
   int line = 1;
   while(!feof(fptr))
   {
        fscanf(fptr, "%[^\n]\n", pstr);
		if (pstr[0] == '/' && pstr[1] == '/')
            continue; // line comment
		
        if (pstr[0] != '/' || pstr[1] != '/')
        {
			// remove trailing white spaces
            for (i = strlen(pstr)-1; i >= 0; i--)
            {
                if (pstr[i] == ' ') 
                    pstr[i] = '\0';
                else break;
            }
			
            while (pstr[strlen(pstr)-1] != ';' && !strstr(pstr, "endmodule"))
            {
				//printf("%d\n", line++);
        
                fscanf(fptr, "%[^\n]\n", pstr1);
	
                // remove trailing white spaces
                for (i = strlen(pstr1)-1; i >= 0; i--)
                {
                    if (pstr1[i] == ' ') 
                        pstr1[i] = '\0';
                    else break;
                }
				//pstr = realloc(pstr, sizeof(pstr)+sizeof(pstr1));
                strcat(pstr, pstr1);
            }			        
        }
		
		wordArr = breakInWordsVlog(pstr);
    word = array_fetch(char*, wordArr, 0);
		if (!strncasecmp(word, "input", 5))							// Modified by Hitesh to include buses in input signals
        {
			word = array_fetch(char*, wordArr, 1);
			if(strstr(word, "[") && strstr(word, ":"))
			{
				temp = (char*)malloc(sizeof(char)*200);
				varName = (char*)malloc(sizeof(char)*400);
				for(i = 1; ; i++)
				{
					if(word[i] == ':')
						break;
					temp[i-1] = word[i];
				}
				temp[i-1] = '\0';
				bus_width = atoi(temp)+1;
				for(j = 2; j < array_n(wordArr); j++)
				{
					nInVar += bus_width;
					word = array_fetch(char*, wordArr, j);
					for(k = 0; k < bus_width; k++)
					{
						sprintf(varName, "%s_%d", word, k);
						array_insert_last(char*, inVarArr, strdup(varName));
					}
				}
				FREE(temp);
				FREE(varName);
			}
			else
			{
				nInVar += array_n(wordArr) - 1;
				for (i = 1; i < array_n(wordArr); i++)
    	        {
    	            word = array_fetch(char*, wordArr, i);
					if(word[0] == '\\')
					{
						for(j = 0; j < strlen(word) - 1; j++)
							word[j] = word[j+1];
						word[j] = '\0';
					}
					if(strstr(word, "["))
					{
						k = 0;
						for(j = 0; j < strlen(word); j++)
						{
							if(word[j] == '[')
								word[k++] = '_';
							else if(word[j] == ']')
								continue;
							else
								word[k++] = word[j];
						}
						word[k] = '\0';
					}
	                array_insert_last(char*, inVarArr, strdup(word));
    	        }
			}
        }
        else if (!strncasecmp(word, "output", 6))					// Modified by Hitesh to include buses in output signals
        {
            word = array_fetch(char*, wordArr, 1);
			if(strstr(word, "[") && strstr(word, ":"))
			{
				temp = (char*)malloc(sizeof(char)*200);
				varName = (char*)malloc(sizeof(char)*400);
				for(i = 1; ; i++)
				{
					if(word[i] == ':')
						break;
					temp[i-1] = word[i];
				}
				temp[i-1] = '\0';
				bus_width = atoi(temp)+1;
				for(j = 2; j < array_n(wordArr); j++)
				{
					nOutVar += bus_width;
					word = array_fetch(char*, wordArr, j);
					for(k = 0; k < bus_width; k++)
					{
						sprintf(varName, "%s_%d", word, k);
						array_insert_last(char*, outVarArr, strdup(varName));
					}
				}
				FREE(temp);
				FREE(varName);
			}
			else
			{
				nOutVar += array_n(wordArr) - 1;
	            for (i = 1; i < array_n(wordArr); i++)
    	        {
    	            word = array_fetch(char*, wordArr, i);
					if(word[0] == '\\')
					{
						for(j = 0; j < strlen(word) - 1; j++)
							word[j] = word[j+1];
						word[j] = '\0';
					}
					if(strstr(word, "["))
					{
						k = 0;
						for(j = 0; j < strlen(word); j++)
						{
							if(word[j] == '[')
								word[k++] = '_';
							else if(word[j] == ']')
								continue;
							else
								word[k++] = word[j];
						}
						word[k] = '\0';
					}
    	            array_insert_last(char*, outVarArr, strdup(word));
    	        }
			}
        }
        else if (!strncasecmp(word, "assign", 6))
        {
            word = array_fetch(char*, wordArr, 1);
	    	/*if(strstr(word, "["))
			{
				for(i = 0; i < strlen(word); i++)
				{
					if(word[i] == '[')
						break;
				}
				strncpy(temp, word+i+1, strlen(word)-i-2);
				temp[strlen(word)-i] = '\0';
				for(j = 0; j < strlen(temp); i++, j++)
					word[i] = temp[j];
				word[i] = '\0';
			}*/
            if(strlen(libName) == 8 && strstr(libName,"skywater"))
            {
                strcpy(gatetype,"buf_1");
            }
            else
            {
			    strcpy(gatetype, "nb1s1");
            }

            sprintf(gatename, "AU%d", assigncnt++);
            createNewVertexForVlog(G, wordArr, gatetype, gatename, G->edgArr, libName); // Changed by Hitesh
        }
        else if (!strncasecmp(word, "wire", 4) // || !strncasecmp(word, "assign", 6)
                  || !strncasecmp(word, "endmodule", 9) || !strncasecmp(word, "tri", 3) || (word[0] == '/' && word[1] == '/'))
        {
            continue;
        }
        else if (nInVar && nOutVar)
        {
            gatetype = array_fetch(char*, wordArr, 0);
            gatename = array_fetch(char*, wordArr, 1);
			//printf("---%s\t", gatename);
            
			if(strstr(gatename, "["))
			{
				for(j = 0, k = 0; j < strlen(gatename); j++)
				{
					if(gatename[j] == '[')
						gatename[k++] = '_';
					else if(gatename[j] == ']')
						continue;
					else
						gatename[k++] = gatename[j];
				}
				gatename[k++] = '\0';
			}
			createNewVertexForVlog(G, wordArr, gatetype, gatename, G->edgArr, libName);
		}
		//printf("*************\n");
	}
    fclose(fptr);
    /* find the set of primary input and output edges in the graph */
    /* first break the header into words & store in an arr */
    for(i = 0; i < nInVar; i++)
    {
        word = array_fetch(char*, inVarArr, i);
        edg = findEdge(word, globEdges);
        if (!edg)
        {
            // printf("Warning: Unconnected primary input edge %s\n", word);
            continue;
        }
              
        else if(edg->fromNode != NULL)
              printf("ERROR: primary edge assertion failure\n");
        else
        {
              edg->bPrimIn = true;
              array_insert_last(edge*, G->primInEdges, edg);
              (*primInCnt)++;			  
        }
    }


    for(i = 0; i < nOutVar; i++)
    {
        word = array_fetch(char*, outVarArr, i);
        edg = findEdge(word, globEdges);
        if (!edg)
              printf("Warning: Unconnected primary output edge %s\n", word);
        else
        {
            edg->bPrimOut = true;
            array_insert_last(edge*, G->primOutEdges, edg);
            ocnt++;
        }
    }
	//printf("*pri out: %d\n", array_n(G->primOutEdges));
    //printf("Number of primary inputs: %d primary outputs: %d\n", icnt, ocnt);
    array_free(inVarArr);
    array_free(outVarArr);
    //free(pstr);
    //free(pstr1);
    //free(header);
    //free(gatename);
    //free(gatetype);
    return G;
}



Type* findType(char* typeName, array_t* typArr)
{
    int i;
    Type* gateType, *Gate;

    for(i = 0; i < array_n(typArr); i++)
    {
        gateType = array_fetch(Type*, typArr, i);
        if(strcmp(gateType->name, typeName) == 0)
            return gateType;
    }
    //printf("Gate Type %s not found ... Creating a new type ...\n", typeName);

    Gate = (Type*)malloc(sizeof(Type));
    Gate->pChannel = array_alloc(trans*, 1);
    Gate->nChannel = array_alloc(trans*, 1);
    Gate->netArr = array_alloc(net*, 1);
    Gate->primNetArr = array_alloc(net*, 1);
    Gate->name = strdup(typeName);
    array_insert_last(Type*, typArr, Gate);
    return Gate;
}

/* createEdge: Edge structure initializatioin */
edge* createEdge(graph* G, char* name)
{
    edge* edg;
    int primInFlag = false;
    char* modName = name;
	
    /*if (!strcmp(modName, "1'b0") || !strcmp(modName, "0"))
    {
        modName = "GND";
        primInFlag = true;
    }
    else if (!strcmp(modName, "1'b1") || !strcmp(modName, "1"))
    {
        modName = "VDD";
        primInFlag = true;
    }*/

    edg = findEdge(name, G->edgArr);

    if(edg == NULL)              /* no edge present, create one */
    {
        edg = (edge*)malloc(sizeof(edge));
        edg->globalEdgIdx = globalEdgIdx;           //Added by Pravin
        edg->idx = globalEdgIdx++;
        edg->toNodes = array_alloc(vertex*, 1);
        edg->bSeqIn = false;
        edg->bSeqOut = false;
        edg->activity01 = edg->activity10 = 0;
        edg->cplCap = array_alloc(parasite*, 1);
        edg->switchTimeArr = array_alloc(float, 1);
        edg->assnValues = array_alloc(int, 1);
        edg->prmEdgArr = array_alloc(edge*, 1);
        edg->timeEdgArr = array_alloc(edge*, 1);
        edg->crtEdgArr = array_alloc(edge*, 1);
        edg->switchArr = array_alloc(int, 1);
        edg->tmpSwitchArr = array_alloc(int, 1);
        edg->swTimeArr = array_alloc(float, 1);
        edg->tmpSwTimeArr = array_alloc(float, 1);
        edg->rDlyMaxArr = array_alloc(float, 1);
        edg->rDlyMinArr = array_alloc(float, 1);
        edg->fDlyMaxArr = array_alloc(float, 1);
        edg->fDlyMinArr = array_alloc(float, 1);
        edg->gateDlyRArr = array_alloc(float, 1);
        edg->gateDlyFArr = array_alloc(float, 1);
        edg->TtimeRmaxArr = array_alloc(float, 1);
        edg->TtimeRminArr = array_alloc(float, 1);
        edg->TtimeFmaxArr = array_alloc(float, 1);
        edg->TtimeFminArr = array_alloc(float, 1);
        edg->TtimeRArr = array_alloc(float, 1);
        edg->TtimeFArr = array_alloc(float, 1);
        edg->tmpPropArr = array_alloc(int, 1);
        edg->rDelayMaxArr = array_alloc(float, 1);
        edg->rDelayMinArr = array_alloc(float, 1);
        edg->fDelayMaxArr = array_alloc(float, 1);
        edg->fDelayMinArr = array_alloc(float, 1);
        
        edg->fromNode = NULL;
        edg->maxCcEdg = NULL;
        edg->mainPrmIn = NULL;
        edg->name = modName;
	    //edg->origName = modName;
        edg->cplCapFlag = -1;
        edg->gndCap = 0.0;
        edg->maxCc = 0;
        edg->maxCcConflict = 0;
        edg->tmpMaxDelay = 0;
        edg->rDelayMax = 0;
        edg->rDelayMaxOrg = 0;
        edg->rDelayMaxTmp1 = 0;
        edg->rDelayMin = 0;
        edg->rDelayMinOrg = 0;
        edg->rDelayMinTmp1 = 0;
        edg->fDelayMax = 0;
        edg->fDelayMaxOrg = 0;
        edg->fDelayMaxTmp1 = 0;
        edg->fDelayMin = 0;
        edg->fDelayMinOrg = 0;
        edg->fDelayMinTmp1 = 0;
        edg->maxDelay = 0;
        edg->minDelay = 0;
        edg->gateDelayR = 0;
        edg->gateDelayRTmp = 0;
        edg->gateDelayROrg = 0;
        edg->gateDelayF = 0;
        edg->gateDelayFTmp = 0;
        edg->gateDelayFOrg = 0;
        edg->weight = 55;
        edg->TtimeR = 20e-12;
        edg->TtimeROrg = edg->TtimeR;
        edg->TtimeRTmp = edg->TtimeR;
        edg->TtimeF = 20e-12;
        edg->TtimeFOrg = edg->TtimeF;
        edg->TtimeFTmp = edg->TtimeF;
        edg->TtimeRmax = 20e-12;
        edg->TtimeRmaxOrg = edg->TtimeRmax;
        edg->TtimeRmaxTmp = edg->TtimeRmax;
        edg->TtimeRmin = 20e-12;
        edg->TtimeRminOrg = edg->TtimeRmin;
        edg->TtimeRminTmp = edg->TtimeRmin;
        edg->TtimeFmax = 20e-12;
        edg->TtimeFmaxOrg = edg->TtimeRmax;
        edg->TtimeFmaxTmp = edg->TtimeRmax;
        edg->TtimeFmin = 20e-12;
        edg->TtimeFminOrg = edg->TtimeRmin;
        edg->TtimeFminTmp = edg->TtimeRmin;
        edg->assnFlag = 0;
        edg->assnTran = 55;     /* Unassigned Transistion */
        edg->tmpAssign1 = 55;
        edg->tmpAssign2 = 55;
        edg->tmpAssign2Org = 55;
        edg->tmpAssign3 = 55;
        edg->tmpTranTime = 0;
        edg->tmpTranTime2 = 55;
        edg->switchTime = 55;
        edg->logicProp = 55;
        edg->crEdgConflict = 0;
        edg->timeOutFlag = 55;
        edg->progressEdgIndex = -1;
        edg->tpd = -1;
        edg->bPrimIn = 0;               /* 0: not Primary Input */
        edg->bPrimOut = 0;
        edg->oldVal = -1;         /* value -1 means undefined */
        edg->newVal = -1;         /* value -1 means undefined */
        edg->signal0Prob = 0;
        edg->signal1Prob = 0;
        edg->activity01 = 0;
        edg->activity10 = 0;
        /* variances for process variation */
        edg->rDelMaxVar = 0;
        edg->fDelMaxVar = 0;
        edg->rDelMinVar = 0;
        edg->fDelMinVar = 0;
        edg->lamda = 0;

		// Added by Hitesh
		edg->isDual = false;
		edg->pZero = -1.0;
		edg->pOne = -1.0;
		edg->bSeqOut = false;
		edg->primOutput = false;
		edg->mapped = false;
		edg->seen = false;
		edg->visited = false;
		edg->fanout = 0;

    // Added by Pravin
    edg->cc0 = INT_MAX;
    edg->cc1 = INT_MAX;
    edg->cco = INT_MAX;
    
        array_insert_last(edge*, G->edgArr, edg);
        edg->simResults = array_alloc(int, 1);
        edg->iv_simResults = array_alloc(int, 1);
        edg->simTritResults = array_alloc(int, 1);

        edg->tmax_pattern = array_alloc(char*, 1);

        edg->meroCovered = 0;
        edg->rareEdge = 0;

        
    }
    return edg;
}

int get_first_digit (char* strName)
{
    for (int number=0; number < strlen(strName); number++)
    {
        if(isdigit (strName[number]))
        {
            return atoi(&strName[number]);
        }
    }
    return 0;
}

/* create a vertex of given type - written for generating graph from gate-level verilog mapped to LEDA library */
vertex* createNewVertexForVlog(graph* G, array_t* wordArr, char* cellName, char* nodeName, array_t* globEdges, char* libName)
{
    int i, j, k, iter, temp, bdff = false;
    char* str, *tstr, *word, *lit1, *lit2;
    edge* edg;
    vertex* vert;
	array_t* sortInPorts = array_alloc(int, 1);
	char* tempword1;
	char* tempword2;
	int digit;
	int isVector;

    char* originalName;

    vert = (vertex*)malloc(sizeof(vertex));
    vert->type = (Type*)malloc(sizeof(Type));
    vert->newType = NULL;
    vert->idx = globalVertIdx++;
    vert->bPrimIn = 0;
    vert->bPrimOut = 0;
    vert->isSeq = 0;
    vert->bDummy = 0;
    vert->gatingCtrl = "";
    vert->bDeleted = 0;
    vert->type = findType(cellName, G->typeArr);
    vert->level = 0;
    vert->virtualFlag = 0;
    vert->alpha = 1;
    vert->criticalFlag = 0;
    vert->slackConst = 0;
    vert->sizeFactor = 1;
    vert->activity = 0;
    vert->nInput00 = 0;
    vert->nInput01 = 0;
    vert->nInput10 = 0;
    vert->nInput11 = 0;
    vert->name = strdup(nodeName);
    vert->inEdges = array_alloc(edge*, 1);
	vert->outEdges = array_alloc(edge*, 1);
    vert->inPorts = array_alloc(char*, 1);
	vert->sortInPorts = (int*)calloc(1, sizeof(int));
    vert->outPorts = array_alloc(char*, 1);
    vert->delayArr = array_alloc(int, 1);
    vert->delayLRS = array_alloc(float,1);  /* FIXUP */
	// Added by Hitesh
	vert->fanIn = 0;
	vert->fanOut = 0;
	vert->nIO = 0;
	vert->rank = -1;
	//vert->tracked = false;
	//vert->outTracked = false;
	vert->outMapped = false;
	vert->inMapped = false;
	vert->traversed = false;
	vert->hasReset = 0;
	vert->rstMapped = false;
	//vert->nextStateImpact = 0;
	//vert->flag = false;
	vert->entropy = -1.0;      //uncommented
	vert->sortedInput = 0;
    vert->scanDFF = 0;

    // insert buffer for assign statement
    word = array_fetch(char*, wordArr, 2);
	
	////printf("%s\n", word);
	//for(size_t i=0; i<array_n(wordArr); i++)
		////printf("%s\t", array_fetch(char*, wordArr, i));
	//printf("\n");
    if (strchr(word, '='))		//assign_statement
    {
		  word = array_fetch(char*, wordArr, 1);
		  if(word[0] == '\\')
		  {
			 for(i = 0; i < strlen(word) - 1; i++)
		  		word[i] = word[i+1];
			 word[i] = '\0';
		  }
    originalName = strdup(word);
		if(strstr(word, "["))								// Check if it's a bus
		{	
      //printf("%s\n", word);
			originalName = strdup(word);
      //printf("%s\n", originalName);
			temp = 0;
			for(i = 0; ; i++)
			{
				if(word[i] == '[')
				{
					word[i++] = '_';
					break;
				}
			}
			for(; ; i++)
			{
				word[i] = word[i+temp];
				if(word[i+temp+1] == ']' && i+temp+1 == strlen(word)-1)
				{
					word[i+1] = '\0';
					break;
				}
				else if(word[i+temp+1] == ']')
				{
					word[i+1] = '_';
					temp++;
				}
			}
		}
		edg = createEdge(G, word); // output edge
        edg->origName = originalName;
        edg->fromNode = vert;
        
        array_insert_last(edge*, vert->outEdges, edg);
        if(strlen(libName) == 8 && strstr(libName, "skywater"))
        {
            array_insert_last(char*, vert->outPorts, strdup(".X"));
        }
        else
        {
            array_insert_last(char*, vert->outPorts, strdup(".Q"));
        }
        word = array_fetch(char*, wordArr, 3);
		if(word[0] == '\\')
		{
			for(i = 0; i < strlen(word) - 1; i++)
				word[i] = word[i+1];
			word[i] = '\0';
		}
    originalName = strdup(word);    
		if(strstr(word, "["))								// Check if it's a bus
		{
      originalName = strdup(word);
			temp = 0;
			for(i = 0; ; i++)
			{
				if(word[i] == '[')
				{
					word[i++] = '_';
					break;
				}
			}
			for(; ; i++)
			{
				word[i] = word[i+temp];
				if(word[i+temp+1] == ']' && i+temp+1 == strlen(word)-1)
				{
					word[i+1] = '\0';
					break;
				}
				else if(word[i+temp+1] == ']')
				{
					word[i+1] = '_';
					temp++;
				}
			}			
		}
		edg = createEdge(G, word);  // input edge
		edg->origName = originalName;
      
        array_insert_last(vertex*, edg->toNodes, vert);
        array_insert_last(edge*, vert->inEdges, edg);
        if(strlen(libName) == 8 && strstr(libName, "skywater"))
        {
            array_insert_last(char*, vert->inPorts, strdup(".A"));
        }
        else
        {
            array_insert_last(char*, vert->inPorts, strdup(".DIN"));
        }
        array_insert_last(vertex*, G->combGates, vert);
        array_insert_last(vertex*, G->vertexArr, vert);
        return vert;
    }

	if (strstr(cellName, "df") || strstr(cellName, "lscs") || strstr(cellName, "lclks"))
    {
        bdff = true;
        vert->isSeq = true;
        if(strstr(cellName, "sdf")){       //updated by Pravin on 10/7/19
            vert->scanDFF = 1;
            array_insert_last(vertex*, G->scanDFF, vert);
        }
        else
            array_insert_last(vertex*, G->nonscanDFF, vert);
        array_insert_last(vertex*, G->seqGates, vert);
		array_insert_last(vertex*, G->vertexArr, vert);		// Added by Hitesh
		//vert->isDual = true;								// Added by Hitesh
    }
    else
    {
        array_insert_last(vertex*, G->combGates, vert);
        array_insert_last(vertex*, G->vertexArr, vert);
		//vert->isDual = false;
    }

    // first create the output edges
    for(i = 2; i < array_n(wordArr); i += 2)
    {
        tstr = array_fetch(char*, wordArr, i);
        if (strstr(tstr, ".Q") || strstr(tstr, ".QN") || strstr (tstr, ".OUT") || strstr(tstr, ".Out") || strstr(tstr, ".out") || strstr(tstr, ".X") || strstr(tstr, ".Y") || strstr(tstr, ".SUM") || strstr(tstr, ".COUT") || strstr(tstr, ".Q_N"))
        {
            word = array_fetch(char*, wordArr, i+1);
			if(word[0] == '\\')
			{
				for(j = 0; j < strlen(word) - 1; j++)
					word[j] = word[j+1];
				word[j] = '\0';
			}
			// in the following lines of code, "word" has been modified to convert vectors into scalars (modified by Hitesh)
			j = k = 0;
      originalName = strdup(word);
			if(strstr(word, "["))
			{
                originalName = strdup(word);        
				//tempword1 = (char*)malloc(sizeof(char)*400);
				for(j = 0; j < strlen(word); j++)
				{
					if(word[j] == '[')
						word[k++] = '_';
						//continue;
					else if(word[j] == ']' && j == strlen(word)-1)
						word[k++] /*tempword1[k++]*/ = '\0';
					else if(word[j] == ']')
						word[k++] /*tempword1[k++]*/ = '_';
					else
						word[k++] /*tempword1[k++]*/ = word[j];
				}
				//word = tempword1;
			}

            edg = createEdge(G, word);
		        edg->origName = originalName;
            //if (!bdff)  // for flip-flop do not connect the edge		// removed by Hitesh
                edg->fromNode = vert;
			// Added by Hitesh
			if(!strcmp(tstr, ".Q") || strstr(tstr, ".Y") || strstr(tstr, ".X"))
				edg->primOutput = true;
			//edg->valid = true;
            if (bdff)
                edg->bSeqOut = true;
			////printf("%s\n", edg->name);
            array_insert_last(edge*, vert->outEdges, edg);
            array_insert_last(char*, vert->outPorts, strdup(tstr));
        }

    }
	
    // now create the input edges
    for(i = 2; i < array_n(wordArr); i += 2)
    {
        tstr = array_fetch(char*, wordArr, i);
		//strstr(tstr, ".SDIN"), strstr(tstr, ".SSEL") ... added by Pravin
        if (strstr(tstr, ".DIN") || strstr(tstr, ".D") || strstr (tstr, ".IN") || strstr(tstr, ".CLK")
		   || strstr(tstr, ".SIN") || strstr(tstr, ".CIN") || strstr(tstr, ".din") || strstr(tstr, ".SDIN") 
		   || strstr(tstr, ".SSEL") || strstr(tstr, ".CLRB") 
		   || strstr(tstr, "clk") || strstr(tstr, ".in") || strstr(tstr, ".AIN")
           || strstr(tstr, ".CLR") || strstr(tstr, ".SET") || strstr(tstr, ".EB") || strstr(tstr, ".BIN")
           || strstr(tstr, ".A") || strstr(tstr, ".B") || strstr(tstr, ".RESET_B") || strstr(tstr, ".SET_B")
           || strstr(tstr, ".DE") || (strlen(tstr)<=4 && strstr(tstr, ".C")) || (strlen(tstr)<=3 && strstr(tstr, ".S")) )
        {
            word = array_fetch(char*, wordArr, i+1);
            if (word[0] == '!')
                word += 1;
			if(word[0] == '\\')
			{
				for(j = 0; j < strlen(word) - 1; j++)
					word[j] = word[j+1];
				word[j] = '\0';
			}
            /*if (!strcmp(word, "0") || !strcmp(word, "1'b0"))	// edited by Hitesh - added "1'b0"
                word = "GND";
            else if (!strcmp(word, "1") || !strcmp(word, "1'b1"))	// edited by Hitesh - added "1'b1"
                word = "VDD";*/
			// in the following lines of code, "word" has been modified to convert vectors into scalars (modified by Hitesh)
			j = k = 0;
      originalName = strdup(word);
			if(strstr(word, "["))
			{
				originalName = strdup(word);        
				//tempword2 = (char*)malloc(sizeof(char)*400);
				for(j = 0; j < strlen(word); j++)
				{
					if(word[j] == '[')
						word[k++] = '_';
						//continue;
					else if(word[j] == ']' && j == strlen(word)-1)
						word[k++] /*tempword2[k++]*/ = '\0';
					else if(word[j] == ']')
						word[k++] /*tempword2[k++]*/ = '_';
					else
						word[k++] /*tempword2[k++]*/ = word[j];
				}
				//word = tempword2;
			}
            edg = createEdge(G, word);
		        edg->origName = originalName;
            if (bdff && !strstr(tstr, ".CLK") && !strstr(tstr, ".clk")
                     && !strstr(tstr, ".CLR") && !strstr(tstr, ".SET") && !strstr(tstr, ".EB"))
                edg->bSeqIn = true;
            //if (!bdff)  // for flip-flop do not connect the edge
                array_insert_last(vertex*, edg->toNodes, vert);
			//if(strcmp("U359",nodeName) == 0)
				//printf("---%s \t", vert->name);
            array_insert_last(edge*, vert->inEdges, edg);
            array_insert_last(char*, vert->inPorts, strdup(tstr));
        }
    }
	//printf("\n");
	    
	//printf("inPorts\n");	
	for(i = 0; i < array_n(vert->inPorts); i++)
	{
		word = array_fetch(char*, vert->inPorts, i);
		digit = get_first_digit(word);
		//printf("%d\n", digit);
		if(digit != 0 ){
			if(i==0)
				vert->sortInPorts = (int*)calloc(array_n(vert->inPorts), sizeof(int));
			//printf("sort this\n");
			vert->sortedInput = 1;
			vert->sortInPorts[digit-1] = i;
		}	
		else{			
			//printf("dont sort\n");
		}
			
		if(strstr(word, ".CLR") || strstr(word, ".RESET"))
			vert->hasReset = 1;
		else if(strstr(word, ".SET"))
			vert->hasReset = 2;
	}
    //sort inports and inedges by inport name.
    array_t* tempPorts = array_alloc(char*, 1);
    tempPorts = array_dup(vert->inPorts); //temp arrays
    array_t* tempEdges = array_alloc(edge*, 1);
    tempEdges = array_dup(vert->inEdges); //temp arrays
    //bubble sort... efficient given small N

    // printf("Before: %s - %s - %s\n", vert->name, vert->type->name, vert->logicFunc);
    // printf("InEdges\n");
    // for(int j=0; j<array_n(vert->inEdges); j++)
    // {
    //     edge *inEdge = array_fetch(edge*, vert->inEdges, j);
    //     char *portName = array_fetch(char*, vert->inPorts, j);
    //     printf("%s: %s %s Mismatch: simulated(%d), MERO(%d)\n", vert->name, inEdge->origName, portName, inEdge->simulated, inEdge->atLogic);                    
    // }   

    // for(i=0;i<array_n(vert->inPorts)-1;i++)
    // {
    //     word = array_fetch(char*,vert->inPorts, i);
    //     iter = i;
    //     for(int j=i+1;j<array_n(vert->inPorts);j++)
    //     {
    //         tempword1 = array_fetch(char*,vert->inPorts, j);
            
    //         if(strcmp(tempword1,word)<0)
    //         {
    //             array_insert(char*,vert->inPorts, iter, tempword1); 
    //             array_insert(char*,vert->inPorts, j, word); 
    //             iter = j;
    //         }
    //     }
        
    // }

    int vertLen = array_n(vert->inPorts);
    for(i=0;i<vertLen-1;i++)
    {
        // word = array_fetch(char*,vert->inPorts, i);
        // iter = i;
        for(int j=0;j<vertLen-i-1;j++)
        {
            word = array_fetch(char*,vert->inPorts, j);
            tempword1 = array_fetch(char*,vert->inPorts, j+1);
            
            if(strcmp(tempword1,word)<0)
            {
                array_insert(char*,vert->inPorts, j, tempword1); 
                array_insert(char*,vert->inPorts, j+1, word); 
                // iter = j;
            }
        }
        
    }
    
    //map edge positions to sorted ports
    for(i=0;i<array_n(vert->inPorts);i++)
    {
        word = array_fetch(char*,vert->inPorts, i);
        for(j=0;j<array_n(tempPorts);j++)
        {
            tempword1 = array_fetch(char*, tempPorts,j);
            if((strlen(word) == strlen(tempword1)) && strstr(word, tempword1))
            {
                break;
            }
        }
        edg = array_fetch(edge*, tempEdges, j);
        array_insert(edge*,vert->inEdges, i, edg); 
    }

    // printf("After: %s - %s - %s\n", vert->name, vert->type->name, vert->logicFunc);
    // printf("InEdges\n");
    // for(int j=0; j<array_n(vert->inEdges); j++)
    // {
    //     edge *inEdge = array_fetch(edge*, vert->inEdges, j);
    //     char *portName = array_fetch(char*, vert->inPorts, j);
    //     printf("%s: %s %s Mismatch: simulated(%d), MERO(%d)\n", vert->name, inEdge->origName, portName, inEdge->simulated, inEdge->atLogic);                    
    // }

    return vert;
}


int getEdgeInfo(array_t* arr, int idx)
{
    char* type = array_fetch_last(char*, arr);

    if (!strncmp(type, "dff", 3))
    {
        if(idx > 1)
            return IN;
        else
            return OUT;
    }
    else
    {
        if(idx > 0)
            return IN;
        else
            return OUT;
    }


}

vertex* findVertex(char* vertName, array_t* lvlvrtArr)
{
    int i;
    vertex* vert;

    for(i = 0; i < array_n(lvlvrtArr); i++)
    {
        vert = array_fetch(vertex*, lvlvrtArr, i);
        if(strcmp(vert->name, vertName) == 0)
            return vert;
    }
    return NULL;
}

vertex* findVertex_len(char* vertName, int len, array_t* lvlvrtArr)
{
    int i;
    vertex* vert;

    for(i = 0; i < array_n(lvlvrtArr); i++)
    {
        vert = array_fetch(vertex*, lvlvrtArr, i);
        if(strcmp(vert->name, vertName) == 0 && len == strlen(vert->name))
            return vert;
    }
    return NULL;
}

void findFlopsToReset(graph* G, char* fname)
{
	/*for(i = 0; i < array_n(stateFFs->trueStateFlopArr); i++)
	{
		vert = array_fetch(vertex*, stateFFs->trueStateFlopArr, i);
		stateFFs->trackedFlops = array_alloc(vertex*, 1);
		stateFFs->tempEdgArr = array_alloc(edge*, 1);
		identifyCycle(stateFFs, vert, vert);
		for(j = 0; j < array_n(stateFFs->tempEdgArr); j++)
		{
			edg = array_fetch(edge*, stateFFs->tempEdgArr, j);
			edg->seen = false;
		}
		array_free(stateFFs->tempEdgArr);
		array_free(stateFFs->trackedFlops);
	}*/

	int i, j;
	edge* edg;
	vertex* vert, *vert2;
	FILE* fptr;
	char* fRstFlops = (char*)malloc(sizeof(char)*100);
	for(i = 0; i < strlen(fname) - 14 ; i++)
		fRstFlops[i] = fname[i];
	fRstFlops[i] = '\0';
	strcat(fRstFlops, "rstFlops.txt");
	stateFlops* stateFFs;
	stateFFs = (stateFlops*)malloc(sizeof(stateFlops));
	G->rstableFlopArr = array_alloc(vertex*, 1);

	stateFFs->trackedFlops = array_alloc(vertex*, 1);
	for(i = 0; i < array_n(G->seqGates); i++)			// this loop adds all the flip flops that drive flip flops with feedback
	{
		vert = array_fetch(vertex*, G->seqGates, i);
		if(findVertex(vert->name, G->stateFlopArr) || findVertex(vert->name, stateFFs->trackedFlops))
			continue;
		//if(!vert->hasReset)
			//continue;
		stateFFs->tempVertArr = array_alloc(vertex*, 1);
		array_insert_last(vertex*, stateFFs->tempVertArr, vert);
		stateFFs->tempEdgArr = array_alloc(edge*, 1);
		if(isDrivingStateFF(G, stateFFs, vert))
		{
			for(j = 0; j < array_n(stateFFs->tempVertArr); j++)
			{
				vert2 = array_fetch(vertex*, stateFFs->tempVertArr, j);
				if(!findVertex(vert2->name, stateFFs->trackedFlops))
					array_insert_last(vertex*, stateFFs->trackedFlops, vert2);
			}
		}

		for(j = 0; j < array_n(stateFFs->tempEdgArr); j++)
		{
			edg = array_fetch(edge*, stateFFs->tempEdgArr, j);
			edg->seen = false;
		}

		array_free(stateFFs->tempEdgArr);
		array_free(stateFFs->tempVertArr);
	}

	stateFFs->flopsDrivingStateFlops = array_alloc(vertex*, 1);
	for(i = 0; i < array_n(stateFFs->trackedFlops); i++)
	{
		vert = array_fetch(vertex*, stateFFs->trackedFlops, i);
		//array_insert_last(vertex*, stateFFs->stateFlopArr, vert);
		array_insert_last(vertex*, stateFFs->flopsDrivingStateFlops, vert);
	}
	array_free(stateFFs->trackedFlops);

	/*int numStateFlops = G->stateFlopArr->num + stateFFs->flopsDrivingStateFlops->num;
	if(!numStateFlops)
	{
		numStateFlops = (int)(0.1 * array_n(G->seqGates));
		for(i = 0; i < numStateFlops; i++)
		{
			vert = array_fetch(vertex*, G->seqGates, i);
			array_insert_last(vertex*, G->stateFlopArr, vert);
		}
	}*/

	fptr = fopen(fRstFlops, "w");
	for(i = 0; i < array_n(stateFFs->flopsDrivingStateFlops); i++)
	{
		vert = array_fetch(vertex*, stateFFs->flopsDrivingStateFlops, i);
		array_insert_last(vertex*, G->rstableFlopArr, vert);
		fprintf(fptr, "%s\n", vert->name);
	}
	fclose(fptr);
	if(!array_n(G->rstableFlopArr))
		G->rstableFlops_mapped = true;

	//printf("True state flip-flops: %d\n", stateFFs->trueStateFlopArr->num);
	//printf("Partial state flip-flops: %d\n", stateFFs->partStateFlopArr->num);
	//printf("State flip-flops: %d\n", stateFFs->stateFlopArr->num);
	printf("Flip-flops driving state flip-flops: %d\n", stateFFs->flopsDrivingStateFlops->num);
	//printf("Total flip-flops identified: %d\n", stateFFs->stateFlopArr->num);

	array_free(stateFFs->flopsDrivingStateFlops);
	FREE(stateFFs);
	FREE(fRstFlops);
}

// Added by Hitesh
int isDrivingStateFF(graph* G, stateFlops* stateFFs, vertex* vert)
{
	vertex* toNode;
	edge* edg;
	int i, j, index;
	char* port;

	for(i = 0; i < array_n(vert->outEdges); i++)
	{
		edg = array_fetch(edge*, vert->outEdges, i);
		if(edg->seen)
			continue;//return false;
		edg->seen = true;
		array_insert_last(edge*, stateFFs->tempEdgArr, edg);
		for(j = 0; j < array_n(edg->toNodes); j++)
		{
			toNode = array_fetch(vertex*, edg->toNodes, j);
			index = getEdgeIndex(edg->name, toNode->inEdges);
			port = array_fetch(char*, toNode->inPorts, index);
			if(strstr(port, ".EB") || strstr(port, ".SIN"))
				continue;
			if(toNode->isSeq && findVertex(toNode->name, G->stateFlopArr))
				return true;
			else if(toNode->isSeq)
				array_insert_last(vertex*, stateFFs->tempVertArr, toNode);

			if(isDrivingStateFF(G, stateFFs, toNode))
				return true;
			else if(toNode->isSeq)
				array_remove_last(stateFFs->tempVertArr);
		}
	}

	return false;
}


void getStateFlops(graph* G, char* fname)
{
	vertex* vert;
	int i, flag = false;
	FILE* fptr;
	char* pstr = (char*)calloc(400, sizeof(char));
	G->stateFlopArr = array_alloc(vertex*, 1);
	//G->flopDrivingStateFlops = array_alloc(vertex*, 1);

	fptr = fopen(fname, "r");
	if(!fptr)
	{
		printf("The state elements file is not present. Exiting ...\n");
		exit(0);
	}

	while(!feof(fptr))
	{
		fscanf(fptr, "%[^\n]\n", pstr);
		vert = findVertex(pstr, G->seqGates);
		if(!vert)
		{
			if(!strlen(pstr))
			{
				flag = true;
				break;
			}
			printf("State flip flop %s not present in the original netlist\n", pstr);
			fail("Can not proceed!");
		}
		array_insert_last(vertex*, G->stateFlopArr, vert);
	}
	if(flag)
	{
		for(i = 0; i < 0.1*array_n(G->seqGates); i++)
		{
			vert = array_fetch(vertex*, G->seqGates, i);
			array_insert_last(vertex*, G->stateFlopArr, vert);
		}
	}
	fclose(fptr);
	findFlopsToReset(G, fname);
}


array_t* string_strip(char *inputString, char *delimiter){
    //delimiter " ,.-"
    array_t* stringArray = array_alloc(char*, 1);
    char *ipString = strdup(inputString);
    char *delim = strdup(delimiter);
    char *word;
    
    word = strtok (ipString,delim);
    while (word != NULL)
    {
        array_insert_last(char*, stringArray, strdup(word));
        word = strtok (NULL, delim);        
    }
    free(ipString);
    free(delim);
    //for(int i=0;i<array_n(stringArray); i++)
        //printf("--%s\n", array_fetch(char*, stringArray, i));
    return stringArray;
}


void convertGraphTocombVerilog(graph* G, FILE* fptr, char* top_module)
{
    int i, j, k, bFirst, sameEdgeFlag;
    char* str, *tstr, *word, *prevGating = NULL;
    vertex* vert;
    edge* edg, *tempE1, *tempE2;
    array_t* vertices = array_dup(G->vertexArr);
    array_t* poutEdges = array_alloc(edge*, 1);
    array_t* pinEdges = array_alloc(edge*, 1);
    array_t* poutPseudoEdges = array_alloc(edge*, 1);

    for (i = 0; i < array_n(G->primInEdges); i++)
    {
        edg = array_fetch(edge*, G->primInEdges, i);
        if (edg->bSeqOut) continue;
        array_insert_last(edge*, pinEdges, edg);
    }
    
    for(size_t i = 0; i < array_n(G->seqGates); i ++)
    {
        vert = array_fetch(vertex*, G->seqGates, i);
        printf("%s\n", vert->name);
        for(size_t j = 0; j < array_n(vert->outEdges); j ++)
        {
            edg = array_fetch(edge*, vert->outEdges, j);
            if(array_n(edg->toNodes)!=0)
            {
                array_insert_last(edge*, pinEdges, edg);
                printf("pseudo PI: %s\n", edg->name);
            }
                
            
        }
    }

    for (i = 0; i < array_n(G->primOutEdges); i++)
    {
        edg = array_fetch(edge*, G->primOutEdges, i);
        if (edg->bSeqIn) continue;
        array_insert_last(edge*, poutEdges, edg);
    }

    for(size_t i = 0; i < array_n(G->seqGates); i ++)
    {
        vert = array_fetch(vertex*, G->seqGates, i);
        for(size_t j = 0; j < array_n(vert->inEdges); j ++)
        {
            edg = array_fetch(edge*, vert->inEdges, j);
            if(edg->fromNode == NULL)
                continue;
            sameEdgeFlag = 0;   
            for(int k=0; k<array_n(poutPseudoEdges); k++)
            {
                tempE1 = array_fetch(edge*, poutPseudoEdges, k);
                if(edg->idx == tempE1->idx)
                    sameEdgeFlag = 1;                    
            }
            if(sameEdgeFlag == 0)
                array_insert_last(edge*, poutPseudoEdges, edg);                
        }
    }
    for(int k=0; k<array_n(poutPseudoEdges); k++)
    {
        edg = array_fetch(edge*, poutPseudoEdges, k);
        array_insert_last(edge*, poutEdges, edg);
        printf("pseudo PO: %s\n", edg->name);
    }


    //array_append(vertices, G->seqGates);

    fprintf(fptr, "module %s (", top_module);
    bFirst = true;
    for (i = 0; i < array_n(pinEdges); i++)
    {
        edg = array_fetch(edge*, pinEdges, i);
        str = edg->name; // for verilog compatibility
        str = strncmp(str, "dummy_", 6) ? str : str + 6;
        //if (!strcmp("VDD", str) || !strcmp("GND", str))
            //continue;
        if (bFirst)
        {
            fprintf(fptr, "%s",  str);
            bFirst = false;
        }
        else
            fprintf(fptr, ", %s",  str);
    }

	if (array_n(poutEdges))
	{
        edg = array_fetch(edge*, poutEdges, 0);
        if (array_n(pinEdges))
            fprintf(fptr, ", %s", edg->name);
        else
            fprintf(fptr, "%s", edg->name);
	}
    for (i = 1; i < array_n(poutEdges); i++)
    {
        edg = array_fetch(edge*, poutEdges, i);
        fprintf(fptr, ", %s", edg->name);
    }
    fprintf(fptr, ");\n");
    if (array_n(pinEdges))
        fprintf(fptr, "\ninput ");
    bFirst = true;
    for (i = 0; i < array_n(pinEdges); i++)
    {
        edg = array_fetch(edge*, pinEdges, i);
        str = edg->name; // for verilog compatibility
        str = strncmp(str, "dummy_", 6) ? str : str + 6;
        //if (!strcmp("VDD", str) || !strcmp("GND", str))
            //continue;
        if (bFirst)
        {
            fprintf(fptr, "%s", str);
            bFirst = false;
        }
        else
            fprintf(fptr, ", %s", str);
    }
    if (array_n(pinEdges))
        fprintf(fptr, ";\n");
    if (array_n(poutEdges))
        fprintf(fptr, "\noutput ");
    for (i = 0; i < array_n(poutEdges); i++)
    {
        edg = array_fetch(edge*, poutEdges, i);
        str = edg->name; // for verilog compatibility
        if (i < array_n(poutEdges) - 1)
            fprintf(fptr, "%s, ", str);
        else
            fprintf(fptr, "%s;\n", str);
    }
    //printf("Vert:%d\n",array_n(vertices));
    for (i = 0; i < array_n(vertices); i++)
    {
        vert = array_fetch(vertex*, vertices, i);

        //swaroop
        if(vert->bDummy || vert->bDeleted)
            continue;

        if (prevGating != vert->gatingCtrl)
        {
            prevGating = vert->gatingCtrl;
            fprintf(fptr, "\n");
        }

        if (strncmp(vert->type->name, "i1", 2))
            fprintf(fptr, "%s ", vert->type->name);
        else
            fprintf(fptr, "hi1s1 ");

        fprintf(fptr, "%s (", vert->name);
	
	if( array_n(vert->outEdges) != array_n(vert->outPorts) ){
		
		printf("OUT:%s\n", vert->name);
		printf("%d %d\n", array_n(vert->outEdges), array_n(vert->outPorts) );
	}
	else{
	for (j = 0; j < array_n(vert->outEdges); j++)
        {
            edg = array_fetch(edge*, vert->outEdges, j);
            fprintf(fptr, "%s(%s), ", array_fetch(char*, vert->outPorts, j), edg->name);
        }
	}
	if( array_n(vert->inEdges) != array_n(vert->inPorts) ){
		
		printf("IN:%s\n", vert->name);printf("%d %d\n", array_n(vert->inEdges), array_n(vert->inPorts)); 
	}
	else{
	for (j = 0; j < array_n(vert->inEdges)-1; j++)
        {
            edg = array_fetch(edge*, vert->inEdges, j);
            fprintf(fptr, "%s(%s), ", array_fetch(char*, vert->inPorts, j), edg->name);
        }
	}
        edg = array_fetch_last(edge*, vert->inEdges);
        fprintf(fptr, "%s(%s)", array_fetch_last(char*, vert->inPorts), edg->name);
        fprintf(fptr, " );\n");
    }
    fprintf(fptr, "\nendmodule\n\n");
    array_free(vertices);
    array_free(poutEdges);
    array_free(pinEdges);
}


void convertGraphToVerilog(graph* G, FILE* fptr, char* top_module)
{
    int i, j, k, bFirst;
    char* str, *tstr, *word, *prevGating = NULL;
    vertex* vert;
    edge* edg;
    array_t* vertices = array_dup(G->vertexArr);
    array_t* poutEdges = array_alloc(edge*, 1);
    array_t* pinEdges = array_alloc(edge*, 1);

    for (i = 0; i < array_n(G->primInEdges); i++)
    {
        edg = array_fetch(edge*, G->primInEdges, i);
        if (edg->bSeqOut) continue;
        array_insert_last(edge*, pinEdges, edg);
    }

    for (i = 0; i < array_n(G->primOutEdges); i++)
    {
        edg = array_fetch(edge*, G->primOutEdges, i);
        if (edg->bSeqIn) continue;
        array_insert_last(edge*, poutEdges, edg);
    }

    //array_append(vertices, G->seqGates);

    fprintf(fptr, "module %s (", top_module);
    bFirst = true;
    for (i = 0; i < array_n(pinEdges); i++)
    {
        edg = array_fetch(edge*, pinEdges, i);
        str = edg->name; // for verilog compatibility
        str = strncmp(str, "dummy_", 6) ? str : str + 6;
        //if (!strcmp("VDD", str) || !strcmp("GND", str))
            //continue;
        if (bFirst)
        {
            fprintf(fptr, "%s",  str);
            bFirst = false;
        }
        else
            fprintf(fptr, ", %s",  str);
    }

	if (array_n(poutEdges))
	{
	     edg = array_fetch(edge*, poutEdges, 0);
		 if (array_n(pinEdges))
             fprintf(fptr, ", %s", edg->name);
         else
             fprintf(fptr, "%s", edg->name);
	}
    for (i = 1; i < array_n(poutEdges); i++)
    {
        edg = array_fetch(edge*, poutEdges, i);
        fprintf(fptr, ", %s", edg->name);
    }
    fprintf(fptr, ");\n");
    if (array_n(pinEdges))
        fprintf(fptr, "\ninput ");
    bFirst = true;
    for (i = 0; i < array_n(pinEdges); i++)
    {
        edg = array_fetch(edge*, pinEdges, i);
        str = edg->name; // for verilog compatibility
        str = strncmp(str, "dummy_", 6) ? str : str + 6;
        //if (!strcmp("VDD", str) || !strcmp("GND", str))
            //continue;
        if (bFirst)
        {
            fprintf(fptr, "%s", str);
            bFirst = false;
        }
        else
            fprintf(fptr, ", %s", str);
    }
    if (array_n(pinEdges))
        fprintf(fptr, ";\n");
    if (array_n(poutEdges))
        fprintf(fptr, "\noutput ");
    for (i = 0; i < array_n(poutEdges); i++)
    {
        edg = array_fetch(edge*, poutEdges, i);
        str = edg->name; // for verilog compatibility
        if (i < array_n(poutEdges) - 1)
            fprintf(fptr, "%s, ", str);
        else
            fprintf(fptr, "%s;\n", str);
    }
    //printf("Vert:%d\n",array_n(vertices));
    for (i = 0; i < array_n(vertices); i++)
    {
        vert = array_fetch(vertex*, vertices, i);

        //swaroop
        if(vert->bDummy || vert->bDeleted)
            continue;

        if (prevGating != vert->gatingCtrl)
        {
            prevGating = vert->gatingCtrl;
            fprintf(fptr, "\n");
        }

        if (strncmp(vert->type->name, "i1", 2))
            fprintf(fptr, "%s ", vert->type->name);
        else
            fprintf(fptr, "hi1s1 ");

        fprintf(fptr, "%s (", vert->name);
	
	if( array_n(vert->outEdges) != array_n(vert->outPorts) ){
		
		printf("OUT:%s\n", vert->name);
		printf("%d %d\n", array_n(vert->outEdges), array_n(vert->outPorts) );
	}
	else{
	for (j = 0; j < array_n(vert->outEdges); j++)
        {
            edg = array_fetch(edge*, vert->outEdges, j);
            fprintf(fptr, "%s(%s), ", array_fetch(char*, vert->outPorts, j), edg->name);
        }
	}
	if( array_n(vert->inEdges) != array_n(vert->inPorts) ){
		
		printf("IN:%s\n", vert->name);printf("%d %d\n", array_n(vert->inEdges), array_n(vert->inPorts)); 
	}
	else{
	for (j = 0; j < array_n(vert->inEdges)-1; j++)
        {
            edg = array_fetch(edge*, vert->inEdges, j);
            fprintf(fptr, "%s(%s), ", array_fetch(char*, vert->inPorts, j), edg->name);
        }
	}
        edg = array_fetch_last(edge*, vert->inEdges);
        fprintf(fptr, "%s(%s)", array_fetch_last(char*, vert->inPorts), edg->name);
        fprintf(fptr, " );\n");
    }
    fprintf(fptr, "\nendmodule\n\n");
    array_free(vertices);
    array_free(poutEdges);
    array_free(pinEdges);
}

array_t* getTopoOrder(graph* G, int scanFlag)
{
    int i, j, k, l, time = 0, topoCnt = 0, flag; 
    vertex* v, *u, *s, *flagv; 
    array_t *orgvList = G->vertexArr;
    array_t *toVtxArr;
    int nNodes = array_n(orgvList);
    
    int* d, *flagArr, *visited; 
    int inpCnt = 0;
    array_t* sorted = array_alloc(vertex*, 1);
    array_t* unsorted = array_alloc(vertex*, 1);
    edge* edg; 
    vertex* sVtx, *vtx;
    vertex* toVtx;
    vertex* outVtx;
    array_t* outEdges, *vList, *dffList, *dffNonScan, *dffScan;

    vList = G->combGates;
    
    dffList = G->seqGates;
    
    dffNonScan = G->nonscanDFF;

    dffScan = G->scanDFF;
    if(scanFlag == 0)
    {
        vList = array_join(vList, dffNonScan);
    }
    nNodes = array_n(vList);
    d = (int*)malloc(sizeof(int)*nNodes);
    flagArr = (int*)malloc(sizeof(int)*nNodes);
    visited = (int*)malloc(sizeof(int)*nNodes);
   /* assign unique id to all vertices */
   for(i = 0; i < nNodes; i ++)
   {
       visited[i] = FALSE;
       outVtx = array_fetch(vertex*, vList, i);
       outVtx->idx = i;
   }
   for(i = 0; i < array_n(dffScan); i ++)
   {
       outVtx = array_fetch(vertex*, dffScan, i);
       outVtx->idx = i + array_n(vList);
   }
   
   /* topological sort of the vertices */
   for(i = 0; i < nNodes; i ++)
   {
       outVtx = array_fetch(vertex*, vList, i);
       inpCnt = 0;
       for(j = 0; j < array_n(outVtx->inEdges); j ++)
       {     
           edg = array_fetch(edge*, outVtx->inEdges, j);
           if( 
               !(!strncmp(edg->name,"1'b0",4) || !strncmp(edg->name,"GND",4)) &&
               !(!strncmp(edg->name,"1'b1",4) || !strncmp(edg->name,"VDD",4)) &&
               !edg->bPrimIn &&                                                 //if primary do not increase count
               !((scanFlag == 1 && edg->fromNode!=NULL && strstr(edg->fromNode->type->name, "df")) || (scanFlag == 1 && edg->fromNode!=NULL && strstr(edg->fromNode->type->name, "sdf"))))    //if sdff do not increase count)
              {
                 
                        inpCnt++;
              }
       }
       d[outVtx->idx] = inpCnt;
       //printf("%s\t%d\n", outVtx->name, inpCnt);
       array_insert(vertex*, unsorted, outVtx->idx, outVtx);
   }

    int topolevel = 0;
    int sortedCount = 0;
   for(i = 0; i < nNodes; i ++)
   {       
     for(j=0;j< nNodes;j++) 
        flagArr[j] = false;

     for(j = 0; j < nNodes; j ++)
       {   
           if(d[j] == 0 && visited[j] == FALSE)
           {
               visited[j] = TRUE;
               sVtx = array_fetch(vertex*, unsorted, j);
               flagArr[j] = true;
           }
       }

       for(l=0;l<nNodes;l++)
       {  
         if(!flagArr[l]) 
                continue; //skip if false
         sVtx = array_fetch(vertex*, unsorted, l); //grab vertex
         //printf("%s\n", sVtx->name);
         array_insert_last(vertex*, sorted, sVtx);
         sVtx->topoIdx = ++topoCnt; 
         sVtx->lvlIdx = topolevel;
         sortedCount++;
         outEdges = sVtx->outEdges;

         for(j = 0; j < array_n(outEdges); j ++)
         {
           edg = array_fetch(edge*, outEdges, j);
           toVtxArr = edg->toNodes;
           for(k = 0; k < array_n(toVtxArr); k++)
           {
               toVtx = array_fetch(vertex*, toVtxArr, k);
                if ((scanFlag == 1 && strstr(toVtx->type->name, "df")) || (scanFlag == 0 && strstr(toVtx->type->name, "sdf")) ) 
                    continue;
                //else if (strstr(toVtx->type->name, "dff") ) 
                    //d[toVtx->idx] = 0;
                else
                    d[toVtx->idx] --;
           }
         }
       }
       topolevel++;
       if(sortedCount == array_n(G->combGates))
       {
            // printf("INFO: Sorting over at %d level with %d sorted out of total %d vertices.\n", topolevel, sortedCount, array_n(G->vertexArr));
            break;           
       }

   }
    
    flagv = NULL;
    for(i = 0; i < array_n(vList); i ++)
    {
       s = array_fetch(vertex*, vList, i);
       if(d[s->idx])
       {
           flagv = s;
           printf("\nERROR: Violation of topological order for vertex %s. Number of untraversed input edges: %d\n", flagv->name, d[flagv->idx]);
           //isCombLoop = true;
       }
   }
   //if (flagv)
       //printf("\nERROR: Violation of topological order for vertex %s. Number of untraversed input edges: %d\n", flagv->name, d[flagv->idx]);

   free(d);
   free(visited);
   free(flagArr);
   array_free(unsorted);


   G->topoLevels = topolevel;
   return sorted;
}


//to parse a number from string
int find_first_digit (char* strName)
{
    for (int number=0; number < strlen(strName); number++)
    {
        if(isdigit (strName[number]))
        {
            return atoi(&strName[number]);
        }
    }
    return 0;
}

void dump_design_details(graph* G, char *location)
{
    char *opFileName = (char*)malloc(sizeof(char)*10000);
    strcpy(opFileName, location);
    strcat(opFileName, "/design_details.txt");
    
    FILE *fileHandle = fopen(opFileName, "w");

    fprintf(fileHandle, "==================================\n");
    fprintf(fileHandle, "Total pi: \t%d\n", array_n(G->primInEdges));
    fprintf(fileHandle, "Total po: \t%d\n", array_n(G->primOutEdges));
    fprintf(fileHandle, "Total nets: \t%d\n", array_n(G->edgArr));
    fprintf(fileHandle, "Total cells: \t%d\n", array_n(G->vertexArr));
    fprintf(fileHandle, "Total seq cells: \t%d\n", array_n(G->seqGates));
    fprintf(fileHandle, "==================================\n");
    
    fclose(fileHandle);
}

edge* findDataEdge(vertex* vert)
{
    int j;
    edge* edg;
    char* port;

    for (j = 0; j < array_n(vert->inEdges); j++)
    {
        edg = array_fetch(edge*, vert->inEdges, j);
        port = array_fetch(char*, vert->inPorts, j);
        if (strstr(port, ".DIN") || strstr(port, ".D"))
            return edg;
    }
    return NULL;
}

graph* createGraphFromStructure(char* inputFileName, char* moduleName, char* libName)
{
    printf("Creating graph from structure: %s\n", inputFileName);
   int dCnt = 0, i, j, k, nFanout, icnt = 0, inidx = 5, ocnt = 0;;
   int gCnt = 0, nInVar = 0, nOutVar = 0, bAssnFlag = 0, assigncnt = 0;
   char *word, *header, *invout;
   char* Qnet, *outputVar, *gatetype, *gatename, *invname;
   int uniqueInvs = 0, uniqueNors = 0, uniqueNands = 0;
   int* marked = NULL;
   graph* G = (graph*)malloc(sizeof(graph));
   array_t* wordArr, *inVarArr, *outVarArr, *globEdges, *newPrimOutEdges;
   edge* edg, *outedg;
   char* pstr = (char*)malloc(sizeof(char)*50000000);
   char* pstr1 = (char*)malloc(sizeof(char)*50000000);
   FILE* fptr = fopen(inputFileName, "r");
   //FILE* libFile = fopen(libFileName, "r");
   FILE* libFile = NULL;
   Type* Gate;
   trans* Trans;
   net* Net;
   vertex* v;
   char* varName;// = malloc(sizeof(char)*400);		// Added by Hitesh
   char* temp;// = malloc(sizeof(char)*200);			// Added by Hitesh
   int bus_width;		// Added by Hitesh
   

   if (!fptr)
   {
       printf("Input file %s not present. Exiting ...\n", inputFileName);
       exit(0);
   }

   inVarArr = array_alloc(char*, 1);
   outVarArr = array_alloc(char*, 1);
   header = (char*)malloc(sizeof(char)*10000);
   gatename = (char*)malloc(sizeof(char)*400);
   gatetype = (char*)malloc(sizeof(char)*400);


   /* initialize the graph */
   G->vertexArr = array_alloc(vertex*, 1);
   G->typeArr = array_alloc(Type*, 1);
   G->edgArr = array_alloc(edge*, 1);
   G->primInEdges = array_alloc(edge*, 1);
   G->primOutEdges = array_alloc(edge*, 1);
   G->seqGates = array_alloc(vertex*, 1);
   G->nonscanDFF = array_alloc(vertex*, 1);        //added by Pravin on 10/7/19
   G->scanDFF = array_alloc(vertex*, 1);        //added by Pravin on 10/7/19
   G->combGates = array_alloc(vertex*, 1);
   G->header = strdup(moduleName);
   
   G->all_tmax_pi_patterns = array_alloc(char*, 1);
   G->all_tmax_ff_patterns = array_alloc(char*, 1);

   
   // now read the input file
   //line%3 for next vertex till input string in file
   int line = 0;
   int edgCounter = 0;

   int totalEdges = 0;
   int totalVertices = 0;

   int *edgCovered;
   vertex *vert;
   while(!feof(fptr))
   {
        
        fscanf(fptr, "%[^\n]\n", pstr);
        if(line == 0)
        {
            wordArr = breakInWordsVlog(pstr);                
            totalVertices = atoi(array_fetch(char*, wordArr, 0));
            totalEdges = atoi(array_fetch(char*, wordArr, 1));
            // printf("Vert: %d\tEdges: %d\n", totalVertices, totalEdges);
            edgCovered = (int*)calloc(totalEdges, sizeof(int));
            line++;
            continue;
        }
        // printf("curr string : %s\n", pstr);
        if(strstr(pstr, "input"))
        {
            // printf("Processing primary input\n");
            wordArr = breakInWordsVlog(pstr);      
            for(i = 1; i < array_n(wordArr); i++)
            {
                word = array_fetch(char*, wordArr, i);
                edg = findEdge(word, G->edgArr);
                if (!edg)
                {
                    // printf("Warning: Unconnected primary input edge %s\n", word);
                    continue;
                }
                    
                else if(edg->fromNode != NULL)
                    printf("ERROR: primary edge assertion failure\n");
                else
                {
                    edg->bPrimIn = true;
                    array_insert_last(edge*, G->primInEdges, edg);
                }
            }
            continue;
        }
        else if(strstr(pstr, "output"))
        {
            // printf("Processing primary output\n");
            wordArr = breakInWordsVlog(pstr);      
            for(i = 1; i < array_n(wordArr); i++)
            {
                word = array_fetch(char*, wordArr, i);
                edg = findEdge(word, G->edgArr);
                if (!edg)
                    printf("Warning: Unconnected primary output edge %s\n", word);
                else
                {
                    edg->bPrimOut = true;
                    array_insert_last(edge*, G->primOutEdges, edg);
                }
            }
            continue;
        }
        wordArr = breakInWordsVlog(pstr);      
        int i=(line-1)%3;
        switch(i){
            case 0:
                gatetype = array_fetch(char*, wordArr, 1);
                gatename = array_fetch(char*, wordArr, 0);
                //create vertex 
                vert = createNewVertexForVlog_struct(G, wordArr, gatetype, gatename, G->edgArr, libName);
                break;
            case 1:
                //create output edges
                createOutEdges(G, vert, wordArr, edgCovered);
                break;
            case 2:
                //create input edges
                createInEdges(G, vert, wordArr, edgCovered);
                
                //sort input ports
                sortPorts(vert);
                break;
            default:
                printf("\n \n IN Default\n");
                break;
        } 
        line++;       
	}
    fclose(fptr);
    
    return G;
}

/* create a vertex of given type - written for generating graph from gate-level verilog mapped to LEDA library */
vertex* createNewVertexForVlog_struct(graph* G, array_t* wordArr, char* cellName, char* nodeName, array_t* globEdges, char* libName)
{
    int i, j, k, iter, temp, bdff = false;
    char* str, *tstr, *word, *lit1, *lit2;
    edge* edg;
    vertex* vert;
	array_t* sortInPorts = array_alloc(int, 1);
	char* tempword1;
	char* tempword2;
	int digit;
	int isVector;

    char* originalName;

    vert = (vertex*)malloc(sizeof(vertex));
    vert->type = (Type*)malloc(sizeof(Type));
    vert->newType = NULL;
    vert->idx = globalVertIdx++;
    vert->bPrimIn = 0;
    vert->bPrimOut = 0;
    vert->isSeq = 0;
    vert->type = findType(cellName, G->typeArr);
    vert->name = strdup(nodeName);
    vert->inEdges = array_alloc(edge*, 1);
	vert->outEdges = array_alloc(edge*, 1);
    vert->inPorts = array_alloc(char*, 1);
	vert->outPorts = array_alloc(char*, 1);
    
    if (strstr(cellName, "df") || strstr(cellName, "lscs") || strstr(cellName, "lclks"))
    {
        bdff = true;
        vert->isSeq = true;
        if(strstr(cellName, "sdf")){       //updated by Pravin on 10/7/19
            vert->scanDFF = 1;
            array_insert_last(vertex*, G->scanDFF, vert);
        }
        else
            array_insert_last(vertex*, G->nonscanDFF, vert);
        array_insert_last(vertex*, G->seqGates, vert);
		array_insert_last(vertex*, G->vertexArr, vert);		// Added by Hitesh
		//vert->isDual = true;								// Added by Hitesh
    }
    else
    {
        array_insert_last(vertex*, G->combGates, vert);
        array_insert_last(vertex*, G->vertexArr, vert);
		//vert->isDual = false;
    }

    return vert;
}


void createOutEdges(graph *G, vertex *vert, array_t *wordArr, int *edgCovered)
{
    // first create the output edges
    edge *edg;    
    int edgCoveredLocalFlag = 0;        
    for(int i = 0; i < array_n(wordArr); i++)
    {        
        char *word = array_fetch(char*, wordArr, i);
        int curr_idx = i%4;
        switch(curr_idx)
        {
            case 0:
                //edg-index
                if(edgCovered[atoi(word)] == 1)     //edge already inserted
                    edgCoveredLocalFlag = 1;
                else                                //new edge
                    edgCovered[atoi(word)] = 1;
                break;            
            case 1:
                if(edgCoveredLocalFlag == 1)        //edge already inserted add remaining stuff
                {
                    edg = findEdge(word, G->edgArr);
                    if(!edg)
                    {
                        printf("SOmething wrong !!!!");
                        exit(0);
                    }                    
                }
                else
                {
                    edg = createEdge_struct(G, word);
                }                
                array_insert_last(edge*, vert->outEdges, edg);
                edg->fromNode = vert;                                
                break;                
            case 2:
                //original name
                edg->origName = strdup(word);
                break;    
            case 3:
                //edg-port
                array_insert_last(char*, vert->outPorts, strdup(word));
                edgCoveredLocalFlag = 0;
                break;
        }
        // if(edgCoveredLocalFlag == 1)
        //     i = i + 3;  //moving to next edge
    }

}

void createInEdges(graph *G, vertex *vert, array_t *wordArr, int *edgCovered)
{
    // now create the input edges
    edge *edg;
    int edgCoveredLocalFlag = 0;
    for(int i = 0; i < array_n(wordArr); i++)
    {        
        char *word = array_fetch(char*, wordArr, i);
        int curr_idx = i%4;
        switch(curr_idx)
        {
            case 0:
                //edg-index
                // printf("edgId: %d, edgIdFlag: %d\n", atoi(word), edgCovered[atoi(word)]);
                if(edgCovered[atoi(word)] == 1)     //edge already inserted
                    edgCoveredLocalFlag = 1;
                else                                //new edge
                    edgCovered[atoi(word)] = 1;
                break;  
            case 1:
                if(edgCoveredLocalFlag == 1)        //edge already inserted add remaining stuff
                {
                    edg = findEdge(word, G->edgArr);
                    // printf("%s\n", edg->name);                    
                    if(!edg)
                    {
                        printf("SOmething wrong !!!!");
                        exit(0);
                    }                    
                }
                else
                {
                    edg = createEdge_struct(G, word);
                    // printf("%s\n", edg->name);                    
                }
                array_insert_last(edge*, vert->inEdges, edg);
                array_insert_last(vertex*, edg->toNodes, vert);                
                break;                
            case 2:
                //original name
                edg->origName = strdup(word);
                break;    
            case 3:
                //edg-port
                array_insert_last(char*, vert->inPorts, strdup(word));
                edgCoveredLocalFlag = 0;
                break;
        }
        // if(edgCoveredLocalFlag == 1)
        //     i = i + 3;  //moving to next edge
    }    
}

void sortPorts(vertex *vert)
{
    edge *edg;
    int i,j;

    //sort inports and inedges by inport name.
    array_t* tempPorts = array_alloc(char*, 1);
    tempPorts = array_dup(vert->inPorts); //temp arrays
    array_t* tempEdges = array_alloc(edge*, 1);
    tempEdges = array_dup(vert->inEdges); //temp arrays
    //bubble sort... efficient given small N

    char *tempword1, *word;
    int vertLen = array_n(vert->inPorts);
    for(i=0;i<vertLen-1;i++)
    {
        for(j=0;j<vertLen-i-1;j++)
        {
            word = array_fetch(char*,vert->inPorts, j);
            tempword1 = array_fetch(char*,vert->inPorts, j+1);
            
            if(strcmp(tempword1,word)<0)
            {
                array_insert(char*,vert->inPorts, j, tempword1); 
                array_insert(char*,vert->inPorts, j+1, word); 
            }
        }
    }
    
    //map edge positions to sorted ports
    for(i=0;i<array_n(vert->inPorts);i++)
    {
        word = array_fetch(char*,vert->inPorts, i);
        for(j=0;j<array_n(tempPorts);j++)
        {
            tempword1 = array_fetch(char*, tempPorts,j);
            if((strlen(word) == strlen(tempword1)) && strstr(word, tempword1))
            {
                break;
            }
        }
        edg = array_fetch(edge*, tempEdges, j);
        array_insert(edge*,vert->inEdges, i, edg); 
    }
}



/* createEdge: Edge structure initializatioin */
edge* createEdge_struct(graph* G, char* name)
{
    edge *edg;
    edg = (edge*)malloc(sizeof(edge));
    edg->globalEdgIdx = globalEdgIdx;           //Added by Pravin
    edg->idx = globalEdgIdx++;
    edg->toNodes = array_alloc(vertex*, 1);
    edg->fromNode = NULL;
    edg->name = name;
    //edg->origName = modName;
    edg->bPrimIn = 0;               /* 0: not Primary Input */
    edg->bPrimOut = 0;
    edg->oldVal = -1;         /* value -1 means undefined */
    edg->newVal = -1;         /* value -1 means undefined */
    edg->visited = false;
    
    // Added by Pravin
    edg->cc0 = INT_MAX;
    edg->cc1 = INT_MAX;
    edg->cco = INT_MAX;

    array_insert_last(edge*, G->edgArr, edg);
    edg->simResults = array_alloc(int, 1);
    edg->iv_simResults = array_alloc(int, 1);
    edg->simTritResults = array_alloc(int, 1);

    edg->tmax_pattern = array_alloc(char*, 1);
    
    return edg;
}

void dumpGraphStr(graph *G, char *dumpDir)
{
    char *graphStrName;
    asprintf(&graphStrName, "%s/graphStructure.txt", dumpDir);

    FILE *fileHandle = fopen(graphStrName, "w");

    fprintf(fileHandle, "%d,%d\n", array_n(G->vertexArr), array_n(G->edgArr));

    for(int i=0; i<array_n(G->vertexArr); i++)
    {
        vertex *vert = array_fetch(vertex*, G->vertexArr, i);
        fprintf(fileHandle, "%s,%s,%d\n", vert->name, vert->type->name, vert->idx);
        for(int j=0; j<array_n(vert->outEdges); j++)
        {
            edge *outEdge = array_fetch(edge*, vert->outEdges, j);
            char *port = array_fetch(char*, vert->outPorts, j);
            fprintf(fileHandle, "%d,%s,%s,%s,", outEdge->idx, outEdge->name, outEdge->origName, port);
        }
        fprintf(fileHandle, "\n");
        for(int j=0; j<array_n(vert->inEdges); j++)
        {
            edge *inEdge = array_fetch(edge*, vert->inEdges, j);
            char *port = array_fetch(char*, vert->inPorts, j);
            fprintf(fileHandle, "%d,%s,%s,%s,", inEdge->idx, inEdge->name, inEdge->origName, port);

        }
        fprintf(fileHandle, "\n");
    }    

    fprintf(fileHandle, "input,");
    for(int i=0; i<array_n(G->primInEdges); i++)
    {
        edge *inEdge = array_fetch(edge*, G->primInEdges, i);
        fprintf(fileHandle, "%s,", inEdge->name, inEdge->idx);
    }
    fprintf(fileHandle, "\n");

    fprintf(fileHandle, "output,");
    for(int i=0; i<array_n(G->primOutEdges); i++)
    {
        edge *outEdge = array_fetch(edge*, G->primOutEdges, i);
        fprintf(fileHandle, "%s,", outEdge->name, outEdge->idx);
    }
    fprintf(fileHandle, "\n");

    fclose(fileHandle);
}


void printEdgArr(array_t *edgArr)
{
    for(int i=0; i<array_n(edgArr); i++)
    {
        edge *edg = array_fetch(edge*, edgArr, i);
        printf("%s,", edg->name);
    }
    printf("\n");
}

void adjList(graph* G, char *dumpDir, char *inputFile, char *moduleName)
{
    size_t i,j,k;
    edge *tEdge;
    vertex *sVtx, *tVtx, *tempVert;
    char *netlist;
    char *opFileName = (char*)malloc(sizeof(char)*10000);
    char *level_file = (char*)malloc(sizeof(char)*10000);
    char *gatetype;
    char *gatename, *dummy_name;
    array_t* wordArr = array_alloc(char*, 1);

    gatetype = (char*)malloc(sizeof(char)*400);
    gatename = (char*)malloc(sizeof(char)*400);
    dummy_name = (char*)malloc(sizeof(char)*400);

    strcpy(opFileName, dumpDir);
    strcat(opFileName, "/");
    strcat(opFileName, moduleName);
    strcat(opFileName, "_Node_Connectivity.csv");
    
    strcpy(level_file, dumpDir);
    strcat(level_file, "/levels.csv");
    
    FILE * levelHandle = fopen(level_file, "w");

    // printf("Dumping level info: \n");
    // for(int i=0; i<array_n(G->lvlVertArr); i++)
    // {
    //     array_t *tempLevel = array_fetch(vertex*, G->lvlVertArr, i);
    //     for(int j=0; j<array_n(tempLevel); j++)
    //     {
    //         vertex* tempVert = array_fetch(vertex*, tempLevel, j);
    //         fprintf(levelHandle, "%s,", tempVert->name);
    //     }
    //     fprintf(levelHandle,"\n");
    // }
    // fclose(levelHandle);

    char *command = (char*)malloc(sizeof(char)*10000);
	
    printf("Dumping connectivity info: \n");
    
    // for(i=0; i<array_n(G->primOutEdges); i++)
    // {
    //     tEdge = array_fetch(edge*, G->primOutEdges, i);
    //     array_insert_last(char*, wordArr, "nb1s1");
    //     sprintf(gatename, "DUMMY%d_out", i);
    //     array_insert_last(char*, wordArr, gatename);
    //     array_insert_last(char*, wordArr, ".DIN");
    //     array_insert_last(char*, wordArr, tEdge->name);
    //     array_insert_last(char*, wordArr, ".Q");
    //     sprintf(dummy_name, "DUMMY_OP%d", i);
    //     array_insert_last(char*, wordArr, dummy_name);
    //     strcpy(gatetype, "nb1s1");
    //     createNewVertexForVlog(G, wordArr, gatetype, strdup(gatename), G->edgArr, 0);
    //     array_free(wordArr);
    //     wordArr = array_alloc(char*, 1);
    // }

    // for(i=0; i<array_n(G->primInEdges); i++)
    // {
    //     tEdge = array_fetch(edge*, G->primInEdges, i);
    //     array_insert_last(char*, wordArr, "nb1s1");
    //     sprintf(gatename, "DUMMY%d_in", i);
    //     array_insert_last(char*, wordArr, gatename);
    //     array_insert_last(char*, wordArr, ".DIN");
    //     array_insert_last(char*, wordArr, "DUMMY_INP");
    //     array_insert_last(char*, wordArr, ".Q");
    //     array_insert_last(char*, wordArr, tEdge->name);
    //     strcpy(gatetype, "nb1s1");
    //     createNewVertexForVlog(G, wordArr, gatetype, strdup(gatename), G->edgArr, 0);
    //     array_free(wordArr);
    //     wordArr = array_alloc(char*, 1);
    // }

    // for(i=0; i<array_n(G->seqGates); i++)
    // {
    //     tempVert = array_fetch(vertex*, G->seqGates, i);
    //     for(j=0; j<array_n(tempVert->outEdges); j++)
    //     {
    //         tEdge = array_fetch(edge*, tempVert->outEdges, j);
    //         array_insert_last(char*, wordArr, "nb1s1");
    //         sprintf(gatename, "DUMMY%d_pseudo_in", i);
    //         array_insert_last(char*, wordArr, gatename);
    //         array_insert_last(char*, wordArr, ".DIN");
    //         array_insert_last(char*, wordArr, "DUMMY_INP");
    //         array_insert_last(char*, wordArr, ".Q");
    //         array_insert_last(char*, wordArr, tEdge->name);
    //         strcpy(gatetype, "nb1s1");
    //         createNewVertexForVlog(G, wordArr, gatetype, strdup(gatename), G->edgArr, 0);
    //         array_free(wordArr);
    //         wordArr = array_alloc(char*, 1);
    //     }

    //     for(j=0; j<array_n(tempVert->inEdges); j++)
    //     {
    //         tEdge = array_fetch(edge*, tempVert->inEdges, j);
    //         array_insert_last(char*, wordArr, "nb1s1");
    //         sprintf(gatename, "DUMMY%d_pseudo_out", i);
    //         array_insert_last(char*, wordArr, gatename);
    //         array_insert_last(char*, wordArr, ".DIN");
    //         array_insert_last(char*, wordArr, tEdge->name);
    //         array_insert_last(char*, wordArr, ".Q");
    //         sprintf(dummy_name, "DUMMY_OP%d", i);
    //         array_insert_last(char*, wordArr, dummy_name);
    //         strcpy(gatetype, "nb1s1");
    //         createNewVertexForVlog(G, wordArr, gatetype, strdup(gatename), G->edgArr, 0);
    //         array_free(wordArr);
    //         wordArr = array_alloc(char*, 1);
    //     }
        
    // }



    
    printf("-----dumping adj list ------\n");
    FILE *outFile1 = fopen(opFileName, "w");
    for(i=0; i<array_n(G->vertexArr);i++)
    {
        sVtx = array_fetch(vertex*, G->vertexArr, i);
        if(strstr(sVtx->type->name, "df") !=NULL)
            continue;
        
        for(j=0; j<array_n(sVtx->outEdges);j++)
        {
            tEdge = array_fetch(edge*, sVtx->outEdges,j);
            for(k=0; k<array_n(tEdge->toNodes); k++)
            {
                tVtx = array_fetch(vertex*, tEdge->toNodes,k);
                if(strstr(tVtx->type->name, "df") !=NULL)
                    continue;
                fprintf(outFile1, "%s,%s,%d,%s,%s,%d,%s\n", sVtx->name, sVtx->type->name, sVtx->partitionNumber, tVtx->name, tVtx->type->name, tVtx->partitionNumber, tEdge->name);
                // printf("%s,%s,%s,%s,%s\n", sVtx->name, sVtx->type->name, tVtx->name, tVtx->type->name, tEdge->name);
            }
            //if(array_n(tEdge->toNodes) == 0)
                //fprintf(outFile1, "%s,%s,%s,%s,%s\n", sVtx->name, sVtx->type->name, "output", "output", tEdge->name);
        }
    }
    fclose(outFile1);

    printf("------\n");

    free(level_file);
}
