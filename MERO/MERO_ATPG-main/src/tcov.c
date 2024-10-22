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

/**************************************************************************************
 * Author: Pravin gaikwad
 * Date: 02/07/2020
 *
 * Description:
 *
 * Vector simulation through each of the cells from primary inputs to primary outputs.
 * All sequnetial elements are considered as scan flip flops. 
 * Tool supports feature calculations for some of the LEDA/skywater cells.   
 *************************************************************************************/

#include "graph.h"

/**
 * @brief 
 * 
 * @param G                     - CAST graph structure
 * @param vert                  - Vertex to be processed
 * @param updatesimResultsFlag  - Flag to update simulationResults
 * 
 * @note 
 * 
 * Old appraoch. Not in use
 */
void calLogicSim(graph* G, vertex *vert, int updatesimResultsFlag)
{

    vertex *toVtx;
    char* logic=malloc(10000*sizeof(char)), *tempPort;
    strcpy(logic, vert->type->name);
    edge *edgOut, *edgIn, *edg, *tempEdg;
    int prob_1 = 1;
    int bitValue0=-1, bitValue1=-1;
    float prob_op;
    int inputs,i, tempcc0=0, tempcc1=0, errorFlag=0;

    int AIN, BIN, CIN, DIN, SIN, SIN0, SIN1, OUTS, OUTC, CLRB, SETB, EB, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6, DIN7, DIN8, DIN9, DIN10, DIN11, DIN12;
    int nInput = 0;	
    for(int i=0; i<array_n(vert->inPorts); i++){
        tempPort = array_fetch(char*, vert->inPorts, i);
        if(strlen(tempPort) == 4 && strstr(tempPort, ".DIN") )
        {
            DIN = array_fetch(edge*, vert->inEdges, i)->atLogic;
        }
        else if(strstr(tempPort, "CIN"))
        {
            CIN = array_fetch(edge*, vert->inEdges, i)->atLogic;
        }
        else if(((strlen(tempPort)==2) && strstr(tempPort,".S")) || (strlen(tempPort) == 4 && strstr(tempPort, ".SIN") || strstr(tempPort, ".CLK")) && strlen(tempPort) == 4)
        {
            SIN = array_fetch(edge*, vert->inEdges, i)->atLogic;
        }
        else if(strstr(tempPort, "SIN0") || strstr(tempPort, "CLK0") || (strlen(tempPort) == 3 && strstr(tempPort,"S0")))
        {
            SIN0 = array_fetch(edge*, vert->inEdges, i)->atLogic;
        }
        else if(strstr(tempPort, "SIN1") || strstr(tempPort, "CLK1") || (strlen(tempPort) == 3 && strstr(tempPort,"S1")))
        {
            SIN1 = array_fetch(edge*, vert->inEdges, i)->atLogic;
        }
        else if(strstr(tempPort, "CLRB") || strstr(tempPort, "RESET_B"))
        {
            CLRB = array_fetch(edge*, vert->inEdges, i)->atLogic;
        }
        else if(strstr(tempPort, "SETB") || strstr(tempPort, "SET_B"))
        {
            SETB = array_fetch(edge*, vert->inEdges, i)->atLogic;
        }
        else if(strstr(tempPort, "EB") || strstr(tempPort, "DE"))
        {
            EB = array_fetch(edge*, vert->inEdges, i)->atLogic;
        }
        else if(nInput == 0)
        {
            DIN1 = array_fetch(edge*, vert->inEdges, i)->atLogic;
            nInput++;
        }
        else if(nInput == 1)
        {
            DIN2 = array_fetch(edge*, vert->inEdges, i)->atLogic;
            nInput++;
        }
        else if(nInput == 2)
        {
            DIN3 = array_fetch(edge*, vert->inEdges, i)->atLogic;
            nInput++;
        }
        else if(nInput == 3)
        {
            DIN4 = array_fetch(edge*, vert->inEdges, i)->atLogic;
            nInput++;
        }
        else if(nInput == 4)
        {
            DIN5 = array_fetch(edge*, vert->inEdges, i)->atLogic;
            nInput++;
        }
        else if(nInput == 5)
        {
            DIN6 = array_fetch(edge*, vert->inEdges, i)->atLogic;
            nInput++;
        }
        else if(nInput == 6)
        {
            DIN7 = array_fetch(edge*, vert->inEdges, i)->atLogic;
            nInput++;
        }
        else if(nInput == 7)
        {
            DIN8 = array_fetch(edge*, vert->inEdges, i)->atLogic;
            nInput++;
        }
        else if(nInput == 8)
        {
            DIN9 = array_fetch(edge*, vert->inEdges, i)->atLogic;
            nInput++;
        }
        else if(nInput == 9)
        {
            DIN10 = array_fetch(edge*, vert->inEdges, i)->atLogic;
            nInput++;
        }
        else{

            printf("************Update controllalbility prob function************: %s\n", tempPort);
            //exit(0);
        }
    }

    inputs = find_first_digit(logic);

    if(strstr(logic, "nnd") || strstr(logic, "NAND") || strstr(logic, "nand"))
    {
        // vert->logicFunc = strdup("& and !");
        //anding first two input
        bitValue0 = array_fetch(edge*, vert->inEdges, 0)->atLogic & array_fetch(edge*, vert->inEdges, 1)->atLogic;
        for(int i=2; i<array_n(vert->inEdges); i++)
        {
            edgIn = array_fetch(edge*, vert->inEdges, i);
            bitValue0 = bitValue0 & edgIn->atLogic;
        }
        //inverting for NAND function
        bitValue0 = !bitValue0; 
    }
    else if(strstr(logic, "and") || strstr(logic, "AND"))
    {
        // vert->logicFunc = strdup("&");
        //anding first two input
        bitValue0 = array_fetch(edge*, vert->inEdges, 0)->atLogic & array_fetch(edge*, vert->inEdges, 1)->atLogic;

        for(int i=2; i<array_n(vert->inEdges); i++)
        {
            edgIn = array_fetch(edge*, vert->inEdges, i);
            bitValue0 = bitValue0 & edgIn->atLogic;
        }        
    }    
    else if(strstr(logic, "xor") || strstr(logic, "XOR") )
    {
        // vert->logicFunc = strdup("^");
        //xoring first two input
        bitValue0 = array_fetch(edge*, vert->inEdges, 0)->atLogic ^ array_fetch(edge*, vert->inEdges, 1)->atLogic;
        for(int i=2; i<array_n(vert->inEdges); i++)
        {
            edgIn = array_fetch(edge*, vert->inEdges, i);
            bitValue0 = bitValue0 ^ edgIn->atLogic;
        }        
    }
    else if(strstr(logic, "xnor") || strstr(logic, "XNOR") || strstr(logic, "xnr") )
    {
        // vert->logicFunc = strdup("^ and !");
        //xoring first two input
        bitValue0 = array_fetch(edge*, vert->inEdges, 0)->atLogic ^ array_fetch(edge*, vert->inEdges, 1)->atLogic;
        for(int i=2; i<array_n(vert->inEdges); i++)
        {
            edgIn = array_fetch(edge*, vert->inEdges, i);
            bitValue0 = bitValue0 ^ edgIn->atLogic;
        }
        //inverting for XNOR function
        bitValue0 = !bitValue0; 
    }
    else if(strstr(logic, "nor") || strstr(logic, "NOR"))
    {
        // vert->logicFunc = strdup("or using | and !");
        //oring first two input
        bitValue0 = array_fetch(edge*, vert->inEdges, 0)->atLogic | array_fetch(edge*, vert->inEdges, 1)->atLogic;
        for(int i=2; i<array_n(vert->inEdges); i++)
        {
            edgIn = array_fetch(edge*, vert->inEdges, i);
            bitValue0 = bitValue0 | edgIn->atLogic;
        }
        //inverting for NOR function
        bitValue0 = !bitValue0; 
    }
    else if(strstr(logic, "or") || strstr(logic, "OR") )
    {
        // vert->logicFunc = strdup("or using | ");
        //oring first two input
        bitValue0 = array_fetch(edge*, vert->inEdges, 0)->atLogic | array_fetch(edge*, vert->inEdges, 1)->atLogic;
        for(int i=2; i<array_n(vert->inEdges); i++)
        {
            edgIn = array_fetch(edge*, vert->inEdges, i);
            bitValue0 = bitValue0 | edgIn->atLogic;
        }        
    }        
    else if(strstr(logic, "dff") || strstr(logic, "DFF") || strstr(logic, "df"))
    {
        // vert->logicFunc = strdup("edgIn->atLogic");
        //check this for fb Edges + check data edge
        edgIn = array_fetch(edge*, vert->inEdges, 0);
        bitValue0 = edgIn->atLogic;        
    }
    else if(strstr(logic, "INV")|| ((strlen(logic)==5) && strstr(logic, "inv_")))
    {
        // vert->logicFunc = strdup("! (edgIn->atLogic)");
        edgIn = array_fetch(edge*, vert->inEdges, 0);
        bitValue0 = ! (edgIn->atLogic);
    }
    else if(strstr(logic, "aoai1112s"))
    {
        //"aoai1112s1"
        // Q = !(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)))
        // vert->logicFunc = strdup("!(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)))");
        bitValue0 = !(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)));
    }
    else if(strstr(logic, "oai1112s"))
    {
        // vert->logicFunc = strdup("!(DIN1 & DIN2 & DIN3 & (DIN4 | DIN5))");
        //"oai1112s1"
        // Q = !(DIN1 & DIN2 & DIN3 & (DIN4 | DIN5))
        bitValue0 = !(DIN1 & DIN2 & DIN3 & (DIN4 | DIN5));
    }
    else if(strstr(logic, "hadd1s") || strstr(logic, "ha_"))
    {
        // vert->logicFunc = strdup("AIN ^ BIN, AIN & BIN");
        /*
		OUTS = AIN ^ BIN;OUTC = AIN & BIN
		*/
        bitValue0 = AIN ^ BIN;
        bitValue1 = AIN & BIN;        
    }
    else if(strstr(logic, "aoai122s"))
    {
        // vert->logicFunc = strdup("!(DIN1 & ((DIN2 & DIN3) | (DIN4 & DIN5)))");
        //"aoai122s1"
        // Q = !(DIN1 & ((DIN2 & DIN3) | (DIN4 & DIN5)))
        // vert->logicFunc = strdup("!(DIN1 & ((DIN2 & DIN3) | (DIN4 & DIN5)))");
        bitValue0 = !(DIN1 & ((DIN2 & DIN3) | (DIN4 & DIN5)));
    }
    else if(strstr(logic, "mx21s") || strstr(logic, "dsmx") || strstr(logic, "mux2_") )
    {
        // vert->logicFunc = strdup("((DIN1 & !SIN) | (DIN2 & SIN))");
        //"mx21s1"
        // Q = (DIN1 & !SIN) | (DIN2 & SIN)
        //"dsmx"
        // Q = (DIN1 & (!CLK)) | (DIN2 & CLK)

        bitValue0 = ((DIN1 & !SIN) | (DIN2 & SIN));
        //bitValue0 = ((DIN1 & !CLK) | (DIN2 & CLK));
    }
    else if(strstr(logic, "mxi21s")  || strstr(logic, "mux2i_"))
    {
        // vert->logicFunc = strdup("!((DIN1 & !SIN) | (DIN2 & SIN))");
        //"mxi21s1"
        // Q = !((DIN1 & !SIN) | (DIN2 & SIN))
        // vert->logicFunc = strdup("!((DIN1 & !SIN) | (DIN2 & SIN))");
        bitValue0 = !((DIN1 & !SIN) | (DIN2 & SIN));
    }
    else if(strstr(logic, "mx41s") || strstr(logic, "mux4"))
    {
        // vert->logicFunc = strdup("((DIN1 & ~DIN2 & ~DIN3) | (DIN4 & ~DIN3 & DIN2) | (DIN5 & DIN3 & ~DIN2) | (DIN6 & DIN2 & DIN3))");
        /*
		strcpy(gate, "mx41s1");
		strcpy(derived, "((DIN1 & ~DIN2 & ~DIN3) | (DIN4 & ~DIN3 & DIN2) | (DIN5 & DIN3 & ~DIN2) | (DIN6 & DIN2 & DIN3))");
		return derived;
		*/
        bitValue0 = ((DIN1 & ~DIN2 & ~DIN3) | (DIN4 & ~DIN3 & DIN2) | (DIN5 & DIN3 & ~DIN2) | (DIN6 & DIN2 & DIN3));        
    }
    else if(strstr(logic, "mxi41s"))
    {
        // vert->logicFunc = strdup("!((DIN1 & !SIN0 & !SIN1) | (DIN2 & !SIN1 & SIN0) | (DIN3 & SIN1 & !SIN0) | (DIN4 & SIN1 & SIN0))");
        //"mxi41s1"
        // Q = !((DIN1 & !SIN0 & !SIN1) | (DIN2 & !SIN1 & SIN0) | (DIN3 & SIN1 & !SIN0) | (DIN4 & SIN1 & SIN0))

        bitValue0 = !((DIN1 & !SIN0 & !SIN1) | (DIN2 & !SIN1 & SIN0) | (DIN3 & SIN1 & !SIN0) | (DIN4 & SIN1 & SIN0));        
    }
    else if(strstr(logic, "nb1s") || 
            strstr(logic,"buf_") ||
            strstr(logic,"bufbuf_"))
    {
        // vert->logicFunc = strdup("edgIn->atLogic");
        //printf("************non-inverting buffer******\n");
        edgIn = array_fetch(edge*, vert->inEdges, 0);
        bitValue0 = edgIn->atLogic;
    }
    else if(strstr(logic, "ib1s") ||
            strstr(logic, "hi1s") ||
            strstr(logic, "i1s") ||
            strstr(logic,"bufinv_"))
    {
        // vert->logicFunc = strdup("! (edgIn->atLogic)");
        //**************** inverting buffer **************
        edgIn = array_fetch(edge*, vert->inEdges, 0);
        bitValue0 = ! (edgIn->atLogic);
    }
    else if(strstr(logic, "aoai1112s"))
    {
        // vert->logicFunc = strdup("!(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)))");
        //"aoai1112s2"
        // Q = !(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)))

        bitValue0 = !(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)));
    }
    else if(strstr(logic, "oai21s") || strstr(logic, "o21ai"))
    {
        // vert->logicFunc = strdup("!((DIN1 | DIN2) & DIN3)");
        //"oai21s2"
        // Q = !((DIN1 | DIN2) & DIN3)

        bitValue0 = !((DIN1 | DIN2) & DIN3);
    }
    else if(strstr(logic, "aoi21s") || strstr(logic, "a21oi"))
    {
        // vert->logicFunc = strdup("!((DIN1 & DIN2) | DIN3)");
        //"aoi21s2"
        // Q = !((DIN1 & DIN2) | DIN3)

        bitValue0 = !((DIN1 & DIN2) | DIN3);
    }
    else if(strstr(logic, "aoi221s") || strstr(logic, "a221oi"))
    {
        // vert->logicFunc = strdup("!((DIN1 & DIN2) | (DIN3 & DIN4) | DIN5)");
        //"aoi221s1"
        // Q = !((DIN1 & DIN2) | (DIN3 & DIN4) | DIN5)

        bitValue0 = !((DIN1 & DIN2) | (DIN3 & DIN4) | DIN5);
    }
    else if(strstr(logic, "aoi13s"))
    {
        // vert->logicFunc = strdup("!(DIN1 | (DIN2 & DIN3 & DIN4))");
        //"aoi13s2"
        // Q = !(DIN1 | (DIN2 & DIN3 & DIN4))

        bitValue0 = !(DIN1 | (DIN2 & DIN3 & DIN4));
    }
    else if(strstr(logic, "oai13s"))
    {
        // vert->logicFunc = strdup("!(DIN1 & (DIN2 | DIN3 | DIN4))");
        //"oai13s1"
        // Q = !(DIN1 & (DIN2 | DIN3 | DIN4))

        bitValue0 = !(DIN1 & (DIN2 | DIN3 | DIN4));
    }
    else if(strstr(logic, "aoi22s") || strstr(logic, "a22oi"))
    {
        // vert->logicFunc = strdup("!((DIN1 & DIN2) | (DIN3 & DIN4))");
        //"aoi22s2"
        // Q = !((DIN1 & DIN2) | (DIN3 & DIN4))

        bitValue0 = !((DIN1 & DIN2) | (DIN3 & DIN4));        
    }
    else if(strstr(logic, "aoi42s"))
    {
        // vert->logicFunc = strdup("!((DIN1 & DIN2 & DIN3 & DIN4) | (DIN5 & DIN6))");
        //"aoi42s2"
        //Q = !((DIN1 & DIN2 & DIN3 & DIN4) | (DIN5 & DIN6))

        bitValue0 = !((DIN1 & DIN2 & DIN3 & DIN4) | (DIN5 & DIN6));        
    }
    else if(strstr(logic, "aoi222s") || strstr(logic, "a222oi"))
    {
        // vert->logicFunc = strdup("!((DIN1 & DIN2) | (DIN3 & DIN4) | (DIN5 & DIN6))");
        //"aoi222s1"
        // Q = !((DIN1 & DIN2) | (DIN3 & DIN4) | (DIN5 & DIN6))

        bitValue0 = !((DIN1 & DIN2) | (DIN3 & DIN4) | (DIN5 & DIN6));
    }
    else if(strstr(logic, "aoi2221s"))//updated on 3/24/20
    {
        // vert->logicFunc = strdup("!((DIN1 & DIN2) | (DIN3 & DIN4) | (DIN5 & DIN6) | DIN7)");
        //"aoi2221s1"
        // Q = !((DIN1 & DIN2) | (DIN3 & DIN4) | (DIN5 & DIN6) | DIN7)

        bitValue0 = !((DIN1 & DIN2) | (DIN3 & DIN4) | (DIN5 & DIN6) | DIN7);
    }

    else if(strstr(logic, "aoi123s"))
    {
        // vert->logicFunc = strdup("!(DIN1 | (DIN2 & DIN3) | (DIN4 & DIN5 & DIN6))");
        //"aoi123s1"
        // Q = !(DIN1 | (DIN2 & DIN3) | (DIN4 & DIN5 & DIN6))

        bitValue0 = !(DIN1 | (DIN2 & DIN3) | (DIN4 & DIN5 & DIN6));
    }
    else if(strstr(logic, "aoi211s") || strstr(logic, "a211oi"))
    {
        // vert->logicFunc = strdup("!((DIN1 & DIN2) | DIN3 | DIN4)");
        //"aoi211s1"
        // Q = !((DIN1 & DIN2) | DIN3 | DIN4)

        bitValue0 = !((DIN1 & DIN2) | DIN3 | DIN4);
    }
    else if(strstr(logic, "oai222s"))
    {
        // vert->logicFunc = strdup("!((DIN1 | DIN2) & (DIN3 | DIN4) & (DIN5 | DIN6))");
        //"oai222s1"
        // Q = !((DIN1 | DIN2) & (DIN3 | DIN4) & (DIN5 | DIN6))

        bitValue0 = !((DIN1 | DIN2) & (DIN3 | DIN4) & (DIN5 | DIN6));
    }
    else if(strstr(logic, "oai22s") || strstr(logic, "o22ai"))
    {
        // vert->logicFunc = strdup("!((DIN1 | DIN2) & (DIN3 | DIN4))");
        //"oai22s2"
        // Q = !((DIN1 | DIN2) & (DIN3 | DIN4))

        bitValue0 = !((DIN1 | DIN2) & (DIN3 | DIN4));
    }
    else if(strstr(logic, "oai2222s"))
    {
        // vert->logicFunc = strdup("!((DIN1 | DIN2) & (DIN3 | DIN4) & (DIN5 | DIN6) & (DIN7 | DIN8))");
        //"oai2222s3"
        // Q = !((DIN1 | DIN2) & (DIN3 | DIN4) & (DIN5 | DIN6) & (DIN7 | DIN8))

        bitValue0 = !((DIN1 | DIN2) & (DIN3 | DIN4) & (DIN5 | DIN6) & (DIN7 | DIN8));
    }
    else if(strstr(logic, "aoi4111s"))//updated on 3/24/20
    {
        // vert->logicFunc = strdup("!((DIN1 & DIN2 & DIN3 & DIN4) | DIN5 | DIN6 | DIN7)");
        bitValue0 = !((DIN1 & DIN2 & DIN3 & DIN4) | DIN5 | DIN6 | DIN7);
        
    }
    else if(strstr(logic, "oai32s") || strstr(logic, "o32ai"))
    {
        // vert->logicFunc = strdup("!((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5))");
        //"oai2222s3"
        // Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5))

        bitValue0 = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5));        
    }
    else if(strstr(logic, "aoi23s"))
    {
        // vert->logicFunc = strdup("!((DIN1 & DIN2) | (DIN3 & DIN4 & DIN5))");
        //"aoi23s1"
        //Q = !((DIN1 & DIN2) | (DIN3 & DIN4 & DIN5))

        bitValue0 = !((DIN1 & DIN2) | (DIN3 & DIN4 & DIN5));
    }
    else if(strstr(logic, "aoi33s"))
    {
        // vert->logicFunc = strdup("!((DIN1 & DIN2 & DIN3) | (DIN4 & DIN5 & DIN6))");
        //"aoi33s1"
        //Q = !((DIN1 & DIN2 & DIN3) | (DIN4 & DIN5 & DIN6))

        bitValue0 = !((DIN1 & DIN2 & DIN3) | (DIN4 & DIN5 & DIN6));        
    }
    else if(strstr(logic, "oai33s"))
    {
        // vert->logicFunc = strdup("!((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5 | DIN6))");
        //"oai33s1"
        //Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5 | DIN6))

        bitValue0 = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5 | DIN6));
    }
    else if(strstr(logic, "oai322s"))
    {
        // vert->logicFunc = strdup("!((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & (DIN6 | DIN7))");
        //"oai322s1"
        //Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & (DIN6 | DIN7))

        bitValue0 = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & (DIN6 | DIN7));        
    }
    else if(strstr(logic, "oai321s"))
    {
        // vert->logicFunc = strdup("!((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & DIN6)");
        //"oai321s1");
        //Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & DIN6)

        bitValue0 = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & DIN6);        
    }
    else if(strstr(logic, "oai1112s"))
    {
        // vert->logicFunc = strdup("!(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)))");
        //"oai1112s2"
        //strcpy(derived, "not (DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)))");

        bitValue0 = !(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)));
    }
    else if(strstr(logic, "oai221s") || strstr(logic, "o221ai") )
    {
        // vert->logicFunc = strdup("!((DIN1 | DIN2) & (DIN3 | DIN4) & DIN5)");
        //"oai221s2"
        // Q = !((DIN1 | DIN2) & (DIN3 | DIN4) & DIN5)

        bitValue0 = !((DIN1 | DIN2) & (DIN3 | DIN4) & DIN5);        
    }
    else if(strstr(logic, "oai13s"))
    {
        // vert->logicFunc = strdup("!(DIN1 & (DIN2 | DIN3 | DIN4))");
        //"oai13s2"
        // Q = !(DIN1 & (DIN2 | DIN3 | DIN4))

        bitValue0 = !(DIN1 & (DIN2 | DIN3 | DIN4));
    }
    else if(strstr(logic, "oai211s") || strstr(logic, "o211ai"))
    {
        // vert->logicFunc = strdup("!((DIN1 | DIN2) & DIN3 & DIN4)");
        //"oai211s2"
        // Q = !((DIN1 | DIN2) & DIN3 & DIN4)

        bitValue0 = !((DIN1 | DIN2) & DIN3 & DIN4);
    }
    else if(strstr(logic, "fadd1s")|| strstr(logic, "fa_"))
    {
        // vert->logicFunc = strdup("(AIN ^ BIN) ^ CIN, ((AIN & BIN) | (BIN & CIN) | (CIN & AIN))");
        // OUTS = (AIN ^ BIN) ^ CIN;OUTC = ((AIN & BIN) | (BIN & CIN) | (CIN & AIN))

        bitValue0 = (AIN ^ BIN) ^ CIN;
        bitValue1 = ((AIN & BIN) | (BIN & CIN) | (CIN & AIN));        
    }
    else if(strstr(logic, "oai24s"))
    {
        // vert->logicFunc = strdup("!((DIN1 | DIN2) & (DIN3 | DIN4 | DIN5 | DIN6))");
        //"oai24s1"
        // Q = !((DIN1 | DIN2) & (DIN3 | DIN4 | DIN5 | DIN6))

        bitValue0 = !((DIN1 | DIN2) & (DIN3 | DIN4 | DIN5 | DIN6));
    }
    // else if(strstr(logic, "hi1s") )
    // {
    //     edgIn = array_fetch(edge*, vert->inEdges, 0);
    //     bitValue0 = edgIn->atLogic;
    // }
    else{
        //strcpy(derived, "*** Not known ***");
        printf("---> %s\n", vert->type->name);
        printf("\n!!ERROR: logic not written*******\n");
        printf("vecSim %s\n", logic);
        exit(0);
    }
    
    if(array_n(vert->outEdges) == 1)
    {
        tempEdg = array_fetch(edge*, vert->outEdges, 0);
        tempEdg->atLogic = bitValue0;
        if(updatesimResultsFlag)
            array_insert_last(int, tempEdg->simResults, bitValue0);        
    }        
    else if(array_n(vert->outEdges) == 2)
    {
        //check for port name
        tempEdg = array_fetch(edge*, vert->outEdges, 0);
        tempEdg->atLogic = bitValue0;

        if(updatesimResultsFlag)
            array_insert_last(int, tempEdg->simResults, bitValue0);        

        tempEdg = array_fetch(edge*, vert->outEdges, 1);
        tempEdg->atLogic = bitValue1;

        if(updatesimResultsFlag)
            array_insert_last(int, tempEdg->simResults, bitValue1);        
    }
    else{
        printf("!!ERROR: Number of output edges > 2, update logic\n");
        exit(0);
    }

    free(logic);
}

/**
 * @brief Cell simulation based on cell type
 * 
 * @param G         - CAST graph data structure
 * @param vert      - vertex pointer to be processed
 * @param approach  - [0-> updates atLogic; otherwise->updates newVal]
 * 
 * @note
 * 
 * -# Input data is accessed based on port type.
 * -# Based on cell type, output of each cells are evaluated.
 */
void calLogicSim_w_flag(graph* G, vertex *vert, int approach)
{

    vertex *toVtx;
    char* logic=malloc(10000*sizeof(char)), *tempPort;
    strcpy(logic, vert->type->name);
    edge *edgOut, *edgIn, *edg, *tempEdg;    
    int bitValue0=-1, bitValue1=-1, cell_w_mult_op = 0;;
    int inputs,i;

    int AIN, BIN, CIN, DIN, SIN, SIN0, SIN1, OUTS, OUTC, CLRB, SETB, EB, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6, DIN7, DIN8, DIN9, DIN10, DIN11, DIN12;
    int nInput = 0;	
    for(int i=0; i<array_n(vert->inPorts); i++){

        tempPort = array_fetch(char*, vert->inPorts, i);
        tempEdg = array_fetch(edge*, vert->inEdges, i);

        if(strlen(tempPort) == 4 && strstr(tempPort, ".DIN") )
        {
            if(approach == 0)
                DIN = tempEdg->atLogic;
            else 
                DIN = tempEdg->newVal;
            // else
            //     DIN = tempEdg->oldVal;                        
        }
        else if(strstr(tempPort, "CIN"))
        {
            if(approach == 0)
                CIN = tempEdg->atLogic;
            else
                CIN = tempEdg->newVal;
            // else
            //     CIN = tempEdg->oldVal;            
        }
        else if(strstr(tempPort, "BIN"))
        {
            if(approach == 0)
                BIN = tempEdg->atLogic;
            else
                BIN = tempEdg->newVal;
            // else
            //     BIN = tempEdg->oldVal; 
        }
        else if(strstr(tempPort, "AIN"))
        {
            if(approach == 0)
                AIN = tempEdg->atLogic;
            else
                AIN = tempEdg->newVal;
            // else
            //     AIN = tempEdg->oldVal;
        }
        else if(((strlen(tempPort)==2) && strstr(tempPort,".S")) || (strlen(tempPort) == 4 && strstr(tempPort, ".SIN") || strstr(tempPort, ".CLK")) && strlen(tempPort) == 4)
        {
            // SIN = array_fetch(edge*, vert->inEdges, i)->atLogic;
            if(approach == 0)
                SIN = tempEdg->atLogic;
            else
                SIN = tempEdg->newVal;
            // else
            //     SIN = tempEdg->oldVal;  
            
        }
        else if(strstr(tempPort, "SIN0") || strstr(tempPort, "CLK0") || (strlen(tempPort) == 3 && strstr(tempPort,"S0")))
        {
            // SIN0 = array_fetch(edge*, vert->inEdges, i)->atLogic;
            if(approach == 0)
                SIN0 = tempEdg->atLogic;
            else
                SIN0 = tempEdg->newVal;
            // else
            //     SIN0 = tempEdg->oldVal;  
        }
        else if(strstr(tempPort, "SIN1") || strstr(tempPort, "CLK1") || (strlen(tempPort) == 3 && strstr(tempPort,"S1")))
        {
            // SIN1 = array_fetch(edge*, vert->inEdges, i)->atLogic;
            if(approach == 0)
                SIN1 = tempEdg->atLogic;
            else
                SIN1 = tempEdg->newVal;
            // else
            //     SIN1 = tempEdg->oldVal;  
        }
        else if(strstr(tempPort, "CLRB") || strstr(tempPort, "RESET_B"))
        {
            // CLRB = array_fetch(edge*, vert->inEdges, i)->atLogic;
            if(approach == 0)
                CLRB = tempEdg->atLogic;
            else
                CLRB = tempEdg->newVal;
            // else
            //     CLRB = tempEdg->oldVal;  
        }
        else if(strstr(tempPort, "SETB") || strstr(tempPort, "SET_B"))
        {
            // SETB = array_fetch(edge*, vert->inEdges, i)->atLogic;
            if(approach == 0)
                SETB = tempEdg->atLogic;
            else
                SETB = tempEdg->newVal;
            // else
            //     SETB = tempEdg->oldVal;  
        }
        else if(strstr(tempPort, "EB") || strstr(tempPort, "DE"))
        {
            // EB = array_fetch(edge*, vert->inEdges, i)->atLogic;
            if(approach == 0)
                EB = tempEdg->atLogic;
            else
                EB = tempEdg->newVal;
            // else
            //     EB = tempEdg->oldVal;  
        }
        else if(nInput == 0)
        {
            // DIN1 = array_fetch(edge*, vert->inEdges, i)->atLogic;
            nInput++;
            if(approach == 0)
                DIN1 = tempEdg->atLogic;
            else
                DIN1 = tempEdg->newVal;
            // else
            //     DIN1 = tempEdg->oldVal;  
        }
        else if(nInput == 1)
        {
            // DIN2 = array_fetch(edge*, vert->inEdges, i)->atLogic;
            nInput++;
            if(approach == 0)
                DIN2 = tempEdg->atLogic;
            else
                DIN2 = tempEdg->newVal;
            // else
            //     DIN2 = tempEdg->oldVal; 
        }
        else if(nInput == 2)
        {
            // DIN3 = array_fetch(edge*, vert->inEdges, i)->atLogic;
            nInput++;
            if(approach == 0)
                DIN3 = tempEdg->atLogic;
            else
                DIN3 = tempEdg->newVal;
            // else
            //     DIN3 = tempEdg->oldVal; 
        }
        else if(nInput == 3)
        {
            // DIN4 = array_fetch(edge*, vert->inEdges, i)->atLogic;
            nInput++;
            if(approach == 0)
                DIN4 = tempEdg->atLogic;
            else 
                DIN4 = tempEdg->newVal;
            // else
            //     DIN4 = tempEdg->oldVal; 
        }
        else if(nInput == 4)
        {
            // DIN5 = array_fetch(edge*, vert->inEdges, i)->atLogic;
            nInput++;
            if(approach == 0)
                DIN5 = tempEdg->atLogic;
            else
                DIN5 = tempEdg->newVal;
            // else
            //     DIN5 = tempEdg->oldVal; 
        }
        else if(nInput == 5)
        {
            // DIN6 = array_fetch(edge*, vert->inEdges, i)->atLogic;
            nInput++;
            if(approach == 0)
                DIN6 = tempEdg->atLogic;
            else 
                DIN6 = tempEdg->newVal;
            // else
            //     DIN6 = tempEdg->oldVal; 
        }
        else if(nInput == 6)
        {
            // DIN7 = array_fetch(edge*, vert->inEdges, i)->atLogic;
            nInput++;
            if(approach == 0)
                DIN7 = tempEdg->atLogic;
            else
                DIN7 = tempEdg->newVal;
            // else
            //     DIN7 = tempEdg->oldVal; 
        }
        else if(nInput == 7)
        {
            // DIN8 = array_fetch(edge*, vert->inEdges, i)->atLogic;
            nInput++;
            if(approach == 0)
                DIN8 = tempEdg->atLogic;
            else
                DIN8 = tempEdg->newVal;
            // else
            //     DIN8 = tempEdg->oldVal; 
        }
        else if(nInput == 8)
        {
            // DIN9 = array_fetch(edge*, vert->inEdges, i)->atLogic;
            nInput++;
            if(approach == 0)
                DIN9 = tempEdg->atLogic;
            else
                DIN9 = tempEdg->newVal;
            // else
            //     DIN9 = tempEdg->oldVal; 
        }
        else if(nInput == 9)
        {
            // DIN10 = array_fetch(edge*, vert->inEdges, i)->atLogic;
            nInput++;
            if(approach == 0)
                DIN10 = tempEdg->atLogic;
            else 
                DIN10 = tempEdg->newVal;
            // else
            //     DIN10 = tempEdg->oldVal; 
        }
        else{

            printf("************Update simulation function************: %s\n", tempPort);
            exit(0);
        }
    }

    if(strstr(logic, "nnd") || strstr(logic, "NAND") || strstr(logic, "nand"))
    {
        // // vert->logicFunc = strdup("& and !");
        //anding first two input
        // bitValue0 = array_fetch(edge*, vert->inEdges, 0)->atLogic & array_fetch(edge*, vert->inEdges, 1)->atLogic;
        if(approach == 0)
            bitValue0 = array_fetch(edge*, vert->inEdges, 0)->atLogic & array_fetch(edge*, vert->inEdges, 1)->atLogic;
        else 
            bitValue0 = array_fetch(edge*, vert->inEdges, 0)->newVal & array_fetch(edge*, vert->inEdges, 1)->newVal;
        // else
        //     bitValue0 = array_fetch(edge*, vert->inEdges, 0)->oldVal & array_fetch(edge*, vert->inEdges, 1)->oldVal;
        for(int i=2; i<array_n(vert->inEdges); i++)
        {
            edgIn = array_fetch(edge*, vert->inEdges, i);
            // bitValue0 = bitValue0 & edgIn->atLogic;
            if(approach == 0)
                bitValue0 = bitValue0 & edgIn->atLogic;
            else 
                bitValue0 = bitValue0 & edgIn->newVal;
            // else
            //     bitValue0 = bitValue0 & edgIn->oldVal;            
        }
        //inverting for NAND function
        bitValue0 = !bitValue0; 
    }
    else if(strstr(logic, "and") || strstr(logic, "AND"))
    {
        // // vert->logicFunc = strdup("&");
        //anding first two input
        // bitValue0 = array_fetch(edge*, vert->inEdges, 0)->atLogic & array_fetch(edge*, vert->inEdges, 1)->atLogic;

        if(approach == 0)
            bitValue0 = array_fetch(edge*, vert->inEdges, 0)->atLogic & array_fetch(edge*, vert->inEdges, 1)->atLogic;
        else 
            bitValue0 = array_fetch(edge*, vert->inEdges, 0)->newVal & array_fetch(edge*, vert->inEdges, 1)->newVal;
        // else
        //     bitValue0 = array_fetch(edge*, vert->inEdges, 0)->oldVal & array_fetch(edge*, vert->inEdges, 1)->oldVal;            

        for(int i=2; i<array_n(vert->inEdges); i++)
        {
            edgIn = array_fetch(edge*, vert->inEdges, i);
            // bitValue0 = bitValue0 & edgIn->atLogic;
            if(approach == 0)
                bitValue0 = bitValue0 & edgIn->atLogic;
            else 
                bitValue0 = bitValue0 & edgIn->newVal;
            // else
            //     bitValue0 = bitValue0 & edgIn->oldVal;
        }        
    }    
    else if(strstr(logic, "xor") || strstr(logic, "XOR") )
    {
        // // vert->logicFunc = strdup("^");
        //xoring first two input
        // bitValue0 = array_fetch(edge*, vert->inEdges, 0)->atLogic ^ array_fetch(edge*, vert->inEdges, 1)->atLogic;
        if(approach == 0)
            bitValue0 = array_fetch(edge*, vert->inEdges, 0)->atLogic ^ array_fetch(edge*, vert->inEdges, 1)->atLogic;
        else 
            bitValue0 = array_fetch(edge*, vert->inEdges, 0)->newVal ^ array_fetch(edge*, vert->inEdges, 1)->newVal;
        // else
        //     bitValue0 = array_fetch(edge*, vert->inEdges, 0)->oldVal ^ array_fetch(edge*, vert->inEdges, 1)->oldVal;

        for(int i=2; i<array_n(vert->inEdges); i++)
        {
            edgIn = array_fetch(edge*, vert->inEdges, i);
            // bitValue0 = bitValue0 ^ edgIn->atLogic;
            if(approach == 0)
                bitValue0 = bitValue0 ^ edgIn->atLogic;
            else 
                bitValue0 = bitValue0 ^ edgIn->newVal;
            // else
            //     bitValue0 = bitValue0 ^ edgIn->oldVal;
        }        
    }
    else if(strstr(logic, "xnor") || strstr(logic, "XNOR") || strstr(logic, "xnr") )
    {
        // vert->logicFunc = strdup("^ and !");
        //xoring first two input
        // bitValue0 = array_fetch(edge*, vert->inEdges, 0)->atLogic ^ array_fetch(edge*, vert->inEdges, 1)->atLogic;
        if(approach == 0)
            bitValue0 = array_fetch(edge*, vert->inEdges, 0)->atLogic ^ array_fetch(edge*, vert->inEdges, 1)->atLogic;
        else 
            bitValue0 = array_fetch(edge*, vert->inEdges, 0)->newVal ^ array_fetch(edge*, vert->inEdges, 1)->newVal;
        // else
        //     bitValue0 = array_fetch(edge*, vert->inEdges, 0)->oldVal ^ array_fetch(edge*, vert->inEdges, 1)->oldVal;

        for(int i=2; i<array_n(vert->inEdges); i++)
        {
            edgIn = array_fetch(edge*, vert->inEdges, i);
            // bitValue0 = bitValue0 ^ edgIn->atLogic;
            if(approach == 0)
                bitValue0 = bitValue0 ^ edgIn->atLogic;
            else
                bitValue0 = bitValue0 ^ edgIn->newVal;
            // else
            //     bitValue0 = bitValue0 ^ edgIn->oldVal;
        }
        //inverting for XNOR function
        bitValue0 = !bitValue0; 
    }
    else if(strstr(logic, "nor") || strstr(logic, "NOR"))
    {
        // vert->logicFunc = strdup("or using | and !");
        //oring first two input
        // bitValue0 = array_fetch(edge*, vert->inEdges, 0)->atLogic | array_fetch(edge*, vert->inEdges, 1)->atLogic;

        if(approach == 0)
            bitValue0 = array_fetch(edge*, vert->inEdges, 0)->atLogic | array_fetch(edge*, vert->inEdges, 1)->atLogic;
        else 
            bitValue0 = array_fetch(edge*, vert->inEdges, 0)->newVal | array_fetch(edge*, vert->inEdges, 1)->newVal;
        // else
        //     bitValue0 = array_fetch(edge*, vert->inEdges, 0)->oldVal | array_fetch(edge*, vert->inEdges, 1)->oldVal;

        for(int i=2; i<array_n(vert->inEdges); i++)
        {
            edgIn = array_fetch(edge*, vert->inEdges, i);
            // bitValue0 = bitValue0 | edgIn->atLogic;
            if(approach == 0)
                bitValue0 = bitValue0 | edgIn->atLogic;
            else 
                bitValue0 = bitValue0 | edgIn->newVal;
            // else
            //     bitValue0 = bitValue0 | edgIn->oldVal;
        }
        //inverting for NOR function
        bitValue0 = !bitValue0; 
    }
    else if(strstr(logic, "or") || strstr(logic, "OR") )
    {
        // vert->logicFunc = strdup("or using | ");
        //oring first two input
        // bitValue0 = array_fetch(edge*, vert->inEdges, 0)->atLogic | array_fetch(edge*, vert->inEdges, 1)->atLogic;

        if(approach == 0)
            bitValue0 = array_fetch(edge*, vert->inEdges, 0)->atLogic | array_fetch(edge*, vert->inEdges, 1)->atLogic;
        else 
            bitValue0 = array_fetch(edge*, vert->inEdges, 0)->newVal | array_fetch(edge*, vert->inEdges, 1)->newVal;
        // else
        //     bitValue0 = array_fetch(edge*, vert->inEdges, 0)->oldVal | array_fetch(edge*, vert->inEdges, 1)->oldVal;

        for(int i=2; i<array_n(vert->inEdges); i++)
        {
            edgIn = array_fetch(edge*, vert->inEdges, i);
            // bitValue0 = bitValue0 | edgIn->atLogic;
            if(approach == 0)
                bitValue0 = bitValue0 | edgIn->atLogic;
            else
                bitValue0 = bitValue0 | edgIn->newVal;
            // else
            //     bitValue0 = bitValue0 | edgIn->oldVal;
        }        
    }        
    else if(strstr(logic, "dff") || strstr(logic, "DFF") || strstr(logic, "df"))
    {
        // vert->logicFunc = strdup("edgIn->atLogic");
        //check this for fb Edges + check data edge
        edgIn = array_fetch(edge*, vert->inEdges, 0);
        // bitValue0 = edgIn->atLogic;        
        if(approach == 0)
            bitValue0 = edgIn->atLogic;
        else 
            bitValue0 = edgIn->newVal;
        // else
        //     bitValue0 = edgIn->oldVal;
    }
    else if(strstr(logic, "INV")|| ((strlen(logic)==5) && strstr(logic, "inv_")))
    {
        // vert->logicFunc = strdup("! (edgIn->atLogic)");
        edgIn = array_fetch(edge*, vert->inEdges, 0);
        // bitValue0 = ! (edgIn->atLogic);
        if(approach == 0)
            bitValue0 = !(edgIn->atLogic);
        else 
            bitValue0 = !(edgIn->newVal);
        // else
        //     bitValue0 = !(edgIn->oldVal);
    }
    else if(strstr(logic, "aoai1112s"))
    {
        //"aoai1112s1"
        // Q = !(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)))
        // vert->logicFunc = strdup("!(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)))");
        bitValue0 = !(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)));
    }
    else if(strstr(logic, "oai1112s"))
    {
        // vert->logicFunc = strdup("!(DIN1 & DIN2 & DIN3 & (DIN4 | DIN5))");
        //"oai1112s1"
        // Q = !(DIN1 & DIN2 & DIN3 & (DIN4 | DIN5))
        bitValue0 = !(DIN1 & DIN2 & DIN3 & (DIN4 | DIN5));
    }
    else if(strstr(logic, "hadd1s") || strstr(logic, "ha_"))
    {
        // vert->logicFunc = strdup("AIN ^ BIN, AIN & BIN");
        /*
		OUTS = AIN ^ BIN;OUTC = AIN & BIN
		*/
        bitValue0 = AIN ^ BIN;
        bitValue1 = AIN & BIN;        

        cell_w_mult_op = 1;

        edge *OUTS, *OUTC;
        int out_2_flag = 0, outs_flag =-1;
        if(array_n(vert->outPorts) == 2)
        {
            out_2_flag = 1;
            if(strstr(array_fetch(char*, vert->outPorts, 0) , "OUTS"))
            {
                OUTS = array_fetch(edge*, vert->outEdges, 0);
                OUTC = array_fetch(edge*, vert->outEdges, 1);
            }
            else
            {
                OUTS = array_fetch(edge*, vert->outEdges, 1);
                OUTC = array_fetch(edge*, vert->outEdges, 0);
            }
        }
        else
        {
            if(strstr(array_fetch(char*, vert->outPorts, 0) , "OUTS"))
            {
                OUTS = array_fetch(edge*, vert->outEdges, 0);            
                outs_flag = 1;
            }
            else
            {
                OUTC = array_fetch(edge*, vert->outEdges, 0);
                outs_flag = 0;
            }
        }

        //update sum parameters
        if(out_2_flag == 1 || outs_flag == 1)
        {
            //updating combinational controallability
            if(approach == 0)
                OUTS->atLogic = bitValue0;
            else 
                OUTS->newVal = bitValue0;
                
        }
        //update carry parameters
        if(out_2_flag == 1 || outs_flag == 0)
        {
            //updating combinational controallability
            if(approach == 0)
                OUTC->atLogic = bitValue1;
            else 
                OUTC->newVal = bitValue1;
        } 

    }
    else if(strstr(logic, "aoai122s"))
    {
        // vert->logicFunc = strdup("!(DIN1 & ((DIN2 & DIN3) | (DIN4 & DIN5)))");
        //"aoai122s1"
        // Q = !(DIN1 & ((DIN2 & DIN3) | (DIN4 & DIN5)))
        bitValue0 = !(DIN1 & ((DIN2 & DIN3) | (DIN4 & DIN5)));
    }
    else if(strstr(logic, "mx21s") || strstr(logic, "dsmx") || strstr(logic, "mux2_") )
    {
        // vert->logicFunc = strdup("((DIN1 & !SIN) | (DIN2 & SIN))");
        //"mx21s1"
        // Q = (DIN1 & !SIN) | (DIN2 & SIN)
        //"dsmx"
        // Q = (DIN1 & (!CLK)) | (DIN2 & CLK)

        bitValue0 = ((DIN1 & !SIN) | (DIN2 & SIN));
        //bitValue0 = ((DIN1 & !CLK) | (DIN2 & CLK));
    }
    else if(strstr(logic, "mxi21s")  || strstr(logic, "mux2i_"))
    {
        // vert->logicFunc = strdup("!((DIN1 & !SIN) | (DIN2 & SIN))");
        //"mxi21s1"
        // Q = !((DIN1 & !SIN) | (DIN2 & SIN))
        bitValue0 = !((DIN1 & !SIN) | (DIN2 & SIN));
    }
    else if(strstr(logic, "mx41s") || strstr(logic, "mux4"))
    {
        // vert->logicFunc = strdup("((DIN1 & ~DIN2 & ~DIN3) | (DIN4 & ~DIN3 & DIN2) | (DIN5 & DIN3 & ~DIN2) | (DIN6 & DIN2 & DIN3))");
        /*
		strcpy(gate, "mx41s1");
		strcpy(derived, "((DIN1 & ~DIN2 & ~DIN3) | (DIN4 & ~DIN3 & DIN2) | (DIN5 & DIN3 & ~DIN2) | (DIN6 & DIN2 & DIN3))");
		return derived;
		*/
        bitValue0 = ((DIN1 & ~DIN2 & ~DIN3) | (DIN4 & ~DIN3 & DIN2) | (DIN5 & DIN3 & ~DIN2) | (DIN6 & DIN2 & DIN3));        
    }
    else if(strstr(logic, "mxi41s"))
    {
        // vert->logicFunc = strdup("!((DIN1 & !SIN0 & !SIN1) | (DIN2 & !SIN1 & SIN0) | (DIN3 & SIN1 & !SIN0) | (DIN4 & SIN1 & SIN0))");
        //"mxi41s1"
        // Q = !((DIN1 & !SIN0 & !SIN1) | (DIN2 & !SIN1 & SIN0) | (DIN3 & SIN1 & !SIN0) | (DIN4 & SIN1 & SIN0))

        bitValue0 = !((DIN1 & !SIN0 & !SIN1) | (DIN2 & !SIN1 & SIN0) | (DIN3 & SIN1 & !SIN0) | (DIN4 & SIN1 & SIN0));        
    }
    else if(strstr(logic, "nb1s") || 
            strstr(logic,"buf_") ||
            strstr(logic,"bufbuf_"))
    {
        // vert->logicFunc = strdup("edgIn->atLogic");
        //printf("************non-inverting buffer******\n");
        edgIn = array_fetch(edge*, vert->inEdges, 0);
        // bitValue0 = edgIn->atLogic;
        if(approach == 0)
            bitValue0 = (edgIn->atLogic);
        else 
            bitValue0 = (edgIn->newVal);
        // else
        //     bitValue0 = (edgIn->oldVal);
    }
    else if(strstr(logic, "ib1s") ||
            strstr(logic, "hi1s") ||
            strstr(logic, "i1s") ||
            strstr(logic,"bufinv_"))
    {
        // vert->logicFunc = strdup("! (edgIn->atLogic)");
        //**************** inverting buffer **************
        edgIn = array_fetch(edge*, vert->inEdges, 0);
        // bitValue0 = ! (edgIn->atLogic);
        if(approach == 0)
            bitValue0 = !(edgIn->atLogic);
        else 
            bitValue0 = !(edgIn->newVal);
        // else
        //     bitValue0 = !(edgIn->oldVal);
    }
    else if(strstr(logic, "aoai1112s"))
    {
        // vert->logicFunc = strdup("!(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)))");
        //"aoai1112s2"
        // Q = !(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)))

        bitValue0 = !(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)));
    }
    else if(strstr(logic, "oai21s") || strstr(logic, "o21ai"))
    {
        // vert->logicFunc = strdup("!((DIN1 | DIN2) & DIN3)");
        //"oai21s2"
        // Q = !((DIN1 | DIN2) & DIN3)

        bitValue0 = !((DIN1 | DIN2) & DIN3);
    }
    else if(strstr(logic, "aoi21s") || strstr(logic, "a21oi"))
    {
        // vert->logicFunc = strdup("!((DIN1 & DIN2) | DIN3)");
        //"aoi21s2"
        // Q = !((DIN1 & DIN2) | DIN3)

        bitValue0 = !((DIN1 & DIN2) | DIN3);
    }
    else if(strstr(logic, "aoi221s") || strstr(logic, "a221oi"))
    {
        // vert->logicFunc = strdup("!((DIN1 & DIN2) | (DIN3 & DIN4) | DIN5)");
        //"aoi221s1"
        // Q = !((DIN1 & DIN2) | (DIN3 & DIN4) | DIN5)

        bitValue0 = !((DIN1 & DIN2) | (DIN3 & DIN4) | DIN5);
    }
    else if(strstr(logic, "aoi13s"))
    {
        // vert->logicFunc = strdup("!(DIN1 | (DIN2 & DIN3 & DIN4))");
        //"aoi13s2"
        // Q = !(DIN1 | (DIN2 & DIN3 & DIN4))

        bitValue0 = !(DIN1 | (DIN2 & DIN3 & DIN4));
    }
    else if(strstr(logic, "oai13s"))
    {
        // vert->logicFunc = strdup("!(DIN1 & (DIN2 | DIN3 | DIN4))");
        //"oai13s1"
        // Q = !(DIN1 & (DIN2 | DIN3 | DIN4))

        bitValue0 = !(DIN1 & (DIN2 | DIN3 | DIN4));
    }
    else if(strstr(logic, "aoi22s") || strstr(logic, "a22oi"))
    {
        // vert->logicFunc = strdup("!((DIN1 & DIN2) | (DIN3 & DIN4))");
        //"aoi22s2"
        // Q = !((DIN1 & DIN2) | (DIN3 & DIN4))

        bitValue0 = !((DIN1 & DIN2) | (DIN3 & DIN4));        
    }
    else if(strstr(logic, "aoi42s"))
    {
        // vert->logicFunc = strdup("!((DIN1 & DIN2 & DIN3 & DIN4) | (DIN5 & DIN6))");
        //"aoi42s2"
        //Q = !((DIN1 & DIN2 & DIN3 & DIN4) | (DIN5 & DIN6))

        bitValue0 = !((DIN1 & DIN2 & DIN3 & DIN4) | (DIN5 & DIN6));        
    }
    else if(strstr(logic, "aoi222s") || strstr(logic, "a222oi"))
    {
        // vert->logicFunc = strdup("!((DIN1 & DIN2) | (DIN3 & DIN4) | (DIN5 & DIN6))");
        //"aoi222s1"
        // Q = !((DIN1 & DIN2) | (DIN3 & DIN4) | (DIN5 & DIN6))

        bitValue0 = !((DIN1 & DIN2) | (DIN3 & DIN4) | (DIN5 & DIN6));
    }
    else if(strstr(logic, "aoi2221s"))//updated on 3/24/20
    {
        // vert->logicFunc = strdup("!((DIN1 & DIN2) | (DIN3 & DIN4) | (DIN5 & DIN6) | DIN7)");
        //"aoi2221s1"
        // Q = !((DIN1 & DIN2) | (DIN3 & DIN4) | (DIN5 & DIN6) | DIN7)

        bitValue0 = !((DIN1 & DIN2) | (DIN3 & DIN4) | (DIN5 & DIN6) | DIN7);
    }

    else if(strstr(logic, "aoi123s"))
    {
        // vert->logicFunc = strdup("!(DIN1 | (DIN2 & DIN3) | (DIN4 & DIN5 & DIN6))");
        //"aoi123s1"
        // Q = !(DIN1 | (DIN2 & DIN3) | (DIN4 & DIN5 & DIN6))

        bitValue0 = !(DIN1 | (DIN2 & DIN3) | (DIN4 & DIN5 & DIN6));
    }
    else if(strstr(logic, "aoi211s") || strstr(logic, "a211oi"))
    {
        // vert->logicFunc = strdup("!((DIN1 & DIN2) | DIN3 | DIN4)");
        //"aoi211s1"
        // Q = !((DIN1 & DIN2) | DIN3 | DIN4)

        bitValue0 = !((DIN1 & DIN2) | DIN3 | DIN4);
    }
    else if(strstr(logic, "oai222s"))
    {
        // vert->logicFunc = strdup("!((DIN1 | DIN2) & (DIN3 | DIN4) & (DIN5 | DIN6))");
        //"oai222s1"
        // Q = !((DIN1 | DIN2) & (DIN3 | DIN4) & (DIN5 | DIN6))

        bitValue0 = !((DIN1 | DIN2) & (DIN3 | DIN4) & (DIN5 | DIN6));
    }
    else if(strstr(logic, "oai22s") || strstr(logic, "o22ai"))
    {
        // vert->logicFunc = strdup("!((DIN1 | DIN2) & (DIN3 | DIN4))");
        //"oai22s2"
        // Q = !((DIN1 | DIN2) & (DIN3 | DIN4))

        bitValue0 = !((DIN1 | DIN2) & (DIN3 | DIN4));
    }
    else if(strstr(logic, "oai2222s"))
    {
        // vert->logicFunc = strdup("!((DIN1 | DIN2) & (DIN3 | DIN4) & (DIN5 | DIN6) & (DIN7 | DIN8))");
        //"oai2222s3"
        // Q = !((DIN1 | DIN2) & (DIN3 | DIN4) & (DIN5 | DIN6) & (DIN7 | DIN8))

        bitValue0 = !((DIN1 | DIN2) & (DIN3 | DIN4) & (DIN5 | DIN6) & (DIN7 | DIN8));
    }
    else if(strstr(logic, "aoi4111s"))//updated on 3/24/20
    {
        // vert->logicFunc = strdup("!((DIN1 & DIN2 & DIN3 & DIN4) | DIN5 | DIN6 | DIN7)");
        bitValue0 = !((DIN1 & DIN2 & DIN3 & DIN4) | DIN5 | DIN6 | DIN7);
        
    }
    else if(strstr(logic, "oai32s") || strstr(logic, "o32ai"))
    {
        // vert->logicFunc = strdup("!((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5))");
        //"oai2222s3"
        // Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5))

        bitValue0 = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5));        
    }
    else if(strstr(logic, "aoi23s"))
    {
        // vert->logicFunc = strdup("!((DIN1 & DIN2) | (DIN3 & DIN4 & DIN5))");
        //"aoi23s1"
        //Q = !((DIN1 & DIN2) | (DIN3 & DIN4 & DIN5))

        bitValue0 = !((DIN1 & DIN2) | (DIN3 & DIN4 & DIN5));
    }
    else if(strstr(logic, "aoi33s"))
    {
        // vert->logicFunc = strdup("!((DIN1 & DIN2 & DIN3) | (DIN4 & DIN5 & DIN6))");
        //"aoi33s1"
        //Q = !((DIN1 & DIN2 & DIN3) | (DIN4 & DIN5 & DIN6))

        bitValue0 = !((DIN1 & DIN2 & DIN3) | (DIN4 & DIN5 & DIN6));        
    }
    else if(strstr(logic, "oai33s"))
    {
        // vert->logicFunc = strdup("!((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5 | DIN6))");
        //"oai33s1"
        //Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5 | DIN6))

        bitValue0 = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5 | DIN6));
    }
    else if(strstr(logic, "oai322s"))
    {
        // vert->logicFunc = strdup("!((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & (DIN6 | DIN7))");
        //"oai322s1"
        //Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & (DIN6 | DIN7))

        bitValue0 = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & (DIN6 | DIN7));        
    }
    else if(strstr(logic, "oai321s"))
    {
        // vert->logicFunc = strdup("!((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & DIN6)");
        //"oai321s1");
        //Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & DIN6)

        bitValue0 = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & DIN6);        
    }
    else if(strstr(logic, "oai1112s"))
    {
        // vert->logicFunc = strdup("!(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)))");
        //"oai1112s2"
        //strcpy(derived, "not (DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)))");

        bitValue0 = !(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)));
    }
    else if(strstr(logic, "oai221s") || strstr(logic, "o221ai") )
    {
        // vert->logicFunc = strdup("!((DIN1 | DIN2) & (DIN3 | DIN4) & DIN5)");
        //"oai221s2"
        // Q = !((DIN1 | DIN2) & (DIN3 | DIN4) & DIN5)

        bitValue0 = !((DIN1 | DIN2) & (DIN3 | DIN4) & DIN5);        
    }
    else if(strstr(logic, "oai13s"))
    {
        // vert->logicFunc = strdup("!(DIN1 & (DIN2 | DIN3 | DIN4))");
        //"oai13s2"
        // Q = !(DIN1 & (DIN2 | DIN3 | DIN4))

        bitValue0 = !(DIN1 & (DIN2 | DIN3 | DIN4));
    }
    else if(strstr(logic, "oai211s") || strstr(logic, "o211ai"))
    {
        // vert->logicFunc = strdup("!((DIN1 | DIN2) & DIN3 & DIN4)");
        //"oai211s2"
        // Q = !((DIN1 | DIN2) & DIN3 & DIN4)

        bitValue0 = !((DIN1 | DIN2) & DIN3 & DIN4);
    }
    else if(strstr(logic, "fadd1s")|| strstr(logic, "fa_"))
    {
        // vert->logicFunc = strdup("(AIN ^ BIN) ^ CIN, ((AIN & BIN) | (BIN & CIN) | (CIN & AIN))");
        // OUTS = (AIN ^ BIN) ^ CIN;OUTC = ((AIN & BIN) | (BIN & CIN) | (CIN & AIN))

        bitValue0 = (AIN ^ BIN) ^ CIN;
        bitValue1 = ((AIN & BIN) | (BIN & CIN) | (CIN & AIN));
        cell_w_mult_op = 1;    

        edge *OUTS, *OUTC;
        int out_2_flag = 0, outs_flag =-1;
        if(array_n(vert->outPorts) == 2)
        {
            out_2_flag = 1;
            if(strstr(array_fetch(char*, vert->outPorts, 0) , "OUTS"))
            {
                OUTS = array_fetch(edge*, vert->outEdges, 0);
                OUTC = array_fetch(edge*, vert->outEdges, 1);
            }
            else
            {
                OUTS = array_fetch(edge*, vert->outEdges, 1);
                OUTC = array_fetch(edge*, vert->outEdges, 0);
            }
        }
        else
        {
            if(strstr(array_fetch(char*, vert->outPorts, 0) , "OUTS"))
            {
                OUTS = array_fetch(edge*, vert->outEdges, 0);            
                outs_flag = 1;
            }
            else
            {
                OUTC = array_fetch(edge*, vert->outEdges, 0);
                outs_flag = 0;
            }
        }

        //update sum parameters
        if(out_2_flag == 1 || outs_flag == 1)
        {
            //updating combinational controallability
            if(approach == 0)
                OUTS->atLogic = bitValue0;
            else 
                OUTS->newVal = bitValue0;
                
        }
        //update carry parameters
        if(out_2_flag == 1 || outs_flag == 0)
        {
            //updating combinational controallability
            if(approach == 0)
                OUTC->atLogic = bitValue1;
            else 
                OUTC->newVal = bitValue1;
        } 

    }
    else if(strstr(logic, "oai24s"))
    {
        // vert->logicFunc = strdup("!((DIN1 | DIN2) & (DIN3 | DIN4 | DIN5 | DIN6))");
        //"oai24s1"
        // Q = !((DIN1 | DIN2) & (DIN3 | DIN4 | DIN5 | DIN6))

        bitValue0 = !((DIN1 | DIN2) & (DIN3 | DIN4 | DIN5 | DIN6));
    }
    // else if(strstr(logic, "hi1s") )
    // {
    //     edgIn = array_fetch(edge*, vert->inEdges, 0);
    //     bitValue0 = edgIn->atLogic;
    // }
    else{
        //strcpy(derived, "*** Not known ***");
        printf("---> %s\n", vert->type->name);
        printf("\n!!ERROR: logic not written*******\n");
        printf("vecSim %s\n", logic);
        exit(0);
    }
    
    if(array_n(vert->outEdges) == 1 && cell_w_mult_op == 0)
    {
        tempEdg = array_fetch(edge*, vert->outEdges, 0);
        // tempEdg->atLogic = bitValue0;
        if(approach == 0)
            tempEdg->atLogic = bitValue0;
        else 
            tempEdg->newVal = bitValue0;
        // else
        //     tempEdg->oldVal = bitValue0;
        
    }        
    // else if(array_n(vert->outEdges) == 2)
    // {
    //     //check for port name
    //     tempEdg = array_fetch(edge*, vert->outEdges, 0);
    //     // tempEdg->atLogic = bitValue0;

    //     if(approach == 0)
    //         tempEdg->atLogic = bitValue0;
    //     else 
    //         tempEdg->newVal = bitValue0;
    //     // else
    //     //     tempEdg->oldVal = bitValue0;

    //     tempEdg = array_fetch(edge*, vert->outEdges, 1);
    //     // tempEdg->atLogic = bitValue1;
    //     if(approach == 0)
    //         tempEdg->atLogic = bitValue1;
    //     else 
    //         tempEdg->newVal = bitValue1;
    //     // else
    //     //     tempEdg->oldVal = bitValue1;

    // }
    else{
        printf("!!ERROR: Number of output edges > 2, update logic\n");
        exit(0);
    }

    free(logic);
}

