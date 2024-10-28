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
/**
 * @file vipr_scoap.c
 * @author pravin.gaikwd@ufl.edu
 * @brief 
 * @version 0.1
 * @date 2021-07-25
 * 
 * @copyright Copyright (c) 2021 \n
 * MERS : Multiple Excitation of Rare Switching \n
 * Copyright: University of Florida, Gainesville, FL, USA \n
 * This document is copyright protected and property of the above mentioned entity. 
 * Any disclosure, alteration, re-distribution, or commercial use is NOT allowed without 
 * the consent of the developers and/or the entity mentioned above. \n
 * For copyright issues, contact information can be found in the following site.
 * Link: http://swarup.ece.ufl.edu/\n
 * 
 * Description:
 *
 * Combinational controllability features are obtain by traversing the graph from primary 
 * inputs to primary outputs and observability features are obtained by traversing from 
 * outputs to inputs. All sequnetial elements are considered as scan flip flops. Tool 
 * supports feature calculations for some of the LEDA/skywater cells.  
 * 
 */
#include "scoap.h"
//#include "createGraph.h"
extern int debug;

/**
The function evaluates controllability of and gate.
@param cc0_a: - controllability of 0 for input net 'a'
@param cc1_a: - controllability of 1 for input net 'a'
@param cc0_b: - controllability of 0 for input net 'b'
@param cc1_b: - controllability of 1 for input net 'b'
@param *cc0: - controllability of 0 for output net
@param *cc1: - controllability of 1 for output net
*/
void controllability_and(int cc0_a, int cc1_a, int cc0_b, int cc1_b, int *cc0, int *cc1){
    //*cc0 = (cc0_a < cc0_b ? (cc0_a+1 ) : (cc0_b+1));
    //*cc1 = cc1_a + cc1_b + 1;
    *cc0 = (cc0_a < cc0_b ? (cc0_a ) : (cc0_b));
    *cc1 = cc1_a + cc1_b;
}

/**
The function evaluates controllability of or gate.
@param cc0_a: - controllability of 0 for input net 'a'
@param cc1_a: - controllability of 1 for input net 'a'
@param cc0_b: - controllability of 0 for input net 'b'
@param cc1_b: - controllability of 1 for input net 'b'
@param *cc0: - controllability of 0 for output net
@param *cc1: - controllability of 1 for output net
*/
void controllability_or(int cc0_a, int cc1_a, int cc0_b, int cc1_b, int *cc0, int *cc1){
    //*cc0 = cc0_a + cc0_b + 1;
    //*cc1 = (cc1_a < cc1_b ? (cc1_a+1 ) : (cc1_b+1));
    *cc0 = cc0_a + cc0_b ;
    *cc1 = (cc1_a < cc1_b ? (cc1_a ) : (cc1_b));
}

/**
The function evaluates controllability of xor gate.
@param cc0_a: - controllability of 0 for input net 'a'
@param cc1_a: - controllability of 1 for input net 'a'
@param cc0_b: - controllability of 0 for input net 'b'
@param cc1_b: - controllability of 1 for input net 'b'
@param *cc0: - controllability of 0 for output net
@param *cc1: - controllability of 1 for output net
*/
void controllability_xor(int cc0_a, int cc1_a, int cc0_b, int cc1_b, int *cc0, int *cc1){
    int temp1 = ( (cc0_a + cc0_b) < (cc1_a + cc1_b) ? ((cc0_a + cc0_b) ) : ((cc1_a + cc1_b)));//updated on 09/26/2019
    *cc0 = ( temp1 < (cc1_a + cc0_b) ? (temp1) : ((cc1_a + cc0_b)));//updated on 09/26/2019
    *cc1 = cc0_a + cc1_b;	//updated on 09/26/2019
}

/**
The function evaluates controllability of xnor gate.
@param cc0_a: - controllability of 0 for input net 'a'
@param cc1_a: - controllability of 1 for input net 'a'
@param cc0_b: - controllability of 0 for input net 'b'
@param cc1_b: - controllability of 1 for input net 'b'
@param *cc0: - controllability of 0 for output net
@param *cc1: - controllability of 1 for output net
*/
void controllability_xnor(int cc0_a, int cc1_a, int cc0_b, int cc1_b, int *cc0, int *cc1){
    *cc0 = cc0_a + cc1_b;
    int temp1 = ( (cc1_a + cc0_b) < (cc0_a + cc0_b) ? ((cc1_a + cc0_b)) : (cc0_a + cc0_b));
    *cc1 = temp1 <  (cc1_a + cc1_b) ? temp1 : (cc1_a + cc1_b);

}

/**
The function evaluates controllability of nand gate.
@param cc0_a: - controllability of 0 for input net 'a'
@param cc1_a: - controllability of 1 for input net 'a'
@param cc0_b: - controllability of 0 for input net 'b'
@param cc1_b: - controllability of 1 for input net 'b'
@param *cc0: - controllability of 0 for output net
@param *cc1: - controllability of 1 for output net
*/
void controllability_nand(int cc0_a, int cc1_a, int cc0_b, int cc1_b, int *cc0, int *cc1){
    //*cc0 = cc1_a + cc1_b + 1;
    //*cc1 = (cc0_a < cc0_b ? (cc0_a+1 ) : (cc0_b+1));
    *cc0 = cc1_a + cc1_b ;
    *cc1 = (cc0_a < cc0_b ? (cc0_a ) : (cc0_b));
}

/**
The function evaluates controllability of nor gate.
@param cc0_a: - controllability of 0 for input net 'a'
@param cc1_a: - controllability of 1 for input net 'a'
@param cc0_b: - controllability of 0 for input net 'b'
@param cc1_b: - controllability of 1 for input net 'b'
@param *cc0: - controllability of 0 for output net
@param *cc1: - controllability of 1 for output net
*/
void controllability_nor(int cc0_a, int cc1_a, int cc0_b, int cc1_b, int *cc0, int *cc1){
    //*cc0 = (cc1_a < cc1_b ? (cc1_a+1 ) : (cc1_b+1));
    //*cc1 = cc0_a + cc0_b + 1;
    *cc0 = (cc1_a < cc1_b ? (cc1_a ) : (cc1_b));
    *cc1 = cc0_a + cc0_b ;
}

/**
The function evaluates controllability of not gate.
@param cc0_a: - controllability of 0 for input net 'a'
@param cc1_a: - controllability of 1 for input net 'a'
@param *cc0: - controllability of 0 for output net
@param *cc1: - controllability of 1 for output net
*/
void controllability_not(int cc0_a, int cc1_a, int *cc0, int *cc1){
    //*cc0 = cc1_a + 1;
    //*cc1 = cc0_a + 1;
    *cc0 = cc1_a ;
    *cc1 = cc0_a ;
}

/**
 * @brief Function to update combinational controllability.
 * 
 * @param G                     - CAST graph data structure.
 * @param index                 - Vertex index.
 * @param fbEdges               - Feddback edges. (Not used)
 * @param unknown_cc0           - Unknown cc0 count (Not used)
 * @param unknown_cc1           - Unknown cc1 count (Not used)
 * @param inputFileLocation     - Gate level netlist just for log.
 * 
<table>
<caption id="multi_row">Cells used for CC calculations</caption>
<tr><th>No  <th>Parameter                           <th>    Explaination
<tr><td rowspan="1"> 1. <td> "nor"|| "NOR"	                    <td> - NOR gate 
<tr><td rowspan="1"> 2. <td> "nnd"|| "NAND"|| "nand"	        <td> - NAND gate
<tr><td rowspan="1"> 3. <td> "and"|| "AND"	                    <td> - AND gate
<tr><td rowspan="1"> 4. <td> "xor"|| "XOR"	                    <td> - XOR gate
<tr><td rowspan="1"> 5. <td> "xnor"|| "XNOR"|| "xnr"	        <td> - XNOR gate 
<tr><td rowspan="1"> 6. <td> "or"|| "OR"	                    <td> - OR gate 
<tr><td rowspan="1"> 7. <td> "dff"|| 	                        <td> - dff (No use)
<tr><td rowspan="1"> 8. <td> "INV"|| "inv_"	                    <td> - INV gate
<tr><td rowspan="1"> 9. <td> "aoai1112s"	                    <td> - Q = !(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)))
<tr><td rowspan="1"> 10. <td> "oai1112s"	                    <td> - Q = !(DIN1 & DIN2 & DIN3 & (DIN4 | DIN5))
<tr><td rowspan="1"> 11. <td> "hadd1s"|| "ha_"	                <td> - OUTS = AIN ^ BIN; OUTC = AIN & BIN
<tr><td rowspan="1"> 12. <td> "aoai122s"	                    <td> - Q = !(DIN1 & ((DIN2 & DIN3) | (DIN4 & DIN5)))
<tr><td rowspan="1"> 13. <td> "mx21s"|| "dsmx"|| "mux2_"	    <td> - Q = (DIN1 & !SIN) | (DIN2 & SIN)
<tr><td rowspan="1"> 14. <td> "mxi21s"|| "mux2i_"	            <td> - Q = !((DIN1 & !SIN) | (DIN2 & SIN))
<tr><td rowspan="1"> 15. <td> "mx41s"|| "mux4"	                <td> - Q = ((DIN1 & ~DIN2 & ~DIN3) | (DIN4 & ~DIN3 & DIN2) | (DIN5 & DIN3 & ~DIN2) | (DIN6 & DIN2 & DIN3))
<tr><td rowspan="1"> 16. <td> "mxi41s"	                        <td> - Q = !((DIN1 & !SIN0 & !SIN1) | (DIN2 & !SIN1 & SIN0) | (DIN3 & SIN1 & !SIN0) | (DIN4 & SIN1 & SIN0))
<tr><td rowspan="1"> 17. <td> "nb1s"|| 	                        <td> - Buffer gate
<tr><td rowspan="1"> 18. <td> "ib1s"||	                        <td> - Inverting buffer
<tr><td rowspan="1"> 19. <td> "aoai1112s"	                    <td> R Q = !(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)))
<tr><td rowspan="1"> 20. <td> "oai21s"|| "o21ai"	            <td> - Q = !((DIN1 | DIN2) & DIN3)
<tr><td rowspan="1"> 21. <td> "aoi21s"|| "a21oi"	            <td> - Q = !((DIN1 & DIN2) | DIN3)
<tr><td rowspan="1"> 22. <td> "aoi221s"|| "a221oi"	            <td> - Q = !((DIN1 & DIN2) | (DIN3 & DIN4) | DIN5)
<tr><td rowspan="1"> 23. <td> "aoi13s"	                        <td> - Q = !(DIN1 | (DIN2 & DIN3 & DIN4))
<tr><td rowspan="1"> 24. <td> "oai13s"	                        <td> - Q = !(DIN1 & (DIN2 | DIN3 | DIN4))
<tr><td rowspan="1"> 25. <td> "aoi22s"|| "a22oi"	            <td> - Q = !((DIN1 & DIN2) | (DIN3 & DIN4))
<tr><td rowspan="1"> 26. <td> "aoi42s"	                        <td> - Q = !((DIN1 & DIN2 & DIN3 & DIN4) | (DIN5 & DIN6))
<tr><td rowspan="1"> 27. <td> "aoi4111s"	                    <td> - Q = !((DIN1 & DIN2 & DIN3 & DIN4) | DIN5 | DIN6 | DIN7)
<tr><td rowspan="1"> 28. <td> "aoi222s"|| "a222oi"	            <td> - Q = !((DIN1 & DIN2) | (DIN3 & DIN4) | (DIN5 & DIN6))
<tr><td rowspan="1"> 29. <td> "aoi2221s"	                    <td> - Q = !((DIN1 & DIN2) | (DIN3 & DIN4) | (DIN5 & DIN6) | DIN7)
<tr><td rowspan="1"> 30. <td> "aoi123s"	                        <td> - Q = !(DIN1 | (DIN2 & DIN3) | (DIN4 & DIN5 & DIN6))
<tr><td rowspan="1"> 31. <td> "aoi211s"|| "a211oi"	            <td> - Q = !((DIN1 & DIN2) | DIN3 | DIN4)
<tr><td rowspan="1"> 32. <td> "oai222s"	                        <td> - Q = !((DIN1 | DIN2) & (DIN3 | DIN4) & (DIN5 | DIN6))
<tr><td rowspan="1"> 33. <td> "oai22s"|| "o22ai"	            <td> - Q = !((DIN1 | DIN2) & (DIN3 | DIN4))
<tr><td rowspan="1"> 34. <td> "oai2222s"	                    <td> - Q = !((DIN1 | DIN2) & (DIN3 | DIN4) & (DIN5 | DIN6) & (DIN7 | DIN8))
<tr><td rowspan="1"> 35. <td> "oai32s"|| "o32ai"	            <td> - Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5))
<tr><td rowspan="1"> 36. <td> "aoi23s"	                        <td> - Q = !((DIN1 & DIN2) | (DIN3 & DIN4 & DIN5))
<tr><td rowspan="1"> 37. <td> "aoi33s"	                        <td> - Q = !((DIN1 & DIN2 & DIN3) | (DIN4 & DIN5 & DIN6))
<tr><td rowspan="1"> 38. <td> "oai33s"	                        <td> - Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5 | DIN6))
<tr><td rowspan="1"> 39. <td> "oai322s"	                        <td> - Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & (DIN6 | DIN7))
<tr><td rowspan="1"> 40. <td> "oai321s"	                        <td> - Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & DIN6)
<tr><td rowspan="1"> 41. <td> "oai1112s"	                    <td> R Q = !(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)))
<tr><td rowspan="1"> 42. <td> "oai221s"|| "o221ai"	            <td> - Q = !((DIN1 | DIN2) & (DIN3 | DIN4) & DIN5)
<tr><td rowspan="1"> 43. <td> "oai13s"	                        <td> R Q = !(DIN1 & (DIN2 | DIN3 | DIN4))
<tr><td rowspan="1"> 44. <td> "oai211s"|| "o211ai"	            <td> - Q = !((DIN1 | DIN2) & DIN3 & DIN4)
<tr><td rowspan="1"> 45. <td> "fadd1s"|| "fa_"	                <td> - OUTS = (AIN ^ BIN) ^ CIN;OUTC = ((AIN & BIN) | (BIN & CIN) | (CIN & AIN))
<tr><td rowspan="1"> 46. <td> "oai24s"	                        <td> - Q = !((DIN1 | DIN2) & (DIN3 | DIN4 | DIN5 | DIN6))
<tr><td rowspan="1"> 47. <td> "i1s"||	                        <td> - Inverting gate
</table>
 */
void update_controllability(graph* G, int index, array_t* fbEdges, int *unknown_cc0, int *unknown_cc1, char *inputFileLocation)
{
    array_t *combList, *dffNonScan, *vList;

    combList = G->combGates;
    dffNonScan = G->nonscanDFF;

    vList = array_join(combList, dffNonScan);               //to consider combinational and nonScan FF
    //vList = combList;                                     //to consider combinational gates

    vertex* vert = array_fetch(vertex*, vList, index);
    array_free(vList);
    char* logic=malloc(10000*sizeof(char));
    strcpy(logic, vert->type->name);
    edge *edgOut, *edgIn;
    int inputs,i, tempcc0=0, tempcc1=0, errorFlag=0;
    char *tempPort;

    edge *AIN, *BIN, *CIN, *DIN, *SIN, *SIN1, *SIN0, *OUTS, *OUTC, *CLRB, *SETB, *EB, *DIN1, *DIN2, *DIN3, *DIN4, *DIN5, *DIN6, *DIN7, *DIN8, *DIN9, *DIN10, *DIN11, *DIN12;
	int nInput = 0;			   
    for(int i=0; i<array_n(vert->inPorts); i++){
        tempPort = array_fetch(char*, vert->inPorts, i);
        if(strlen(tempPort) == 4 && strstr(tempPort, ".DIN") )
        {
            DIN = array_fetch(edge*, vert->inEdges, i);
        }
        else if(strstr(tempPort, "CIN"))
        {
            CIN = array_fetch(edge*, vert->inEdges, i);
        }
        else if(strstr(tempPort, "BIN"))
        {
            BIN = array_fetch(edge*, vert->inEdges, i);
        }
        else if(strstr(tempPort, "AIN"))
        {
            AIN = array_fetch(edge*, vert->inEdges, i);
        }
        else if(((strlen(tempPort)==2) && strstr(tempPort,".S")) || (strlen(tempPort) == 4 && strstr(tempPort, ".SIN") || strstr(tempPort, ".CLK")) && strlen(tempPort) == 4)
        {
            SIN = array_fetch(edge*, vert->inEdges, i);
        }
        else if(strstr(tempPort, "SIN0") || strstr(tempPort, "CLK0") || (strlen(tempPort) == 3 && strstr(tempPort,"S0")))
        {
            SIN0 = array_fetch(edge*, vert->inEdges, i);
        }
        else if(strstr(tempPort, "SIN1") || strstr(tempPort, "CLK1") || (strlen(tempPort) == 3 && strstr(tempPort,"S1")))
        {
            SIN1 = array_fetch(edge*, vert->inEdges, i);
        }
        else if(strstr(tempPort, "CLRB") || strstr(tempPort, "RESET_B"))
        {
            CLRB = array_fetch(edge*, vert->inEdges, i);
        }
        else if(strstr(tempPort, "SETB") || strstr(tempPort, "SET_B"))
        {
            SETB = array_fetch(edge*, vert->inEdges, i);
        }
        else if(strstr(tempPort, "EB") || strstr(tempPort, "DE"))
        {
            EB = array_fetch(edge*, vert->inEdges, i);
        }
        else if(nInput == 0)
        {
            DIN1 = array_fetch(edge*, vert->inEdges, i);
            nInput++;
        }
        else if(nInput == 1)
        {
            DIN2 = array_fetch(edge*, vert->inEdges, i);
            nInput++;
        }
        else if(nInput == 2)
        {
            DIN3 = array_fetch(edge*, vert->inEdges, i);
            nInput++;
        }
        else if(nInput == 3)
        {
            DIN4 = array_fetch(edge*, vert->inEdges, i);
            nInput++;
        }
        else if(nInput == 4)
        {
            DIN5 = array_fetch(edge*, vert->inEdges, i);
            nInput++;
        }
        else if(nInput == 5)
        {
            DIN6 = array_fetch(edge*, vert->inEdges, i);
            nInput++;
        }
        else if(nInput == 6)
        {
            DIN7 = array_fetch(edge*, vert->inEdges, i);
            nInput++;
        }
        else if(nInput == 7)
        {
            DIN8 = array_fetch(edge*, vert->inEdges, i);
            nInput++;
        }
        else if(nInput == 8)
        {
            DIN9 = array_fetch(edge*, vert->inEdges, i);
            nInput++;
        }
        else if(nInput == 9)
        {
            DIN10 = array_fetch(edge*, vert->inEdges, i);
            nInput++;
        }
        else{

            printf("************Update controllalbility prob function************: %s\n", tempPort);
            //exit(0);
        }
    }

    //check if all the input features valeus are available or not
    for(int i=0; i<array_n(vert->inEdges); i++)
    {
        if(array_fetch(edge*, vert->inEdges, i)->cc0 == INT_MAX || array_fetch(edge*, vert->inEdges, i)->cc1 == INT_MAX)
        {
            printf("INFO: Controllability(cc0) not known for : %s\n", array_fetch(edge*, vert->inEdges, i)->name);
            //update edge with controllability

            //check if previous vertex has all values
            vertex* checkV = array_fetch(edge*, vert->inEdges, i)->fromNode;
            printf("Previous vertex: %s\n", checkV->name);
            int checkV_flag = 0;
            for(int j=0; j<array_n(checkV->inEdges); j++)
            {
                //if value is not available assign 1
                printf("Prev vertex (cc0,cc1): (%d,%d)\n", array_fetch(edge*, checkV->inEdges, j)->cc0, array_fetch(edge*, checkV->inEdges, j)->cc1);
                if(array_fetch(edge*, checkV->inEdges, j)->cc0 == INT_MAX || array_fetch(edge*, checkV->inEdges, j)->cc1 == INT_MAX)
                {
                    printf("Updating controllability of previous %s with default (1,1).\n", checkV->name);
                    array_fetch(edge*, checkV->inEdges, j)->cc0 = 1;
                    array_fetch(edge*, checkV->inEdges, j)->cc1 = 1;
                    checkV_flag = 1;
                }
            }
            //if all values are available obtain outvalue
            if(!checkV_flag)
            {
                printf("Updating controllability of %s by calculations.\n", checkV->name);
                update_controllability(G, array_fetch(edge*, vert->inEdges, i)->fromNode->idx, fbEdges, &(*unknown_cc0), &(*unknown_cc1), inputFileLocation);
            }
            errorFlag = 1;
        }
    }

    if(errorFlag)
    {
        printf("ERROR controllability not known: %s\n", inputFileLocation);
    }

    inputs = find_first_digit(logic);

												
															
							
																											 
			
																						  
	 
	  
    if(strstr(logic, "nor") || strstr(logic, "NOR"))
    {
        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            tempcc0 = INT_MAX;
            edgOut = array_fetch(edge*, vert->outEdges, j);
            for(size_t k = 0; k < array_n(vert->inEdges); k ++){
                edgIn = array_fetch(edge*, vert->inEdges, k);
                tempcc1 += edgIn->cc0;
                if(edgIn->cc1 < tempcc0)
                    tempcc0 = edgIn->cc1;
            }
            edgOut->cc0 = tempcc0;//+1;
            edgOut->cc1 = tempcc1;//+1;
        }
    }
    else if(strstr(logic, "nnd") || strstr(logic, "NAND") || strstr(logic, "nand"))
    {
        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            tempcc1 = INT_MAX;
            edgOut = array_fetch(edge*, vert->outEdges, j);
            for(size_t k = 0; k < array_n(vert->inEdges); k ++){
                edgIn = array_fetch(edge*, vert->inEdges, k);
                tempcc0 += edgIn->cc1;
                if(edgIn->cc0 < tempcc1)
                    tempcc1 = edgIn->cc0;
            }
            edgOut->cc0 = tempcc0;//+1;
            edgOut->cc1 = tempcc1;//+1;
        }
    }
    else if(strstr(logic, "and") || strstr(logic, "AND"))
    {
        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            tempcc0 = INT_MAX;
            edgOut = array_fetch(edge*, vert->outEdges, j);
            for(size_t k = 0; k < array_n(vert->inEdges); k ++){
                edgIn = array_fetch(edge*, vert->inEdges, k);
                tempcc1 += edgIn->cc1;
                if(edgIn->cc0 < tempcc0)
                    tempcc0 = edgIn->cc0;
            }
            edgOut->cc0 = tempcc0;//+1;
            edgOut->cc1 = tempcc1;//+1;
        }
    }
    else if(strstr(logic, "xor") || strstr(logic, "XOR") )
    {
        if(array_n(vert->inEdges) == 2){
            int cc0_a, cc0_b, cc1_a, cc1_b;

            
            //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
            //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);

            int cc0_out, cc1_out;
            int cc0_DIN1 = DIN1->cc0;
            int cc1_DIN1 = DIN1->cc1;
            int cc0_DIN2 = DIN2->cc0;
            int cc1_DIN2 = DIN2->cc1;

            controllability_xor(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out, &cc1_out);

            for(size_t j = 0; j < array_n(vert->outEdges); j ++){
                edgOut = array_fetch(edge*, vert->outEdges, j);
                edgOut->cc0 = cc0_out;
                edgOut->cc1 = cc1_out;
            }
        }
        else if(array_n(vert->inEdges) == 3){
            int cc0_a, cc0_b, cc1_a, cc1_b;

            
            //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
            //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
            //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);

            int cc0_out, cc1_out;
            int cc0_DIN1 = DIN1->cc0;
            int cc1_DIN1 = DIN1->cc1;
            int cc0_DIN2 = DIN2->cc0;
            int cc1_DIN2 = DIN2->cc1;
            int cc0_DIN3 = DIN3->cc0;
            int cc1_DIN3 = DIN3->cc1;

            controllability_xor(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out, &cc1_out);
            controllability_xor(cc0_out, cc1_out, cc0_DIN3, cc1_DIN3, &cc0_out, &cc1_out);

            for(size_t j = 0; j < array_n(vert->outEdges); j ++){
                edgOut = array_fetch(edge*, vert->outEdges, j);
                edgOut->cc0 = cc0_out;
                edgOut->cc1 = cc1_out;
            }
        }
        else{
            printf("UPDATE_LOGIC\n");
        }
    }
    else if(strstr(logic, "xnor") || strstr(logic, "XNOR") || strstr(logic, "xnr"))
    {
        if(array_n(vert->inEdges) == 2){
            int cc0_a, cc0_b, cc1_a, cc1_b;

            
            //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
            //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);

            int cc0_out, cc1_out;
            int cc0_DIN1 = DIN1->cc0;
            int cc1_DIN1 = DIN1->cc1;
            int cc0_DIN2 = DIN2->cc0;
            int cc1_DIN2 = DIN2->cc1;

            controllability_xnor(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out, &cc1_out);
            for(size_t j = 0; j < array_n(vert->outEdges); j ++){
                edgOut = array_fetch(edge*, vert->outEdges, j);
                edgOut->cc0 = cc0_out;
                edgOut->cc1 = cc1_out;
            }
        }
        else if(array_n(vert->inEdges) == 3){
            int cc0_a, cc0_b, cc1_a, cc1_b;

            
            //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
            //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
            //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);

            int cc0_out, cc1_out;
            int cc0_DIN1 = DIN1->cc0;
            int cc1_DIN1 = DIN1->cc1;
            int cc0_DIN2 = DIN2->cc0;
            int cc1_DIN2 = DIN2->cc1;
            int cc0_DIN3 = DIN3->cc0;
            int cc1_DIN3 = DIN3->cc1;

            controllability_xnor(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out, &cc1_out);
            controllability_xnor(cc0_out, cc1_out, cc0_DIN3, cc1_DIN3, &cc0_out, &cc1_out);

            for(size_t j = 0; j < array_n(vert->outEdges); j ++){
                edgOut = array_fetch(edge*, vert->outEdges, j);
                edgOut->cc0 = cc0_out;
                edgOut->cc1 = cc1_out;
            }
        }
        else{
            printf("UPDATE_LOGIC\n");
        }
    }
    else if(strstr(logic, "or") || strstr(logic, "OR"))
    {
        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            tempcc1 = INT_MAX;
            edgOut = array_fetch(edge*, vert->outEdges, j);
            for(size_t k = 0; k < array_n(vert->inEdges); k ++){
                edgIn = array_fetch(edge*, vert->inEdges, k);
                tempcc0 += edgIn->cc0;
                if(edgIn->cc1 < tempcc1)
                    tempcc1 = edgIn->cc1;
            }
            edgOut->cc0 = tempcc0;//+1;
            edgOut->cc1 = tempcc1;//+1;
        }
    }
    else if(strstr(logic, "dff") || 
            strstr(logic, "DFF") || 
            strstr(logic, "df") || 
            strstr(logic, "lscs") || 
            strstr(logic, "lclks"))
    {
        for(size_t j = 0; j < array_n(vert->outEdges); j ++)
        {
            edgOut = array_fetch(edge*, vert->outEdges, j);
            if(array_n(fbEdges) != 0 )
            {
                for(int l=0; l<array_n(fbEdges); l++)
                {
                    if(!strstr(edgOut->name, array_fetch(edge*, fbEdges,l)->name)

                            )
                    {
                        if(strstr(array_fetch(char*, vert->outPorts,0), ".Q"))
                        {
                            edgOut->cc0 = DIN->cc0;
                            edgOut->cc1 = DIN->cc1;
                        }
                        else
                        {
                            edgOut->cc0 = DIN->cc1;
                            edgOut->cc1 = DIN->cc0;
                        }
                    }
                }
            }
            else
            {
                if(strstr(array_fetch(char*, vert->outPorts,0), ".Q"))
                {
                    edgOut->cc0 = DIN->cc0;
                    edgOut->cc1 = DIN->cc1;
                }
                else
                {
                    edgOut->cc0 = DIN->cc1;
                    edgOut->cc1 = DIN->cc0;
                }
            }
        }
    }
    else if(strstr(logic, "INV") || ((strlen(logic)==5) && strstr(logic, "inv_")))
    {
        edgIn = array_fetch(edge*, vert->inEdges, 0);
        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = edgIn->cc1;//+1;
            edgOut->cc1 = edgIn->cc0;//+1;
        }
    }
    else if(strstr(logic, "aoai1112s"))
    {
        //"aoai1112s1"
        // Q = !(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)))

        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);
        //DIN4 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[3]);
        //DIN5 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[4]);

        int cc0_out, cc1_out;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;

        controllability_and(cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5, &cc0_out, &cc1_out);
        controllability_or(cc0_DIN3, cc1_DIN3,cc0_out, cc1_out, &cc0_out, &cc1_out);
        controllability_and(cc0_DIN1, cc1_DIN1, cc0_out, cc1_out, &cc0_out, &cc1_out);
        controllability_and(cc0_DIN2, cc1_DIN2, cc0_out, cc1_out, &cc0_out, &cc1_out);
        controllability_not(cc0_out, cc1_out, &cc0_out, &cc1_out);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out;
            edgOut->cc1 = cc1_out;
        }
    }
    else if(strstr(logic, "oai1112s"))
    {
        //"oai1112s1"
        // Q = !(DIN1 & DIN2 & DIN3 & (DIN4 | DIN5))

        
        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);
        //DIN4 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[3]);
        //DIN5 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[4]);

        int cc0_out, cc1_out, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;

        controllability_or(cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5, &cc0_out, &cc1_out);
        controllability_and(cc0_out, cc1_out, cc0_DIN3, cc1_DIN3, &cc0_out, &cc1_out);
        controllability_and(cc0_out, cc1_out, cc0_DIN2, cc1_DIN2, &cc0_out, &cc1_out);
        controllability_and(cc0_out, cc1_out, cc0_DIN1, cc1_DIN1, &cc0_out, &cc1_out);
        controllability_not(cc0_out, cc1_out, &cc0_out, &cc1_out);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out;
            edgOut->cc1 = cc1_out;
        }
    }
    else if(strstr(logic, "hadd1s") || strstr(logic, "ha_"))
    {
        /*
        OUTS = AIN ^ BIN;OUTC = AIN & BIN
        */
        //edge *AIN, *BIN, *OUTC, *OUTS;
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
        int cc0_out, cc1_out;
        int cc0_AIN = AIN->cc0;
        int cc1_AIN = AIN->cc1;
        int cc0_BIN = BIN->cc0;
        int cc1_BIN = BIN->cc1;
        
        controllability_xor(cc0_AIN, cc1_AIN, cc0_BIN, cc1_BIN, &cc0_out, &cc1_out);
        if(out_2_flag == 1 || outs_flag == 1)
        {
            OUTS->cc0 = cc0_out;
            OUTS->cc1 = cc1_out;
        }
        controllability_and(cc0_AIN, cc1_AIN, cc0_BIN, cc1_BIN, &cc0_out, &cc1_out);
        if(out_2_flag == 1 || outs_flag == 0)
        {
            OUTC->cc0 = cc0_out;
            OUTC->cc1 = cc1_out;
        } 
    }
    else if(strstr(logic, "aoai122s"))
    {
        //"aoai122s1"
        // Q = !(DIN1 & ((DIN2 & DIN3) | (DIN4 & DIN5)))

        
        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);
        //DIN4 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[3]);
        //DIN5 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[4]);

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;

        controllability_and(cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_DIN2, cc1_DIN2, cc0_DIN3, cc1_DIN3, &cc0_out_2, &cc1_out_2);
        controllability_or(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN1, cc1_DIN1, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "mx21s") || strstr(logic, "dsmx") || strstr(logic, "mux2_") )
    {
        //"mx21s1"
        // Q = (DIN1 & !SIN) | (DIN2 & SIN)
        //"dsmx"
        // Q = (DIN1 & (!CLK)) | (DIN2 & CLK)

        
        //DIN1 = array_fetch(edge*, vert->inEdges, 0);
        //DIN2 = array_fetch(edge*, vert->inEdges, 1);
        //CLK = array_fetch(edge*, vert->inEdges, 2);

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_CLK = SIN->cc0;
        int cc1_CLK = SIN->cc1;

        // controllability_and(cc0_CLK, cc1_CLK, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        // controllability_not(cc0_CLK, cc1_CLK, &cc0_CLK, &cc1_CLK);
        // controllability_and(cc0_DIN1, cc1_DIN1, cc0_CLK, cc1_CLK, &cc0_out_2, &cc1_out_2);
        // controllability_or(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        // int temp_cc0 = cc0_out_1, temp_cc1 = cc1_out_1;

        //updated on 9/28/19
        controllability_not(cc0_CLK, cc1_CLK, &cc0_CLK, &cc1_CLK);
        controllability_or(cc0_CLK, cc1_CLK, cc0_DIN1, cc1_DIN1, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_CLK, cc1_CLK, &cc0_CLK, &cc1_CLK);
        controllability_or(cc0_DIN2, cc1_DIN2, cc0_CLK, cc1_CLK, &cc0_out_2, &cc1_out_2);
        controllability_and(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);

        // cc0_out_1 = cc0_out_1 > temp_cc0 ? cc0_out_1 : temp_cc0;
        // cc1_out_1 = cc1_out_1 > temp_cc1 ? cc1_out_1 : temp_cc1;

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "mxi21s") || strstr(logic, "mux2i_"))
    {
        //"mxi21s1"
        // Q = !((DIN1 & !SIN) | (DIN2 & SIN))

        
        //DIN1 = array_fetch(edge*, vert->inEdges, 0);
        //DIN2 = array_fetch(edge*, vert->inEdges, 1);
        

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_SIN = SIN->cc0;
        int cc1_SIN = SIN->cc1;


        // controllability_and(cc0_DIN2, cc1_DIN2, cc0_SIN, cc1_SIN, &cc0_out_1, &cc1_out_1);
        // controllability_not(cc0_SIN, cc1_SIN, &cc0_SIN, &cc1_SIN);
        // controllability_and(cc0_DIN1, cc1_DIN1, cc0_SIN, cc1_SIN, &cc0_out_2, &cc1_out_2);
        // controllability_or(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        // controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);
        // int temp_cc0 = cc0_out_1, temp_cc1 = cc1_out_1;

        controllability_not(cc0_SIN, cc1_SIN, &cc0_SIN, &cc1_SIN);
        controllability_or(cc0_DIN1, cc1_DIN1, cc0_SIN, cc1_SIN, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_SIN, cc1_SIN, &cc0_SIN, &cc1_SIN);
        controllability_or(cc0_DIN2, cc1_DIN2, cc0_SIN, cc1_SIN, &cc0_out_2, &cc1_out_2);
        controllability_and(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        // cc0_out_1 = cc0_out_1 > temp_cc0 ? cc0_out_1 : temp_cc0;
        // cc1_out_1 = cc1_out_1 > temp_cc1 ? cc1_out_1 : temp_cc1;

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "mx41s") || strstr(logic, "mux4"))
    {
        /*
        strcpy(gate, "mx41s1");
        strcpy(derived, "((DIN1 & ~DIN2 & ~DIN3) | (DIN4 & ~DIN3 & DIN2) | (DIN5 & DIN3 & ~DIN2) | (DIN6 & DIN2 & DIN3))");
        return derived;
        */
        
        //DIN1 = array_fetch(edge*, vert->inEdges, 0);
        //DIN2 = array_fetch(edge*, vert->inEdges, 1);
        //DIN3 = array_fetch(edge*, vert->inEdges, 2);
        //DIN4 = array_fetch(edge*, vert->inEdges, 3);
        

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, cc0_out_3, cc1_out_3, cc0_out_4, cc1_out_4;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_SIN0 = SIN0->cc0;
        int cc1_SIN0 = SIN0->cc1;
        int cc0_SIN1 = SIN1->cc0;
        int cc1_SIN1 = SIN1->cc1;
        int cc0_SIN0_not;
        int cc1_SIN0_not;
        int cc0_SIN1_not;
        int cc1_SIN1_not;

        controllability_not(cc0_SIN0, cc1_SIN0, &cc0_SIN0_not, &cc1_SIN0_not);
        controllability_not(cc0_SIN1, cc1_SIN1, &cc0_SIN1_not, &cc1_SIN1_not);

        controllability_and(cc0_DIN1, cc1_DIN1, cc0_SIN1_not, cc1_SIN1_not, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_out_1, cc1_out_1, cc0_SIN0_not, cc1_SIN0_not, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_DIN2, cc1_DIN2, cc0_SIN1_not, cc1_SIN1_not, &cc0_out_2, &cc1_out_2);
        controllability_and(cc0_out_2, cc1_out_2, cc0_SIN0, cc1_SIN0, &cc0_out_2, &cc1_out_2);
        controllability_and(cc0_DIN3, cc1_DIN3, cc0_SIN1, cc1_SIN1, &cc0_out_3, &cc1_out_3);
        controllability_and(cc0_out_3, cc1_out_3, cc0_SIN0_not, cc1_SIN0_not, &cc0_out_3, &cc1_out_3);
        controllability_and(cc0_DIN4, cc1_DIN4, cc0_SIN1, cc1_SIN1, &cc0_out_4, &cc1_out_4);
        controllability_and(cc0_out_4, cc1_out_4, cc0_SIN0, cc1_SIN0, &cc0_out_4, &cc1_out_4);

        controllability_or(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_out_3, cc1_out_3, cc0_out_4, cc1_out_4, &cc0_out_3, &cc1_out_3);
        controllability_or(cc0_out_1, cc1_out_1, cc0_out_3, cc1_out_3, &cc0_out_1, &cc1_out_1);
        //controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
        printf("******************Using mx41s1 controllability calculations ***********\n ");
    }
    else if(strstr(logic, "mxi41s"))
    {
        //"mxi41s1"
        // Q = !((DIN1 & !SIN0 & !SIN1) | (DIN2 & !SIN1 & SIN0) | (DIN3 & SIN1 & !SIN0) | (DIN4 & SIN1 & SIN0))

        
        //DIN1 = array_fetch(edge*, vert->inEdges, 0);
        //DIN2 = array_fetch(edge*, vert->inEdges, 1);
        //DIN3 = array_fetch(edge*, vert->inEdges, 2);
        //DIN4 = array_fetch(edge*, vert->inEdges, 3);
        

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, cc0_out_3, cc1_out_3, cc0_out_4, cc1_out_4;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_SIN0 = SIN0->cc0;
        int cc1_SIN0 = SIN0->cc1;
        int cc0_SIN1 = SIN1->cc0;
        int cc1_SIN1 = SIN1->cc1;
        int cc0_SIN0_not;
        int cc1_SIN0_not;
        int cc0_SIN1_not;
        int cc1_SIN1_not;

        controllability_not(cc0_SIN0, cc1_SIN0, &cc0_SIN0_not, &cc1_SIN0_not);
        controllability_not(cc0_SIN1, cc1_SIN1, &cc0_SIN1_not, &cc1_SIN1_not);

        controllability_and(cc0_DIN1, cc1_DIN1, cc0_SIN1_not, cc1_SIN1_not, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_out_1, cc1_out_1, cc0_SIN0_not, cc1_SIN0_not, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_DIN2, cc1_DIN2, cc0_SIN1_not, cc1_SIN1_not, &cc0_out_2, &cc1_out_2);
        controllability_and(cc0_out_2, cc1_out_2, cc0_SIN0, cc1_SIN0, &cc0_out_2, &cc1_out_2);
        controllability_and(cc0_DIN3, cc1_DIN3, cc0_SIN1, cc1_SIN1, &cc0_out_3, &cc1_out_3);
        controllability_and(cc0_out_3, cc1_out_3, cc0_SIN0_not, cc1_SIN0_not, &cc0_out_3, &cc1_out_3);
        controllability_and(cc0_DIN4, cc1_DIN4, cc0_SIN1, cc1_SIN1, &cc0_out_4, &cc1_out_4);
        controllability_and(cc0_out_4, cc1_out_4, cc0_SIN0, cc1_SIN0, &cc0_out_4, &cc1_out_4);

        controllability_or(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_out_3, cc1_out_3, cc0_out_4, cc1_out_4, &cc0_out_3, &cc1_out_3);
        controllability_or(cc0_out_1, cc1_out_1, cc0_out_3, cc1_out_3, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "nb1s") || 
            strstr(logic,"buf_") ||
            strstr(logic,"bufbuf_"))
    {
        //printf("************non-inverting buffer******\n");
        edgIn = array_fetch(edge*, vert->inEdges, 0);
        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = edgIn->cc0;
            edgOut->cc1 = edgIn->cc1;
        }
    }
    else if(strstr(logic, "ib1s") ||
            strstr(logic, "hi1s") ||
            strstr(logic,"bufinv_"))
            //(strlen(logic)==8) && strstr(logic,"bufinv_"))
    {
        //**************** inverting buffer **************
        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgIn = array_fetch(edge*, vert->inEdges, 0);
            edgOut->cc0 = edgIn->cc1;//+1;
            edgOut->cc1 = edgIn->cc0;//+1;
        }
    }
    else if(strstr(logic, "aoai1112s"))
    {
        //"aoai1112s2"
        // Q = !(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)))

        
        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);
        //DIN4 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[3]);
        //DIN5 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[4]);

        int cc0_out, cc1_out;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;

        controllability_and(cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5, &cc0_out, &cc1_out);
        controllability_or(cc0_out, cc1_out, cc0_DIN3, cc1_DIN3, &cc0_out, &cc1_out);
        controllability_and(cc0_out, cc1_out, cc0_DIN2, cc1_DIN2, &cc0_out, &cc1_out);
        controllability_and(cc0_out, cc1_out, cc0_DIN1, cc1_DIN1, &cc0_out, &cc1_out);
        controllability_not(cc0_out, cc1_out, &cc0_out, &cc1_out);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out;
            edgOut->cc1 = cc1_out;
        }
    }
    else if(strstr(logic, "oai21s") || strstr(logic, "o21ai"))
    {
        //"oai21s2"
        // Q = !((DIN1 | DIN2) & DIN3)

        
        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;

        controllability_or(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "aoi21s") || strstr(logic, "a21oi"))
    {
        //"aoi21s2"
        // Q = !((DIN1 & DIN2) | DIN3)

        
        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);
        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;

        controllability_and(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "aoi221s") || strstr(logic, "a221oi"))
    {
        //"aoi221s1"
        // Q = !((DIN1 & DIN2) | (DIN3 & DIN4) | DIN5)

        
        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);
        //DIN4 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[3]);
        //DIN5 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[4]);

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;

        controllability_and(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4, &cc0_out_2, &cc1_out_2);
        controllability_or(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN5, cc1_DIN5, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "aoi13s"))
    {
        //"aoi13s2"
        // Q = !(DIN1 | (DIN2 & DIN3 & DIN4))

        
        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);
        //DIN4 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[3]);

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;

        controllability_and(cc0_DIN2, cc1_DIN2, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN4, cc1_DIN4, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN1, cc1_DIN1, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "oai13s"))
    {
        //"oai13s1"
        // Q = !(DIN1 & (DIN2 | DIN3 | DIN4))

        
        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);
        //DIN4 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[3]);

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;

        controllability_or(cc0_DIN2, cc1_DIN2, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN4, cc1_DIN4, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN1, cc1_DIN1, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "aoi22s") || strstr(logic, "a22oi"))
    {
        //"aoi22s2"
        // Q = !((DIN1 & DIN2) | (DIN3 & DIN4))

        
        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);
        //DIN4 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[3]);

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;

        controllability_and(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4, &cc0_out_2, &cc1_out_2);
        controllability_or(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "aoi42s"))
    {
        //"aoi42s2"
        //Q = !((DIN1 & DIN2 & DIN3 & DIN4) | (DIN5 & DIN6))

													  
        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);
        //DIN4 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[3]);
        //DIN5 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[4]);
        //DIN6 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[5]);

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;
        int cc0_DIN6 = DIN6->cc0;
        int cc1_DIN6 = DIN6->cc1;

        controllability_and(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN4, cc1_DIN4, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_DIN5, cc1_DIN5, cc0_DIN6, cc1_DIN6, &cc0_out_2, &cc1_out_2);
        controllability_or(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "aoi4111s"))//updated on 3/24/20
    {
        //"aoi4111s1"
        // Q = !((DIN1 & DIN2 & DIN3 & DIN4) | DIN5 | DIN6 | DIN7)

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;
        int cc0_DIN6 = DIN6->cc0;
        int cc1_DIN6 = DIN6->cc1;
        int cc0_DIN7 = DIN7->cc0;
        int cc1_DIN7 = DIN7->cc1;

        controllability_and(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN4, cc1_DIN4, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN5, cc1_DIN5, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN6, cc1_DIN6, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN7, cc1_DIN7, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "aoi222s") || strstr(logic, "a222oi"))
    {
        //"aoi222s1"
        // Q = !((DIN1 & DIN2) | (DIN3 & DIN4) | (DIN5 & DIN6))

													  
        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);
        //DIN4 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[3]);
        //DIN5 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[4]);
        //DIN6 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[5]);

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, cc0_out_3, cc1_out_3;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;
        int cc0_DIN6 = DIN6->cc0;
        int cc1_DIN6 = DIN6->cc1;

        controllability_and(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4, &cc0_out_2, &cc1_out_2);
        controllability_and(cc0_DIN5, cc1_DIN5, cc0_DIN6, cc1_DIN6, &cc0_out_3, &cc1_out_3);
        controllability_or(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_out_1, cc1_out_1, cc0_out_3, cc1_out_3, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "aoi2221s"))//updated on 3/24/20
    {
        //"aoi2221s1"
        // Q = !((DIN1 & DIN2) | (DIN3 & DIN4) | (DIN5 & DIN6) | DIN7)

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, cc0_out_3, cc1_out_3;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;
        int cc0_DIN6 = DIN6->cc0;
        int cc1_DIN6 = DIN6->cc1;
        int cc0_DIN7 = DIN7->cc0;
        int cc1_DIN7 = DIN7->cc1;

        controllability_and(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4, &cc0_out_2, &cc1_out_2);
        controllability_and(cc0_DIN5, cc1_DIN5, cc0_DIN6, cc1_DIN6, &cc0_out_3, &cc1_out_3);
        controllability_or(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_out_1, cc1_out_1, cc0_out_3, cc1_out_3, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN7, cc1_DIN7, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "aoi123s"))
    {
        //"aoi123s1"
        // Q = !(DIN1 | (DIN2 & DIN3) | (DIN4 & DIN5 & DIN6))

													  
        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);
        //DIN4 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[3]);
        //DIN5 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[4]);
        //DIN6 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[5]);

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;
        int cc0_DIN6 = DIN6->cc0;
        int cc1_DIN6 = DIN6->cc1;

        controllability_and(cc0_DIN2, cc1_DIN2, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_DIN1, cc1_DIN1, cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5, &cc0_out_2, &cc1_out_2);
        controllability_and(cc0_DIN6, cc1_DIN6, cc0_out_2, cc1_out_2, &cc0_out_2, &cc1_out_2);
        controllability_or(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "aoi211s") || strstr(logic, "a211oi"))
    {
        //"aoi211s1"
        // Q = !((DIN1 & DIN2) | DIN3 | DIN4)

										
        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);
        //DIN4 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[3]);

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;

        controllability_and(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN4, cc1_DIN4, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "oai222s"))
    {
        //"oai222s1"
        // Q = !((DIN1 | DIN2) & (DIN3 | DIN4) & (DIN5 | DIN6))

													  
        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);
        //DIN4 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[3]);
        //DIN5 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[4]);
        //DIN6 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[5]);

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, cc0_out_3, cc1_out_3;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;
        int cc0_DIN6 = DIN6->cc0;
        int cc1_DIN6 = DIN6->cc1;

        controllability_or(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4, &cc0_out_2, &cc1_out_2);
        controllability_or(cc0_DIN5, cc1_DIN5, cc0_DIN6, cc1_DIN6, &cc0_out_3, &cc1_out_3);
        controllability_and(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_out_1, cc1_out_1, cc0_out_3, cc1_out_3, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "oai22s") || strstr(logic, "o22ai"))
    {
        //"oai22s2"
        // Q = !((DIN1 | DIN2) & (DIN3 | DIN4))

										
        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);
        //DIN4 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[3]);

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;

        controllability_or(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4, &cc0_out_2, &cc1_out_2);
        controllability_and(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "oai2222s"))
    {
        //"oai2222s3"
        // Q = !((DIN1 | DIN2) & (DIN3 | DIN4) & (DIN5 | DIN6) & (DIN7 | DIN8))

																	
        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);
        //DIN4 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[3]);
        //DIN5 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[4]);
        //DIN6 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[5]);
        //DIN7 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[6]);
        //DIN8 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[7]);

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, cc0_out_3, cc1_out_3, cc0_out_4, cc1_out_4;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;
        int cc0_DIN6 = DIN6->cc0;
        int cc1_DIN6 = DIN6->cc1;
        int cc0_DIN7 = DIN7->cc0;
        int cc1_DIN7 = DIN7->cc1;
        int cc0_DIN8 = DIN8->cc0;
        int cc1_DIN8 = DIN8->cc1;

        controllability_or(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4, &cc0_out_2, &cc1_out_2);
        controllability_or(cc0_DIN5, cc1_DIN5, cc0_DIN6, cc1_DIN6, &cc0_out_3, &cc1_out_3);
        controllability_or(cc0_DIN7, cc1_DIN7, cc0_DIN8, cc1_DIN8, &cc0_out_4, &cc1_out_4);
        controllability_and(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_out_3, cc1_out_3, cc0_out_4, cc1_out_4, &cc0_out_3, &cc1_out_3);
        controllability_and(cc0_out_1, cc1_out_1, cc0_out_3, cc1_out_3, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "oai32s") || strstr(logic, "o32ai"))
    {
        //"oai2222s3"
        // Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5))

											   
        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);
        //DIN4 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[3]);
        //DIN5 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[4]);

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, cc0_out_3, cc1_out_3, cc0_out_4, cc1_out_4;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;

        controllability_or(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5, &cc0_out_2, &cc1_out_2);
        controllability_and(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "aoi23s"))
    {
        //"aoi23s1"
        //Q = !((DIN1 & DIN2) | (DIN3 & DIN4 & DIN5))

											   
        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);
        //DIN4 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[3]);
        //DIN5 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[4]);

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, cc0_out_3, cc1_out_3, cc0_out_4, cc1_out_4;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;

        controllability_and(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4, &cc0_out_2, &cc1_out_2);
        controllability_and(cc0_out_2, cc1_out_2, cc0_DIN5, cc1_DIN5, &cc0_out_2, &cc1_out_2);
        controllability_or(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "aoi33s"))
    {
        //"aoi33s1"
        //Q = !((DIN1 & DIN2 & DIN3) | (DIN4 & DIN5 & DIN6))

													  
        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);
        //DIN4 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[3]);
        //DIN5 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[4]);
        //DIN6 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[5]);

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, cc0_out_3, cc1_out_3, cc0_out_4, cc1_out_4;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;
        int cc0_DIN6 = DIN6->cc0;
        int cc1_DIN6 = DIN6->cc1;

        controllability_and(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_DIN3, cc1_DIN3, cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5, &cc0_out_2, &cc1_out_2);
        controllability_and(cc0_DIN6, cc1_DIN6, cc0_out_2, cc1_out_2, &cc0_out_2, &cc1_out_2);
        controllability_or(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "oai33s"))
    {
        //"oai33s1"
        //Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5 | DIN6))

													  
        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);
        //DIN4 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[3]);
        //DIN5 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[4]);
        //DIN6 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[5]);

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, cc0_out_3, cc1_out_3, cc0_out_4, cc1_out_4;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;
        int cc0_DIN6 = DIN6->cc0;
        int cc1_DIN6 = DIN6->cc1;

        controllability_or(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_DIN3, cc1_DIN3, cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5, &cc0_out_2, &cc1_out_2);
        controllability_or(cc0_DIN6, cc1_DIN6, cc0_out_2, cc1_out_2, &cc0_out_2, &cc1_out_2);
        controllability_and(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "oai322s"))
    {
        //"oai322s1"
        //Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & (DIN6 | DIN7))

															 
        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);
        //DIN4 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[3]);
        //DIN5 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[4]);
        //DIN6 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[5]);
        //DIN7 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[6]);

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, cc0_out_3, cc1_out_3, cc0_out_4, cc1_out_4;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;
        int cc0_DIN6 = DIN6->cc0;
        int cc1_DIN6 = DIN6->cc1;
        int cc0_DIN7 = DIN7->cc0;
        int cc1_DIN7 = DIN7->cc1;

        controllability_or(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5, &cc0_out_2, &cc1_out_2);
        controllability_or(cc0_DIN6, cc1_DIN6, cc0_DIN7, cc1_DIN7, &cc0_out_3, &cc1_out_3);
        controllability_and(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_out_1, cc1_out_1, cc0_out_3, cc1_out_3, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "oai321s"))
    {
        //"oai321s1");
        //Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & DIN6)

													  
        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);
        //DIN4 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[3]);
        //DIN5 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[4]);
        //DIN6 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[5]);

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, cc0_out_3, cc1_out_3, cc0_out_4, cc1_out_4;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;
        int cc0_DIN6 = DIN6->cc0;
        int cc1_DIN6 = DIN6->cc1;

        controllability_or(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5, &cc0_out_2, &cc1_out_2);
        controllability_and(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN6, cc1_DIN6, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "oai1112s"))
    {
        //"oai1112s2"
        //strcpy(derived, "not (DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)))");

											   
        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);
        //DIN4 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[3]);
        //DIN5 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[4]);

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;

        controllability_and(cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_out_1, cc1_out_1 ,cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN1, cc1_DIN1, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "oai221s") || strstr(logic, "o221ai") )
    {
        //"oai221s2"
        // Q = !((DIN1 | DIN2) & (DIN3 | DIN4) & DIN5)

											   
        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);
        //DIN4 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[3]);
        //DIN5 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[4]);

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;

        controllability_or(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4, &cc0_out_2, &cc1_out_2);
        controllability_and(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN5, cc1_DIN5, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "oai13s"))
    {
        //"oai13s2"
        // Q = !(DIN1 & (DIN2 | DIN3 | DIN4))

										
        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);
        //DIN4 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[3]);

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;

        controllability_or(cc0_DIN2, cc1_DIN2, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN4, cc1_DIN4, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_DIN1, cc1_DIN1, cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "oai211s") || strstr(logic, "o211ai"))
    {
        //"oai211s2"
        // Q = !((DIN1 | DIN2) & DIN3 & DIN4)

										
        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);
        //DIN4 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[3]);

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;

        controllability_or(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN4, cc1_DIN4, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "fadd1s")|| strstr(logic, "fa_"))
    {
        // OUTS = (AIN ^ BIN) ^ CIN;OUTC = ((AIN & BIN) | (BIN & CIN) | (CIN & AIN))
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
        

        int cc0_out, cc1_out, cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_AIN = AIN->cc0;
        int cc1_AIN = AIN->cc1;
        int cc0_BIN = BIN->cc0;
        int cc1_BIN = BIN->cc1;
        int cc0_CIN = CIN->cc0;
        int cc1_CIN = CIN->cc1;
        
        controllability_xor(cc0_AIN, cc1_AIN, cc0_BIN, cc1_BIN, &cc0_out, &cc1_out);
        controllability_xor(cc0_out, cc1_out, cc0_CIN, cc1_CIN, &cc0_out, &cc1_out);
        if(out_2_flag == 1 || outs_flag == 1)
        {
            OUTS->cc0 = cc0_out;
            OUTS->cc1 = cc1_out;
        }

        controllability_and(cc0_AIN, cc1_AIN, cc0_BIN, cc1_BIN, &cc0_out, &cc1_out);
        controllability_and(cc0_BIN, cc1_BIN, cc0_CIN, cc1_CIN, &cc0_out_1, &cc1_out_1);
        controllability_and(cc0_CIN, cc1_CIN, cc0_AIN, cc1_AIN, &cc0_out_2, &cc1_out_2);

        controllability_or(cc0_out, cc1_out, cc0_out_1, cc1_out_1, &cc0_out, &cc1_out);
        controllability_or(cc0_out, cc1_out, cc0_out_2, cc1_out_2, &cc0_out, &cc1_out);

        if(out_2_flag == 1 || outs_flag == 0)
        {
            OUTC->cc0 = cc0_out;
            OUTC->cc1 = cc1_out;
        }        
    }
    else if(strstr(logic, "oai24s"))
    {
        //"oai24s1"
        // Q = !((DIN1 | DIN2) & (DIN3 | DIN4 | DIN5 | DIN6))

													  
        //DIN1 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[0]);
        //DIN2 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[1]);
        //DIN3 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[2]);
        //DIN4 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[3]);
        //DIN5 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[4]);
        //DIN6 = array_fetch(edge*, vert->inEdges, vert->sortInPorts[5]);

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;
        int cc0_DIN6 = DIN6->cc0;
        int cc1_DIN6 = DIN6->cc1;

        controllability_or(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        controllability_or(cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4, &cc0_out_2, &cc1_out_2);
        controllability_or(cc0_out_2, cc1_out_2, cc0_DIN5, cc1_DIN5, &cc0_out_2, &cc1_out_2);
        controllability_or(cc0_out_2, cc1_out_2, cc0_DIN6, cc1_DIN6, &cc0_out_2, &cc1_out_2);
        controllability_and(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        controllability_not(cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);

        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgOut->cc0 = cc0_out_1;
            edgOut->cc1 = cc1_out_1;
        }
    }
    else if(strstr(logic, "i1s") ||
            strstr(logic, "hi1s")||
            strstr(logic, "ib1s")
            )
    {
        for(size_t j = 0; j < array_n(vert->outEdges); j ++){
            edgOut = array_fetch(edge*, vert->outEdges, j);
            edgIn = array_fetch(edge*, vert->inEdges, 0);
            edgOut->cc0 = edgIn->cc1;//+1;
            edgOut->cc1 = edgIn->cc0;//+1;
        }
    }
    else{
        //strcpy(derived, "*** Not known ***");
        printf("---> %s\n", vert->type->name);
        printf("\n!!ERROR: logic not written*******\n");
        exit(0);
    }
    free(logic);

}

//function to find vertex from cycle index(only combinational and nonScan FF vertices are indexed)
vertex* findidxVertex(int index, graph *G){
    vertex* vert;
    //printf("--findV: %d\n", index);
    for(int i=0; i<array_n(G->vertexArr); i++){
        vert = array_fetch(vertex*, G->vertexArr, i);
        if(vert->idx == index)
            return vert;
    }
    return NULL;
}

/**
 * @brief To evaluate CC by traversing the graph.
 * 
 * @param G                     - CAST graph data structure.
 * @param inputFileLocation     - Flattened gate-level netlist.
 * @param verboseFlag           - Quiet/verbose flag.
 * @param scanFlag              - Scan flag set to 1.
 * 
 * @note
 * 
 * Function sorts the graph assuming all sequential elements are scan-FF 
 * and evaluates controllability for each cell.
 */
void evaluate_controllability_scan(graph* G, char *inputFileLocation, int verboseFlag, int scanFlag)
{
    int i, j, k, l, time = 0, topoCnt = 0, flag, comEdgFlag=0, tempCount;
    vertex* v, *u, *s, *flagv;
    array_t *orgvList = G->vertexArr;
    array_t *toVtxArr, *commfromVtxArr;
    int nNodes = array_n(orgvList), clrbFlag;

    int* d, *flagArr, *visited;
    int inpCnt = 0, unknown_cc0 = 0, unknown_cc1 = 0;
    array_t* sorted = array_alloc(vertex*, 1);
    array_t* unsorted = array_alloc(vertex*, 1);
    edge* edg, *tempEdge, *tempfbEdge, *origfbEdge;
    vertex* sVtx, *vtx, *fbVtx;
    vertex* toVtx;
    vertex* outVtx;
    array_t *outEdges, *vList, *combList, *dffList, *dffNonScan,
            *dffScan, *fbEdges, *fromV_list, *toV_list;

    fromV_list = array_alloc(vertex*, 1);
    toV_list = array_alloc(vertex*, 1);
    fbEdges = array_alloc(edge*, 1);

    combList = G->combGates;

    dffList = G->seqGates;

    dffNonScan = G->nonscanDFF;

    dffScan = G->scanDFF;

    nNodes = array_n(combList);

    d = (int*)malloc(sizeof(int)*nNodes);
    flagArr = (int*)malloc(sizeof(int)*nNodes);
    visited = (int*)malloc(sizeof(int)*nNodes);

    /* assign unique id to all vertices */
    vList = combList;
    nNodes = array_n(vList);
    for(i = 0; i < nNodes; i ++)     //update combinational index
    {
        visited[i] = FALSE;
        outVtx = array_fetch(vertex*, vList, i);
        outVtx->idx = i;
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
                    !((scanFlag == 1 && edg->fromNode!=NULL && strstr(edg->fromNode->type->name, "df")) || 
                     (scanFlag == 1 && edg->fromNode!=NULL && strstr(edg->fromNode->type->name, "sdf")) ||
                     (scanFlag == 1 && edg->fromNode!=NULL && strstr(edg->fromNode->type->name, "lscs")) ||
                     (scanFlag == 1 && edg->fromNode!=NULL && strstr(edg->fromNode->type->name, "lclks")))
                    )
            {
                inpCnt++;
            }
        }
        d[outVtx->idx] = inpCnt;
								   
        array_insert(vertex*, unsorted, outVtx->idx, outVtx);
    }

    for(i = 0; i < nNodes; i ++)
    {
        //printf("%d\n", i);
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
            {
                continue; //skip if false
            }

            sVtx = array_fetch(vertex*, unsorted, l); //grab vertex
            //printf("%d\t%s\n", l, sVtx->name);
            array_insert_last(vertex*, sorted, sVtx);
            unknown_cc0 = 0;	//to keep track of recursive call to update_controllability
            unknown_cc1 = 0;
            update_controllability(G, l, fbEdges, &unknown_cc0, &unknown_cc1, inputFileLocation);

			sVtx->topoIdx = ++topoCnt;
            outEdges = sVtx->outEdges;

			//to update inDegree count

            for(j = 0; j < array_n(outEdges); j ++)
            {
                edg = array_fetch(edge*, outEdges, j);
                toVtxArr = edg->toNodes;
                for(k = 0; k < array_n(toVtxArr); k++)
                {
                    toVtx = array_fetch(vertex*, toVtxArr, k);
                    if ((scanFlag == 1 && strstr(toVtx->type->name, "df")) || 
                        (scanFlag == 0 && strstr(toVtx->type->name, "sdf")) ||
                        (scanFlag == 1 && strstr(toVtx->type->name, "lscs")) ||
                        (scanFlag == 1 && strstr(toVtx->type->name, "lclks")) )
                        continue;
                    d[toVtx->idx] --;
																	 
                }
							   
            }
        }
		  
																	  
										   
																							 
																	 
		  
		  
											 
		
													   
																					 
		
		 
    }
    flagv = NULL;
    int errorFlag = 0;
    for(i = 0; i < array_n(vList); i ++)
    {
        s = array_fetch(vertex*, vList, i);
        if(d[s->idx])
        {
            flagv = s;
            printf("\nERROR: Violation of topological order for vertex %s. Number of untraversed input edges: %d\n", flagv->name, d[flagv->idx]);
            errorFlag = 1;
            isCombLoop = true;
        }
    }

    //if (flagv)
    //printf("\nERROR: Violation of topological order for vertex %s. Number of untraversed input edges: %d\n", flagv->name, d[flagv->idx]);
    if(errorFlag)
    {
															  
        printf("TopoSort issue: %s\n", inputFileLocation);
    }


    free(d);
    free(visited);
    free(flagArr);
    array_free(unsorted);
    array_free(sorted);
    array_free(fromV_list);
    array_free(toV_list);
    array_free(fbEdges);
																							 
}

/**
 * @brief Main function to extract CC features.
 * 
 * @param G                     - CAST graph data strcuture.
 * @param inputFileLocation     - Flattened gate-level netlist.
 * @param scanFlag              - Scan flag set to 1.
 * @param verboseFlag           - Quiet/verbose flag.
 * 
 * @note
 * 
 * The function updates controllability of primary input gates and 
 * evaluates feature value by calling evaluate_controllability_scan() helper function.
 * Initialisation of primary inputs to default values
 * 
 * -# Edges with edg->fromNode==NULL are assgined default cc values.
 * -# FF output edges are assigned with default values.
 * -# evaluate_controllability_scan() is called to extract features.
 * -# results are stored in controllability.csv file in 
 * ["Net_name", "cc0", "cc1", edg->origName] format.
 * 
 */
void controllability(graph* G, char *inputFileLocation, int scanFlag, int verboseFlag)
{
    vertex* vert;
    edge* edg;
    array_t *dffScan, *dffnonScan;

    char *opFileName = (char*)malloc(sizeof(char)*10000);
    strcpy(opFileName, inputFileLocation);
    strcat(opFileName, "/controllability.csv");

    FILE *outputFile;
    if(debug)
    {
        outputFile = fopen(opFileName, "w");
    }
    

    //update all the edges with cc0 and cc1 values
    for(size_t i=0; i<array_n(G->edgArr); i++){
        edg = array_fetch(edge*, G->edgArr, i);
        if(edg->fromNode == NULL){
            edg->cc0 = 1;
            edg->cc1 = 1;
        }
    }
    //updating all flip-flop values by considering all as primary input
    dffScan = G->scanDFF;
    dffnonScan= G->nonscanDFF;

    for(size_t i=0; i<array_n(dffScan); i++){
        vert = array_fetch(vertex*, dffScan, i);
        for(int j=0; j<array_n(vert->outEdges);j++){
            edg = array_fetch(edge*, vert->outEdges, j);
            edg->cc0 = 1;
            edg->cc1 = 1;
        }
    }
    if(scanFlag)
    {
        for(size_t i=0; i<array_n(dffnonScan); i++){
            vert = array_fetch(vertex*, dffnonScan, i);
            for(int j=0; j<array_n(vert->outEdges);j++){
                edg = array_fetch(edge*, vert->outEdges, j);
                edg->cc0 = 1;
                edg->cc1 = 1;
            }
        }
        evaluate_controllability_scan(G,inputFileLocation, verboseFlag, scanFlag);
    }
    //else
    //    evaluate_controllability(G,inputFileLocation);
    if(debug)
    {
        fprintf(outputFile, "%s,%s,%s\n", "Net_name", "cc0", "cc1");
        for(size_t i=0; i<array_n(G->edgArr); i++){
            edg = array_fetch(edge*, G->edgArr, i);
            fprintf(outputFile, "%s,%d,%d,%s\n", edg->name, edg->cc0, edg->cc1, edg->origName);
                                                                    
        }
        fclose(outputFile);
    }
    
    free(opFileName);
    
}

/**
The function evaluates combinational observability of not gate.
@param output_obs: - observability of output net 
@param *input: - observability of input net
*/
void observability_not(int output_obs, int *input){
    //*input = output_obs + 1;
    *input = output_obs;
    //printf("not------>%d\t\n", output_obs);
}

/**
The function evaluates combinational observability of and gate.
@param output_obs: - observability of output net 
@param *ip_a_obs: - observability of input net 'a'
@param *ip_b_obs: - observability of input net 'b'
@param cc0_a: - controllability of 0 for input net 'a'
@param cc1_a: - controllability of 1 for input net 'a'
@param cc0_b: - controllability of 0 for input net 'b'
@param cc1_b: - controllability of 1 for input net 'b'
*/
void observability_and(int output_obs, int *ip_a_obs, int *ip_b_obs, int cc0_a, int cc1_a, int cc0_b, int cc1_b){
    //*ip_a_obs = output_obs + cc1_b + 1;
    //*ip_b_obs = output_obs + cc1_a + 1;
    *ip_a_obs = output_obs + cc1_b;
    *ip_b_obs = output_obs + cc1_a;
}

/**
The function evaluates combinational observability of or gate.
@param output_obs: - observability of output net 
@param *ip_a_obs: - observability of input net 'a'
@param *ip_b_obs: - observability of input net 'b'
@param cc0_a: - controllability of 0 for input net 'a'
@param cc1_a: - controllability of 1 for input net 'a'
@param cc0_b: - controllability of 0 for input net 'b'
@param cc1_b: - controllability of 1 for input net 'b'
*/
void observability_or(int output_obs, int *ip_a_obs, int *ip_b_obs, int cc0_a, int cc1_a, int cc0_b, int cc1_b){
    //printf("------>%d\t%d\t%d\n", output_obs, cc0_a, cc0_b);
    //*ip_a_obs = output_obs + cc0_b + 1;
    //*ip_b_obs = output_obs + cc0_a + 1;
    *ip_a_obs = output_obs + cc0_b;
    *ip_b_obs = output_obs + cc0_a;
}

/**
The function evaluates combinational observability of xor gate.
@param output_obs: - observability of output net 
@param *ip_a_obs: - observability of input net 'a'
@param *ip_b_obs: - observability of input net 'b'
@param cc0_a: - controllability of 0 for input net 'a'
@param cc1_a: - controllability of 1 for input net 'a'
@param cc0_b: - controllability of 0 for input net 'b'
@param cc1_b: - controllability of 1 for input net 'b'
*/
void observability_xor(int output_obs, int *ip_a_obs, int *ip_b_obs, int cc0_a, int cc1_a, int cc0_b, int cc1_b){
    int mincc1 = (cc0_b < cc1_b ? cc0_b:cc1_b);//min in b
    int mincc0 = (cc0_a < cc1_a ? cc0_a:cc1_a);//min in a

    //edgIn0->cco = edgOut->cco + (edgIn0->cco < mincc1 ? edgIn0->cco : mincc1) + 1;
    //edgIn1->cco = edgOut->cco + (edgIn1->cco < mincc0 ? edgIn1->cco : mincc0) + 1;
    *ip_a_obs = output_obs + (*ip_a_obs < mincc0 ? *ip_a_obs : mincc0);
    *ip_b_obs = output_obs + (*ip_b_obs < mincc1 ? *ip_b_obs : mincc1);
}

/**
The function evaluates combinational observability of xnor gate.
@param output_obs: - observability of output net 
@param *ip_a_obs: - observability of input net 'a'
@param *ip_b_obs: - observability of input net 'b'
@param cc0_a: - controllability of 0 for input net 'a'
@param cc1_a: - controllability of 1 for input net 'a'
@param cc0_b: - controllability of 0 for input net 'b'
@param cc1_b: - controllability of 1 for input net 'b'
*/
void observability_xnor(int output_obs, int *ip_a_obs, int *ip_b_obs, int cc0_a, int cc1_a, int cc0_b, int cc1_b){
    int mincc1 = (cc0_b < cc1_b ? cc0_b:cc1_b);//min in b
    int mincc0 = (cc0_a < cc1_a ? cc0_a:cc1_a);//min in a
    //edgIn0->cco = edgOut->cco + (edgIn0->cco < mincc1 ? edgIn0->cco : mincc1) + 1;
    //edgIn1->cco = edgOut->cco + (edgIn1->cco < mincc0 ? edgIn1->cco : mincc0) + 1;
    *ip_a_obs = output_obs + (*ip_a_obs < mincc1 ? *ip_a_obs : mincc1);
    *ip_b_obs = output_obs + (*ip_b_obs < mincc0 ? *ip_b_obs : mincc0);
}

/**
The function updates controllability of input gate referenced by index.
@param G: - graph data structure
@param vert: - cell pointer
@param counter: - reference counter
@param *inputFileLocation: - input file with location
*/
/**
 * @brief 
 * 
 * @param vert                  - Vertex pointer
 * @param counter               - Some count (No idea)
 * @param inputFileLocation     - Flattened gate-level netlist.
 * 
<table>
<caption id="multi_row">Cells used for CC calculations</caption>
<tr><th>No  <th>Parameter                           <th>    Explaination
<tr><td rowspan="1"> 1. <td> "nor"|| "NOR"	                            <td> - NOR gate 
<tr><td rowspan="1"> 2. <td> "nnd"|| "NAND"|| "nand"	                <td> - NAND gate
<tr><td rowspan="1"> 3. <td> "and"|| "AND"	                            <td> - AND gate
<tr><td rowspan="1"> 4. <td> "xor"|| "XOR" || "xnor"|| "XNOR"|| "xnr" 	<td> - XOR/XNOR  gate
<tr><td rowspan="1"> 5. <td> "or"|| "OR"	                            <td> - OR gate 
<tr><td rowspan="1"> 6. <td> "dff"|| 	                                <td> - dff (No use)
<tr><td rowspan="1"> 7. <td> "INV"|| "inv_"	                            <td> - INV gate
<tr><td rowspan="1"> 8. <td> "aoai1112s"	                            <td> - Q = !(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)))
<tr><td rowspan="1"> 9. <td> "oai1112s"	                                <td> N Q = !(DIN1 & DIN2 & DIN3 & (DIN4 | DIN5))
<tr><td rowspan="1"> 10. <td> "hadd1s"|| "ha_"	                        <td> - OUTS = AIN ^ BIN; OUTC = AIN & BIN
<tr><td rowspan="1"> 11. <td> "aoai122s"	                            <td> - Q = !(DIN1 & ((DIN2 & DIN3) | (DIN4 & DIN5)))
<tr><td rowspan="1"> 12. <td> "mx21s"|| "dsmx"|| "mux2_"	            <td> - Q = (DIN1 & !SIN) | (DIN2 & SIN)
<tr><td rowspan="1"> 13. <td> "mxi21s"|| "mux2i_"	                    <td> - Q = !((DIN1 & !SIN) | (DIN2 & SIN))
<tr><td rowspan="1"> 14. <td> "mx41s"|| "mux4"	                        <td> - Q = ((DIN1 & ~DIN2 & ~DIN3) | (DIN4 & ~DIN3 & DIN2) | (DIN5 & DIN3 & ~DIN2) | (DIN6 & DIN2 & DIN3))
<tr><td rowspan="1"> 15. <td> "mxi41s"	                                <td> - Q = !((DIN1 & !SIN0 & !SIN1) | (DIN2 & !SIN1 & SIN0) | (DIN3 & SIN1 & !SIN0) | (DIN4 & SIN1 & SIN0))
<tr><td rowspan="1"> 16. <td> "nb1s"|| 	                                <td> - Buffer gate
<tr><td rowspan="1"> 17. <td> "ib1s"||	                                <td> - Inverting buffer
<tr><td rowspan="1"> 18. <td> "aoai1112s"	                            <td> R Q = !(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)))
<tr><td rowspan="1"> 19. <td> "oai21s"|| "o21ai"	                    <td> - Q = !((DIN1 | DIN2) & DIN3)
<tr><td rowspan="1"> 20. <td> "aoi21s"|| "a21oi"	                    <td> - Q = !((DIN1 & DIN2) | DIN3)
<tr><td rowspan="1"> 21. <td> "aoi221s"|| "a221oi"	                    <td> - Q = !((DIN1 & DIN2) | (DIN3 & DIN4) | DIN5)
<tr><td rowspan="1"> 22. <td> "aoi13s"	                                <td> - Q = !(DIN1 | (DIN2 & DIN3 & DIN4))
<tr><td rowspan="1"> 23. <td> "oai13s"	                                <td> - Q = !(DIN1 & (DIN2 | DIN3 | DIN4))
<tr><td rowspan="1"> 24. <td> "aoi22s"|| "a22oi"	                    <td> - Q = !((DIN1 & DIN2) | (DIN3 & DIN4))
<tr><td rowspan="1"> 25. <td> "aoi42s"	                                <td> - Q = !((DIN1 & DIN2 & DIN3 & DIN4) | (DIN5 & DIN6))
<tr><td rowspan="1"> 26. <td> "aoi4111s"	                            <td> - Q = !((DIN1 & DIN2 & DIN3 & DIN4) | DIN5 | DIN6 | DIN7)
<tr><td rowspan="1"> 27. <td> "aoi222s"|| "a222oi"	                    <td> - Q = !((DIN1 & DIN2) | (DIN3 & DIN4) | (DIN5 & DIN6))
<tr><td rowspan="1"> 28. <td> "aoi2221s"	                            <td> - Q = !((DIN1 & DIN2) | (DIN3 & DIN4) | (DIN5 & DIN6) | DIN7)
<tr><td rowspan="1"> 29. <td> "aoi123s"	                                <td> - Q = !(DIN1 | (DIN2 & DIN3) | (DIN4 & DIN5 & DIN6))
<tr><td rowspan="1"> 30. <td> "aoi211s"|| "a211oi"	                    <td> - Q = !((DIN1 & DIN2) | DIN3 | DIN4)
<tr><td rowspan="1"> 31. <td> "oai222s"	                                <td> - Q = !((DIN1 | DIN2) & (DIN3 | DIN4) & (DIN5 | DIN6))
<tr><td rowspan="1"> 32. <td> "oai22s"|| "o22ai"	                    <td> - Q = !((DIN1 | DIN2) & (DIN3 | DIN4))
<tr><td rowspan="1"> 33. <td> "oai2222s"	                            <td> - Q = !((DIN1 | DIN2) & (DIN3 | DIN4) & (DIN5 | DIN6) & (DIN7 | DIN8))
<tr><td rowspan="1"> 34. <td> "oai32s"|| "o32ai"	                    <td> - Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5))
<tr><td rowspan="1"> 35. <td> "aoi23s"	                                <td> - Q = !((DIN1 & DIN2) | (DIN3 & DIN4 & DIN5))
<tr><td rowspan="1"> 36. <td> "aoi33s"	                                <td> - Q = !((DIN1 & DIN2 & DIN3) | (DIN4 & DIN5 & DIN6))
<tr><td rowspan="1"> 37. <td> "oai33s"	                                <td> - Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5 | DIN6))
<tr><td rowspan="1"> 38. <td> "oai322s"	                                <td> - Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & (DIN6 | DIN7))
<tr><td rowspan="1"> 39. <td> "oai321s"	                                <td> - Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & DIN6)
<tr><td rowspan="1"> 40. <td> "oai1112s"	                            <td> R Q = !(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)))
<tr><td rowspan="1"> 41. <td> "oai221s"|| "o221ai"	                    <td> - Q = !((DIN1 | DIN2) & (DIN3 | DIN4) & DIN5)
<tr><td rowspan="1"> 42. <td> "oai13s"	                                <td> R Q = !(DIN1 & (DIN2 | DIN3 | DIN4))
<tr><td rowspan="1"> 43. <td> "oai211s"|| "o211ai"	                    <td> - Q = !((DIN1 | DIN2) & DIN3 & DIN4)
<tr><td rowspan="1"> 44. <td> "fadd1s"|| "fa_"	                        <td> - OUTS = (AIN ^ BIN) ^ CIN;OUTC = ((AIN & BIN) | (BIN & CIN) | (CIN & AIN))
<tr><td rowspan="1"> 45. <td> "oai24s"	                                <td> - Q = !((DIN1 | DIN2) & (DIN3 | DIN4 | DIN5 | DIN6))
<tr><td rowspan="1"> 46. <td> "i1s"||	                                <td> - Inverting gate
</table>

 */
void update_observability(vertex* vert, int *counter, char* inputFileLocation)
{
    char* logic=malloc(10000*sizeof(char));
    strcpy(logic, vert->type->name);
    edge *edgOut, *edgIn, *edg;
    char *tempPort;
    int errorFlag = 0;
    edge *AIN, *BIN, *CIN, *DIN, *SIN, *SIN0, *SIN1, *OUTS, *OUTC, *CLRB, *SETB, *EB, *DIN1, *DIN2, *DIN3, *DIN4, *DIN5, *DIN6, *DIN7, *DIN8, *DIN9, *DIN10, *DIN11, *DIN12;
	int nInput = 0;								
									
    for(int i=0; i<array_n(vert->inPorts); i++){
        edg = array_fetch(edge*, vert->inEdges, i);
        tempPort = array_fetch(char*, vert->inPorts, i);
        
        if(strlen(tempPort) == 4 && strstr(tempPort, ".DIN") )
        {
            DIN = array_fetch(edge*, vert->inEdges, i);
        }
        else if(strstr(tempPort, "CIN"))
        {
            CIN = array_fetch(edge*, vert->inEdges, i);
        }
        else if(strstr(tempPort, "BIN"))
        {
            BIN = array_fetch(edge*, vert->inEdges, i);
        }
        else if(strstr(tempPort, "AIN"))
        {
            AIN = array_fetch(edge*, vert->inEdges, i);
        }
        else if(((strlen(tempPort)==2) && strstr(tempPort,".S")) || (strlen(tempPort) == 4 && strstr(tempPort, ".SIN") || strstr(tempPort, ".CLK")) && strlen(tempPort) == 4)
        {
            SIN = array_fetch(edge*, vert->inEdges, i);
        }
        else if(strstr(tempPort, "SIN0") || strstr(tempPort, "CLK0") || (strlen(tempPort) == 3 && strstr(tempPort,"S0")))
        {
            SIN0 = array_fetch(edge*, vert->inEdges, i);
        }
        else if(strstr(tempPort, "SIN1") || strstr(tempPort, "CLK1") || (strlen(tempPort) == 3 && strstr(tempPort,"S1")))
        {
            SIN1 = array_fetch(edge*, vert->inEdges, i);
        }
        else if(strstr(tempPort, "CLRB") || strstr(tempPort, "RESET_B"))
        {
            CLRB = array_fetch(edge*, vert->inEdges, i);
        }
        else if(strstr(tempPort, "SETB") || strstr(tempPort, "SET_B"))
        {
            SETB = array_fetch(edge*, vert->inEdges, i);
        }
        else if(strstr(tempPort, "EB") || strstr(tempPort, "DE"))
        {
            EB = array_fetch(edge*, vert->inEdges, i);
        }
        else if(nInput == 0)
        {
            DIN1 = array_fetch(edge*, vert->inEdges, i);
            nInput++;
        }
        else if(nInput == 1)
        {
            DIN2 = array_fetch(edge*, vert->inEdges, i);
            nInput++;
        }
        else if(nInput == 2)
        {
            DIN3 = array_fetch(edge*, vert->inEdges, i);
            nInput++;
        }
        else if(nInput == 3)
        {
            DIN4 = array_fetch(edge*, vert->inEdges, i);
            nInput++;
        }
        else if(nInput == 4)
        {
            DIN5 = array_fetch(edge*, vert->inEdges, i);
            nInput++;
        }
        else if(nInput == 5)
        {
            DIN6 = array_fetch(edge*, vert->inEdges, i);
            nInput++;
        }
        else if(nInput == 6)
        {
            DIN7 = array_fetch(edge*, vert->inEdges, i);
            nInput++;
        }
        else if(nInput == 7)
        {
            DIN8 = array_fetch(edge*, vert->inEdges, i);
            nInput++;
        }
        else if(nInput == 8)
        {
            DIN9 = array_fetch(edge*, vert->inEdges, i);
            nInput++;
        }
        else if(nInput == 9)
        {
            DIN10 = array_fetch(edge*, vert->inEdges, i);
            nInput++;
													  
        }
        else{

            printf("************Update observability function************: %s\n", tempPort);
            exit(0);
        }
    }
					  
    int inputs,i, tempcc0=0, tempcc1=0, sumcc0 = 0, sumcc1 = 0;
    int mincc0 = INT_MAX, mincc1 = INT_MAX, mincc01 = INT_MAX;

    inputs = find_first_digit(logic);
    edgOut = array_fetch(edge*, vert->outEdges, 0);
    
    if(strstr(logic, "nor") || strstr(logic, "NOR"))
    {
        for(size_t j = 0; j < array_n(vert->inEdges); j ++){
            edgIn = array_fetch(edge*, vert->inEdges, j);
            sumcc0 += edgIn->cc0;
        }
        for(size_t i = 0; i < array_n(vert->inEdges); i ++){
            edgIn = array_fetch(edge*, vert->inEdges, i);
            //edgIn->cco = (edgIn->cco < (edgOut->cco + sumcc0 - edgIn->cc0 + 1) ? edgIn->cco : (edgOut->cco + sumcc0 - edgIn->cc0 + 1));
            edgIn->cco = (edgIn->cco < (edgOut->cco + sumcc0 - edgIn->cc0) ? edgIn->cco : (edgOut->cco + sumcc0 - edgIn->cc0));
        }
    }
    else if(strstr(logic, "nnd") || strstr(logic, "NAND") || strstr(logic, "nand"))
    {
        for(size_t j = 0; j < array_n(vert->inEdges); j ++){
            edgIn = array_fetch(edge*, vert->inEdges, j);
            sumcc1 += edgIn->cc1;
        }
        for(size_t i = 0; i < array_n(vert->inEdges); i ++){
            edgIn = array_fetch(edge*, vert->inEdges, i);
            //edgIn->cco = (edgIn->cco < (edgOut->cco + sumcc1 - edgIn->cc1 + 1) ? edgIn->cco : (edgOut->cco + sumcc1 - edgIn->cc1 + 1));
            edgIn->cco = (edgIn->cco < (edgOut->cco + sumcc1 - edgIn->cc1) ? edgIn->cco : (edgOut->cco + sumcc1 - edgIn->cc1));
        }
    }
    else if(strstr(logic, "and") || strstr(logic, "AND"))
    {
        for(size_t j = 0; j < array_n(vert->inEdges); j ++){
            edgIn = array_fetch(edge*, vert->inEdges, j);
            sumcc1 += edgIn->cc1;
        }
        for(size_t i = 0; i < array_n(vert->inEdges); i ++){
            edgIn = array_fetch(edge*, vert->inEdges, i);
            //edgIn->cco = (edgIn->cco < (edgOut->cco + sumcc1 - edgIn->cc1 + 1) ? edgIn->cco :(edgOut->cco + sumcc1 - edgIn->cc1 + 1));
            edgIn->cco = (edgIn->cco < (edgOut->cco + sumcc1 - edgIn->cc1) ? edgIn->cco :(edgOut->cco + sumcc1 - edgIn->cc1));
        }
    }
    else if(strstr(logic, "xor") || strstr(logic, "XOR") || strstr(logic, "xnor") || strstr(logic, "XNOR") || strstr(logic, "xnr"))
    {

        edge *edgIn0, *edgIn1, *edgIn2;
        edgIn0 = array_fetch(edge*, vert->inEdges, 0);
        edgIn1 = array_fetch(edge*, vert->inEdges, 1);

        int xor_internal_a = INT_MAX,xor_internal_b = INT_MAX, xor_internal_aa = INT_MAX, xor_internal_bb = INT_MAX;

        if(array_n(vert->inEdges) == 2)
        {
            observability_xnor(edgOut->cco, &(xor_internal_a), &(xor_internal_b), edgIn0->cc0, edgIn0->cc1, edgIn1->cc0, edgIn1->cc1);
            //observability_xnor(edgOut->cco, &(edgIn0->cco), &(edgIn1->cco), edgIn0->cc0, edgIn0->cc1, edgIn1->cc0, edgIn1->cc1);
            edgIn0->cco = (edgIn0->cco < xor_internal_a ? edgIn0->cco : xor_internal_a);
            edgIn1->cco = (edgIn1->cco < xor_internal_b ? edgIn1->cco : xor_internal_b);
        }
        else if(array_n(vert->inEdges) == 3)
        {
            edgIn2 = array_fetch(edge*, vert->inEdges, 2);
            int cc0_out, cc1_out;
            int cc0_DIN1 = edgIn0->cc0;
            int cc1_DIN1 = edgIn0->cc1;
            int cc0_DIN2 = edgIn1->cc0;
            int cc1_DIN2 = edgIn1->cc1;
            controllability_xnor(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out, &cc1_out);
            int internal_edg = INT_MAX;

            observability_xnor(edgOut->cco, &(xor_internal_aa), &(xor_internal_bb), cc0_out, cc1_out, edgIn2->cc0, edgIn2->cc1);
            observability_xnor(xor_internal_aa, &(xor_internal_a), &(xor_internal_b), edgIn0->cc0, edgIn0->cc1, edgIn1->cc0, edgIn1->cc1);

            edgIn0->cco = (edgIn0->cco < xor_internal_a ? edgIn0->cco : xor_internal_a);
            edgIn1->cco = (edgIn1->cco < xor_internal_b ? edgIn1->cco : xor_internal_b);
            edgIn2->cco = (edgIn2->cco < xor_internal_bb ? edgIn2->cco : xor_internal_bb);

            //edgIn0->cco = edgIn0->cco - 1;
            //edgIn1->cco = edgIn1->cco - 1;
        }
        else
            printf("********ERROR: Update XNOR logc********\n");
    }
    else if(strstr(logic, "or") || strstr(logic, "OR"))
    {
        for(size_t j = 0; j < array_n(vert->inEdges); j ++){
            edgIn = array_fetch(edge*, vert->inEdges, j);
            sumcc0 += edgIn->cc0;
        }
        for(size_t i = 0; i < array_n(vert->inEdges); i ++){
            edgIn = array_fetch(edge*, vert->inEdges, i);
            //edgIn->cco = (edgIn->cco < (edgOut->cco + sumcc0 - edgIn->cc0 + 1) ? edgIn->cco :(edgOut->cco + sumcc0 - edgIn->cc0 + 1));
            edgIn->cco = (edgIn->cco < (edgOut->cco + sumcc0 - edgIn->cc0) ? edgIn->cco :(edgOut->cco + sumcc0 - edgIn->cc0));
        }
    }
    else if(strstr(logic, "dff") || strstr(logic, "DFF") || strstr(logic, "df"))
    {
        /*
        for(size_t j = 0; j < array_n(vert->inEdges); j ++){
            edgIn = array_fetch(edge*, vert->inEdges, j);
            edgIn->cco = 0;
        }
        */
        int temp_cco=0;
        for(int j=0; j<array_n(vert->outPorts); j++)
        {
            if(!strstr(array_fetch(char*, vert->outPorts,j), ".QN") && !strstr(array_fetch(char*, vert->outPorts,j), ".Q_N"))
            {
                temp_cco = array_fetch(edge*, vert->outEdges,j)->cco;
                //printf("temp_cco: %d\n", temp_cco);
            }
        }

        for(size_t i = 0; i < array_n(vert->inEdges); i ++){
            edgIn = array_fetch(edge*, vert->inEdges, i);
            if(!strstr(array_fetch(char*, vert->inPorts,i), "CLK"))
            edgIn->cco = temp_cco + 2;
            else
            edgIn->cco = 0;
        }
    }
    else if(strstr(logic, "INV") || ((strlen(logic)==5) && strstr(logic, "inv_")))
    {
        edgIn = array_fetch(edge*, vert->inEdges, 0);
        //edgIn->cco = (edgIn->cco < (edgOut->cco + 1)?edgIn->cco:(edgOut->cco + 1));
        edgIn->cco = (edgIn->cco < (edgOut->cco)?edgIn->cco:(edgOut->cco));
    }
    else if(strstr(logic, "hadd1s") || strstr(logic, "ha_"))
    {
        /*
        OUTS = AIN ^ BIN;OUTC = AIN & cc0_BIN
        */
        //edge *AIN, *BIN, *OUTC, *OUTS;

        //AIN = array_fetch(edge*, vert->inEdges, 0);
        //BIN = array_fetch(edge*, vert->inEdges, 1);

        int cc0_out, cc1_out;
        int cc0_AIN = AIN->cc0;
        int cc1_AIN = AIN->cc1;
        int cc0_BIN = BIN->cc0;
        int cc1_BIN = BIN->cc1;
        int in_a = 0, in_b=0;

        controllability_xor(cc0_AIN, cc1_AIN, cc0_BIN, cc1_BIN, &cc0_out, &cc1_out);
        int xor1_cc0_out = cc0_out, xor1_cc1_out = cc1_out;
        controllability_and(cc0_AIN, cc1_AIN, cc0_BIN, cc1_BIN, &cc0_out, &cc1_out);
        int and1_cc0_out = cc0_out, and1_cc1_out = cc1_out;

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
            observability_xor(OUTS->cco, &in_a, &in_b, cc0_AIN, cc1_AIN, cc0_BIN, cc1_BIN);
            AIN->cco  = (AIN->cco < in_a ? AIN->cco : in_a);
            BIN->cco  = (BIN->cco < in_b ? BIN->cco : in_b);
            observability_and(OUTC->cco, &in_a, &in_b, cc0_AIN, cc1_AIN, cc0_BIN, cc1_BIN);
            AIN->cco  = (AIN->cco < in_a ? AIN->cco : in_a);
            BIN->cco  = (BIN->cco < in_b ? BIN->cco : in_b);
        }
        else
        {
            if(strstr(array_fetch(char*, vert->outPorts, 0) , "OUTS"))
            {
                OUTS = array_fetch(edge*, vert->outEdges, 0);            
                outs_flag = 1;
                observability_xor(OUTS->cco, &in_a, &in_b, cc0_AIN, cc1_AIN, cc0_BIN, cc1_BIN);
                AIN->cco  = (AIN->cco < in_a ? AIN->cco : in_a);
                BIN->cco  = (BIN->cco < in_b ? BIN->cco : in_b);
            }
            else
            {
                OUTC = array_fetch(edge*, vert->outEdges, 0);
                outs_flag = 0;
                observability_and(OUTC->cco, &in_a, &in_b, cc0_AIN, cc1_AIN, cc0_BIN, cc1_BIN);
                AIN->cco  = (AIN->cco < in_a ? AIN->cco : in_a);
                BIN->cco  = (BIN->cco < in_b ? BIN->cco : in_b);
            }
        }
    }
    else if(strstr(logic, "aoai122s"))//updated on 10/16/19
    {
        /*
        strcpy(gate, "aoai122s1");,
        strcpy(derived, "not (DIN1 & ((DIN2 & DIN3) | (DIN4 & DIN5)))");
        return derived;
        */

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;

        controllability_and(cc0_DIN2, cc1_DIN2, cc0_DIN3, cc1_DIN3, &cc0_out_2, &cc1_out_2);
        int and1_cc0_out = cc0_out_2, and1_cc1_out = cc1_out_2;
        controllability_and(cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5, &cc0_out_1, &cc1_out_1);
        int and2_cc0_out = cc0_out_1, and2_cc1_out = cc1_out_1;
        controllability_or(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        int or3_cc0_out = cc0_out_1, or3_cc1_out = cc1_out_1;
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN1, cc1_DIN1, &cc0_out_1, &cc1_out_1);
        int and4_cc0_out = cc0_out_1, and4_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_and(not_co, &in_a, &in_b, or3_cc0_out, or3_cc1_out, cc0_DIN1, cc1_DIN1);
        DIN1->cco  = (DIN1->cco < in_b ? DIN1->cco : in_b);
        observability_or(in_a, &in_a, &in_b, and1_cc0_out, and1_cc1_out, and2_cc0_out, and2_cc1_out);
        int temp_a = in_a, temp_b = in_b;
        observability_and(temp_b, &in_a, &in_b, cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5);
        DIN4->cco  = (DIN4->cco < in_a ? DIN4->cco : in_a);
        DIN5->cco  = (DIN5->cco < in_b ? DIN5->cco : in_b);
        observability_and(temp_a, &in_a, &in_b, cc0_DIN2, cc1_DIN2, cc0_DIN3, cc1_DIN3);
        DIN2->cco  = (DIN2->cco < in_a ? DIN2->cco : in_a);
        DIN3->cco  = (DIN3->cco < in_b ? DIN3->cco : in_b);
    }
    else if(strstr(logic, "mx21s") || strstr(logic, "dsmx")|| strstr(logic, "mux2_"))
    {
        //"mx21s1"
        // Q = (DIN1 & !SIN) | (DIN2 & SIN)
        //"dsmx"
        // Q = (DIN1 & (!CLK)) | (DIN2 & CLK)

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_SIN = SIN->cc0;
        int cc1_SIN = SIN->cc1;

        controllability_and(cc0_SIN, cc1_SIN, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        int and1_cc0_out = cc0_out_1, and1_cc1_out = cc1_out_1;
        controllability_not(cc0_SIN, cc1_SIN, &cc0_SIN, &cc1_SIN);
        int not2_cc0_out = cc0_SIN, not2_cc1_out = cc1_SIN;
        controllability_and(cc0_DIN1, cc1_DIN1, cc0_SIN, cc1_SIN, &cc0_out_2, &cc1_out_2);
        int and3_cc0_out = cc0_out_2, and3_cc1_out = cc1_out_2;
        controllability_or(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        int or4_cc0_out = cc0_out_1, or4_cc1_out = cc1_out_1;

        controllability_not(cc0_SIN, cc1_SIN, &cc0_SIN, &cc1_SIN);

        int not_co = 0, in_a = 0, in_b=0;
        observability_or(edgOut->cco, &in_a, &in_b, and3_cc0_out, and3_cc1_out, and1_cc0_out, and1_cc1_out);
        int temp_a = in_a, temp_b = in_b;
        observability_and(temp_b, &in_a, &in_b, cc0_DIN2, cc1_DIN2, cc0_SIN, cc1_SIN);
        DIN2->cco  = (DIN2->cco < in_a ? DIN2->cco : in_a);
        SIN->cco  = (SIN->cco < in_b ? SIN->cco : in_b);
        observability_and(temp_a, &in_a, &in_b, cc0_DIN1, cc1_DIN1, not2_cc0_out, not2_cc1_out);
        observability_not(in_b, &not_co);
        DIN1->cco  = (DIN1->cco < in_a ? DIN1->cco : in_a);
        SIN->cco  = (SIN->cco < not_co ? SIN->cco : not_co);
    }
    else if(strstr(logic, "mxi21s") || strstr(logic, "mux2i_"))
    {
        //"mxi21s1"
        // Q = !((DIN1 & !SIN) | (DIN2 & SIN))
        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_SIN = SIN->cc0;
        int cc1_SIN = SIN->cc1;


        controllability_and(cc0_DIN2, cc1_DIN2, cc0_SIN, cc1_SIN, &cc0_out_1, &cc1_out_1);
        int and1_cc0_out = cc0_out_1, and1_cc1_out = cc1_out_1;
        controllability_not(cc0_SIN, cc1_SIN, &cc0_SIN, &cc1_SIN);
        int not2_cc0_out = cc0_SIN, not2_cc1_out = cc1_SIN;
        controllability_and(cc0_DIN1, cc1_DIN1, cc0_SIN, cc1_SIN, &cc0_out_2, &cc1_out_2);
        int and3_cc0_out = cc0_out_2, and3_cc1_out = cc1_out_2;
        controllability_or(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        int or4_cc0_out = cc0_out_1, or4_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_or(not_co, &in_a, &in_b, and3_cc0_out, and3_cc1_out, and1_cc0_out, and1_cc1_out);
        int tempa = in_a, tempb = in_b;
        observability_and(tempa, &in_a, &in_b, cc0_DIN2, cc1_DIN2, cc0_SIN, cc1_SIN);
        DIN2->cco  = (DIN2->cco < in_a ? DIN2->cco : in_a);
        int temp = (SIN->cco < in_b ? SIN->cco : in_b);
        SIN->cco = SIN->cco < temp ? SIN->cco : temp;
        observability_and(tempb, &in_a, &in_b, cc0_DIN1, cc1_DIN1, not2_cc0_out, not2_cc1_out);
        observability_not(in_b, &not_co);
        DIN1->cco  = (DIN1->cco < in_a ? DIN1->cco : in_a);
        temp = (SIN->cco < not_co ? SIN->cco : not_co);
        SIN->cco = SIN->cco < temp ? SIN->cco : temp;
    }
    else if(strstr(logic, "mx41s") || strstr(logic, "mux4_"))
    {
        /*
        strcpy(gate, "mx41s1");
        strcpy(derived, "((DIN1 & ~DIN2 & ~DIN3) | (DIN4 & ~DIN3 & DIN2) | (DIN5 & DIN3 & ~DIN2) | (DIN6 & DIN2 & DIN3))");
        return derived;
        */
        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_SIN0 = SIN0->cc0;
        int cc1_SIN0 = SIN0->cc1;
        int cc0_SIN1 = SIN1->cc0;
        int cc1_SIN1 = SIN1->cc1;

        controllability_and(cc0_SIN1, cc1_SIN1, cc0_SIN0, cc1_SIN0, &cc0_out_1, &cc1_out_1);
        int and1_cc0_out = cc0_out_1, and1_cc1_out = cc1_out_1;
        controllability_and(cc0_DIN4, cc1_DIN4, and1_cc0_out, and1_cc1_out, &cc0_out_1, &cc1_out_1);
        int and2_cc0_out = cc0_out_1, and2_cc1_out = cc1_out_1;

        controllability_not(cc0_SIN0, cc1_SIN0, &cc0_SIN0, &cc1_SIN0);
        int not3_cc0_out = cc0_SIN0, not3_cc1_out = cc1_SIN0;

        controllability_and(cc0_SIN1, cc1_SIN1, cc0_SIN0, cc1_SIN0, &cc0_out_1, &cc1_out_1);
        int and4_cc0_out = cc0_out_1, and4_cc1_out = cc1_out_1;
        controllability_and(cc0_DIN3, cc1_DIN3, and4_cc0_out, and4_cc1_out, &cc0_out_1, &cc1_out_1);
        int and5_cc0_out = cc0_out_1, and5_cc1_out = cc1_out_1;

        controllability_not(cc0_SIN1, cc1_SIN1, &cc0_SIN1, &cc1_SIN1);
        int not6_cc0_out = cc0_SIN1, not6_cc1_out = cc1_SIN1;

        controllability_and(cc0_SIN1, cc1_SIN1, cc0_SIN0, cc1_SIN0, &cc0_out_1, &cc1_out_1);
        int and7_cc0_out = cc0_out_1, and7_cc1_out = cc1_out_1;
        controllability_and(cc0_DIN1, cc1_DIN1, and7_cc0_out, and7_cc1_out, &cc0_out_1, &cc1_out_1);
        int and8_cc0_out = cc0_out_1, and8_cc1_out = cc1_out_1;

        controllability_not(cc0_SIN0, cc1_SIN0, &cc0_SIN0, &cc1_SIN0);
        int not9_cc0_out = cc0_SIN0, not9_cc1_out = cc1_SIN0;

        controllability_and(cc0_SIN1, cc1_SIN1, cc0_SIN0, cc1_SIN0, &cc0_out_1, &cc1_out_1);
        int and10_cc0_out = cc0_out_1, and10_cc1_out = cc1_out_1;
        controllability_and(cc0_DIN2, cc1_DIN2, and10_cc0_out, and10_cc1_out, &cc0_out_1, &cc1_out_1);
        int and11_cc0_out = cc0_out_1, and11_cc1_out = cc1_out_1;

        controllability_or(and2_cc0_out, and2_cc1_out, and5_cc0_out, and5_cc1_out, &cc0_out_1, &cc1_out_1);
        int or12_cc0_out = cc0_out_1, or12_cc1_out = cc1_out_1;

        controllability_or(or12_cc0_out, or12_cc1_out, and8_cc0_out, and8_cc1_out, &cc0_out_1, &cc1_out_1);
        int or13_cc0_out = cc0_out_1, or13_cc1_out = cc1_out_1;

        controllability_or(or13_cc0_out, or13_cc1_out, and11_cc0_out, and11_cc1_out, &cc0_out_1, &cc1_out_1);
        int or14_cc0_out = cc0_out_1, or14_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        //observability_not(edgOut->cco, &not_co);

        //node 14
        observability_or(edgOut->cco, &in_a, &in_b, or13_cc0_out, or13_cc1_out, and11_cc0_out, and11_cc1_out);
        int tempa = in_a, tempb = in_b;

        //node 11
        observability_and(tempb, &in_a, &in_b, and10_cc0_out, and10_cc1_out, cc0_DIN2, cc1_DIN2);
        int tempa_0 = in_a, tempb_0 = in_b;

        DIN2->cco  = (DIN2->cco < tempb_0 ? DIN2->cco : tempb_0);

        //node 10
        observability_and(tempa_0, &in_a, &in_b, not9_cc0_out, not9_cc1_out, not6_cc0_out, not6_cc1_out);
        int tempa_1 = in_a, tempb_1 = in_b;

        //inverted at node 9
        observability_not(tempa_1, &tempa_1);

        //node 13
        observability_or(tempa, &in_a, &in_b, or12_cc0_out, or12_cc1_out, and8_cc0_out, and8_cc1_out);
        int tempa_2 = in_a;
        int tempb_2 = in_b;

        //node 8
        observability_and(tempb_1, &in_a, &in_b, and7_cc0_out, and7_cc1_out, cc0_DIN1, cc1_DIN1);
        int tempa_3 = in_a;
        int tempb_3 = in_b;

        DIN1->cco  = (DIN1->cco < in_b ? DIN1->cco : in_b);

        //node 7
        observability_and(tempa_3, &in_a, &in_b, not3_cc0_out, not3_cc1_out, not6_cc0_out, not6_cc1_out);
        int tempa_4 = in_a;
        int tempb_4 = in_b;

        tempa_4  = (tempa_4 < tempa_1 ? tempa_4 : tempa_1);
        tempb_4  = (tempb_4 < tempb_1 ? tempb_4 : tempb_1);

        //node 6
        observability_not(tempb_4, &tempb_4);

        //node 12
        observability_or(tempa_2, &in_a, &in_b, and2_cc0_out, and2_cc1_out, and5_cc0_out, and5_cc1_out);
        int tempa_5 = in_a;
        int tempb_5 = in_b;

        //node 5
        observability_and(tempb_5, &in_a, &in_b, and4_cc0_out, and4_cc1_out, cc0_DIN3, cc1_DIN3);
        int tempa_6 = in_a;
        int tempb_6 = in_b;

        DIN3->cco  = (DIN3->cco < in_b ? DIN3->cco : in_b);

        //node 4
        observability_and(tempa_6, &in_a, &in_b, cc0_SIN0, cc1_SIN0, not3_cc0_out, not3_cc1_out);
        int tempa_7 = in_a;
        int tempb_7 = in_b;

        tempa_7  = (tempa_7 < tempb_4 ? tempa_7 : tempb_4);
        SIN1->cco  = (SIN1->cco < tempa_7 ? SIN1->cco : tempa_7);

        tempb_7  = (tempb_7 < tempa_4 ? tempb_7 : tempa_4);

        //node 3
        observability_not(tempb_7, &tempb_7);

        //node 2
        observability_and(tempa_5, &in_a, &in_b, cc0_DIN4, cc1_DIN4, and1_cc0_out, and1_cc1_out);
        int tempa_8 = in_a;
        int tempb_8 = in_b;

        DIN4->cco  = (DIN4->cco < in_a ? DIN4->cco : in_a);

        //node 1
        observability_and(tempb_8, &in_a, &in_b, cc0_SIN1, cc1_SIN1, cc0_SIN0, cc1_SIN0);
        int tempa_9 = in_a;
        int tempb_9 = in_b;

        tempb_9  = (tempb_9 < tempb_7 ? tempb_9 : tempb_7);
        SIN0->cco = tempb_9;

        tempa_9  = (tempa_9 < tempb_4 ? tempa_9 : tempb_4);

        SIN1->cco  = (SIN1->cco < tempa_9 ? SIN1->cco : tempa_9);

        //printf("******************update mx41s1 observability calculations ***********\n ");
    }
    else if(strstr(logic, "mxi41s"))
    {
        /*update_obser
        strcpy(gate, "mxi41s1");
        strcpy(derived, "not ((DIN1 & ~DIN2 & ~DIN3) | (DIN4 & ~DIN3 & DIN2) | (DIN5 & DIN3 & ~DIN2) | (DIN6 & DIN2 & DIN3))");
        return derived;
        */
        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_SIN0 = SIN0->cc0;
        int cc1_SIN0 = SIN0->cc1;
        int cc0_SIN1 = SIN1->cc0;
        int cc1_SIN1 = SIN1->cc1;

        controllability_and(cc0_SIN1, cc1_SIN1, cc0_SIN0, cc1_SIN0, &cc0_out_1, &cc1_out_1);
        int and1_cc0_out = cc0_out_1, and1_cc1_out = cc1_out_1;
        controllability_and(cc0_DIN4, cc1_DIN4, and1_cc0_out, and1_cc1_out, &cc0_out_1, &cc1_out_1);
        int and2_cc0_out = cc0_out_1, and2_cc1_out = cc1_out_1;

        controllability_not(cc0_SIN0, cc1_SIN0, &cc0_SIN0, &cc1_SIN0);
        int not3_cc0_out = cc0_SIN0, not3_cc1_out = cc1_SIN0;

        controllability_and(cc0_SIN1, cc1_SIN1, cc0_SIN0, cc1_SIN0, &cc0_out_1, &cc1_out_1);
        int and4_cc0_out = cc0_out_1, and4_cc1_out = cc1_out_1;
        controllability_and(cc0_DIN3, cc1_DIN3, and4_cc0_out, and4_cc1_out, &cc0_out_1, &cc1_out_1);
        int and5_cc0_out = cc0_out_1, and5_cc1_out = cc1_out_1;

        controllability_not(cc0_SIN1, cc1_SIN1, &cc0_SIN1, &cc1_SIN1);
        int not6_cc0_out = cc0_SIN1, not6_cc1_out = cc1_SIN1;

        controllability_and(cc0_SIN1, cc1_SIN1, cc0_SIN0, cc1_SIN0, &cc0_out_1, &cc1_out_1);
        int and7_cc0_out = cc0_out_1, and7_cc1_out = cc1_out_1;
        controllability_and(cc0_DIN1, cc1_DIN1, and7_cc0_out, and7_cc1_out, &cc0_out_1, &cc1_out_1);
        int and8_cc0_out = cc0_out_1, and8_cc1_out = cc1_out_1;

        controllability_not(cc0_SIN0, cc1_SIN0, &cc0_SIN0, &cc1_SIN0);
        int not9_cc0_out = cc0_SIN0, not9_cc1_out = cc1_SIN0;

        controllability_and(cc0_SIN1, cc1_SIN1, cc0_SIN0, cc1_SIN0, &cc0_out_1, &cc1_out_1);
        int and10_cc0_out = cc0_out_1, and10_cc1_out = cc1_out_1;
        controllability_and(cc0_DIN2, cc1_DIN2, and10_cc0_out, and10_cc1_out, &cc0_out_1, &cc1_out_1);
        int and11_cc0_out = cc0_out_1, and11_cc1_out = cc1_out_1;

        controllability_or(and2_cc0_out, and2_cc1_out, and5_cc0_out, and5_cc1_out, &cc0_out_1, &cc1_out_1);
        int or12_cc0_out = cc0_out_1, or12_cc1_out = cc1_out_1;

        controllability_or(or12_cc0_out, or12_cc1_out, and8_cc0_out, and8_cc1_out, &cc0_out_1, &cc1_out_1);
        int or13_cc0_out = cc0_out_1, or13_cc1_out = cc1_out_1;

        controllability_or(or13_cc0_out, or13_cc1_out, and11_cc0_out, and11_cc1_out, &cc0_out_1, &cc1_out_1);
        int or14_cc0_out = cc0_out_1, or14_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);

        //node 14
        observability_or(not_co, &in_a, &in_b, or13_cc0_out, or13_cc1_out, and11_cc0_out, and11_cc1_out);
        int tempa = in_a, tempb = in_b;

        //node 11
        observability_and(tempb, &in_a, &in_b, and10_cc0_out, and10_cc1_out, cc0_DIN2, cc1_DIN2);
        int tempa_0 = in_a, tempb_0 = in_b;

        DIN2->cco  = (DIN2->cco < tempb_0 ? DIN2->cco : tempb_0);

        //node 10
        observability_and(tempa_0, &in_a, &in_b, not9_cc0_out, not9_cc1_out, not6_cc0_out, not6_cc1_out);
        int tempa_1 = in_a, tempb_1 = in_b;

        //inverted at node 9
        observability_not(tempa_1, &tempa_1);

        //node 13
        observability_or(tempa, &in_a, &in_b, or12_cc0_out, or12_cc1_out, and8_cc0_out, and8_cc1_out);
        int tempa_2 = in_a;
        int tempb_2 = in_b;

        //node 8
        observability_and(tempb_1, &in_a, &in_b, and7_cc0_out, and7_cc1_out, cc0_DIN1, cc1_DIN1);
        int tempa_3 = in_a;
        int tempb_3 = in_b;

        DIN1->cco  = (DIN1->cco < in_b ? DIN1->cco : in_b);

        //node 7
        observability_and(tempa_3, &in_a, &in_b, not3_cc0_out, not3_cc1_out, not6_cc0_out, not6_cc1_out);
        int tempa_4 = in_a;
        int tempb_4 = in_b;

        tempa_4  = (tempa_4 < tempa_1 ? tempa_4 : tempa_1);
        tempb_4  = (tempb_4 < tempb_1 ? tempb_4 : tempb_1);

        //node 6
        observability_not(tempb_4, &tempb_4);

        //node 12
        observability_or(tempa_2, &in_a, &in_b, and2_cc0_out, and2_cc1_out, and5_cc0_out, and5_cc1_out);
        int tempa_5 = in_a;
        int tempb_5 = in_b;

        //node 5
        observability_and(tempb_5, &in_a, &in_b, and4_cc0_out, and4_cc1_out, cc0_DIN3, cc1_DIN3);
        int tempa_6 = in_a;
        int tempb_6 = in_b;

        DIN3->cco  = (DIN3->cco < in_b ? DIN3->cco : in_b);

        //node 4
        observability_and(tempa_6, &in_a, &in_b, cc0_SIN0, cc1_SIN0, not3_cc0_out, not3_cc1_out);
        int tempa_7 = in_a;
        int tempb_7 = in_b;

        tempa_7  = (tempa_7 < tempb_4 ? tempa_7 : tempb_4);
        SIN1->cco  = (SIN1->cco < tempa_7 ? SIN1->cco : tempa_7);

        tempb_7  = (tempb_7 < tempa_4 ? tempb_7 : tempa_4);

        //node 3
        observability_not(tempb_7, &tempb_7);

        //node 2
        observability_and(tempa_5, &in_a, &in_b, cc0_DIN4, cc1_DIN4, and1_cc0_out, and1_cc1_out);
        int tempa_8 = in_a;
        int tempb_8 = in_b;

        DIN4->cco  = (DIN4->cco < in_a ? DIN4->cco : in_a);

        //node 1
        observability_and(tempb_8, &in_a, &in_b, cc0_SIN1, cc1_SIN1, cc0_SIN0, cc1_SIN0);
        int tempa_9 = in_a;
        int tempb_9 = in_b;

        tempb_9  = (tempb_9 < tempb_7 ? tempb_9 : tempb_7);
        SIN0->cco = tempb_9;

        tempa_9  = (tempa_9 < tempb_4 ? tempa_9 : tempb_4);

        SIN1->cco  = (SIN1->cco < tempa_9 ? SIN1->cco : tempa_9);

        //printf("******************Using mxi41s1 observability calculations ***********\n ");
    }
    else if(strstr(logic, "nb1s") || 
            strstr(logic,"buf_") ||
            strstr(logic,"bufbuf_"))
    {
        //printf("************non-inverting buffer******\n");
        edgIn = array_fetch(edge*, vert->inEdges, 0);
        edgIn->cco = (edgIn->cco < edgOut->cco ? edgIn->cco : edgOut->cco) ;
    }
    else if(strstr(logic, "ib1s") ||
            strstr(logic, "hi1s") ||
            strstr(logic,"bufinv_"))
            //(strlen(logic)==8) && strstr(logic,"bufinv_"))
    {
        //**************** inverting buffer **************
        edgIn = array_fetch(edge*, vert->inEdges, 0);
        //edgIn->cco = (edgIn->cco < (edgOut->cco + 1)?edgIn->cco:(edgOut->cco + 1));
        edgIn->cco = (edgIn->cco < (edgOut->cco)?edgIn->cco:(edgOut->cco));
    }
    else if(strstr(logic, "aoai1112s"))
    {
        //"aoai1112s2"
        // Q = !(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)))

        int cc0_out, cc1_out;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;

        controllability_and(cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5, &cc0_out, &cc1_out);
        int and1_cc0_out = cc0_out, and1_cc1_out = cc1_out;
        controllability_or(cc0_out, cc1_out, cc0_DIN3, cc1_DIN3, &cc0_out, &cc1_out);
        int or2_cc0_out = cc0_out, or2_cc1_out = cc1_out;
        controllability_and(cc0_out, cc1_out, cc0_DIN1, cc1_DIN1, &cc0_out, &cc1_out);
        int and3_cc0_out = cc0_out, and3_cc1_out = cc1_out;
        controllability_and(cc0_out, cc1_out, cc0_DIN2, cc1_DIN2, &cc0_out, &cc1_out);
        int and4_cc0_out = cc0_out, and4_cc1_out = cc1_out;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_and(not_co, &in_a, &in_b, and3_cc0_out, and3_cc1_out, cc0_DIN2, cc1_DIN2);
        DIN2->cco  = (DIN2->cco < in_b ? DIN2->cco : in_b);
        observability_and(in_a, &in_a, &in_b, or2_cc0_out, or2_cc1_out, cc0_DIN1, cc1_DIN1);
        DIN1->cco  = (DIN1->cco < in_b ? DIN1->cco : in_b);
        observability_or(in_a, &in_a, &in_b, and1_cc0_out, and1_cc1_out, cc0_DIN3, cc1_DIN3);
        DIN3->cco  = (DIN3->cco < in_b ? DIN3->cco : in_b);
        observability_and(in_a, &in_a, &in_b, cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5);
        DIN4->cco  = (DIN4->cco < in_a ? DIN4->cco : in_a);
        DIN5->cco  = (DIN5->cco < in_b ? DIN5->cco : in_b);
    }
    else if(strstr(logic, "oai21s") || strstr(logic, "o21ai"))
    {
        //"oai21s2"
        // Q = !((DIN1 | DIN2) & DIN3)

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;

        controllability_or(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        int or1_cc0_out = cc0_out_1, or1_cc1_out = cc1_out_1;
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        int and2_cc0_out = cc0_out_1, and2_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_and(not_co, &in_a, &in_b, or1_cc0_out, or1_cc1_out, cc0_DIN3, cc1_DIN3);
        DIN3->cco  = (DIN3->cco < in_b ? DIN3->cco : in_b);
        observability_or(in_a, &in_a, &in_b, cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2);
        DIN1->cco  = (DIN1->cco < in_a ? DIN1->cco : in_a);
        DIN2->cco  = (DIN2->cco < in_b ? DIN2->cco : in_b);
    }
    else if(strstr(logic, "aoi21s") || strstr(logic, "a21oi"))
    {
        //"aoi21s2"
        // Q = !((DIN1 & DIN2) | DIN3)
        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;

        controllability_and(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        int and1_cc0_out = cc0_out_1, and1_cc1_out = cc1_out_1;
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        int or2_cc0_out = cc0_out_1, or2_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_or(not_co, &in_a, &in_b, and1_cc0_out, and1_cc1_out, cc0_DIN3, cc1_DIN3);
        DIN3->cco  = (DIN3->cco < in_b ? DIN3->cco : in_b);
        observability_and(in_a, &in_a, &in_b, cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2);
        DIN1->cco  = (DIN1->cco < in_a ? DIN1->cco : in_a);
        DIN2->cco  = (DIN2->cco < in_b ? DIN2->cco : in_b);
    }
    else if(strstr(logic, "aoi221s") || strstr(logic, "a221oi"))
    {
        //"aoi221s1"
        // Q = !((DIN1 & DIN2) | (DIN3 & DIN4) | DIN5)
        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;

        controllability_and(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        int and1_cc0_out = cc0_out_1, and1_cc1_out = cc1_out_1;
        controllability_and(cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4, &cc0_out_2, &cc1_out_2);
        int and2_cc0_out = cc0_out_2, and2_cc1_out = cc1_out_2;
        controllability_or(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        int or3_cc0_out = cc0_out_1, or3_cc1_out = cc1_out_1;
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN5, cc1_DIN5, &cc0_out_1, &cc1_out_1);
        int or4_cc0_out = cc0_out_1, or4_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_or(not_co, &in_a, &in_b, or3_cc0_out, or3_cc1_out, cc0_DIN5, cc1_DIN5);
        DIN5->cco  = (DIN5->cco < in_b ? DIN5->cco : in_b);
        observability_or(in_a, &in_a, &in_b, and1_cc0_out, and1_cc1_out, and2_cc0_out, and2_cc1_out);
        int tempa = in_a, tempb = in_b;
        observability_and(tempa, &in_a, &in_b, cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2);
        DIN1->cco  = (DIN1->cco < in_a ? DIN1->cco : in_a);
        DIN2->cco  = (DIN2->cco < in_b ? DIN2->cco : in_b);
        observability_and(tempb, &in_a, &in_b, cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4);
        DIN3->cco  = (DIN3->cco < in_a ? DIN3->cco : in_a);
        DIN4->cco  = (DIN4->cco < in_b ? DIN4->cco : in_b);
    }
    else if(strstr(logic, "aoi13s"))
    {
        //"aoi13s2"
        // Q = !(DIN1 | (DIN2 & DIN3 & DIN4))
        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;

        controllability_and(cc0_DIN2, cc1_DIN2, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        int and1_cc0_out = cc0_out_1, and1_cc1_out = cc1_out_1;
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN4, cc1_DIN4, &cc0_out_1, &cc1_out_1);
        int and2_cc0_out = cc0_out_1, and2_cc1_out = cc1_out_1;
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN1, cc1_DIN1, &cc0_out_1, &cc1_out_1);
        int or3_cc0_out = cc0_out_1, or3_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_or(not_co, &in_a, &in_b, and2_cc0_out, and2_cc1_out, cc0_DIN1, cc1_DIN1);
        DIN1->cco  = (DIN1->cco < in_b ? DIN1->cco : in_b);
        observability_and(in_a, &in_a, &in_b, and1_cc0_out, and1_cc1_out, cc0_DIN4, cc1_DIN4);
        DIN4->cco  = (DIN4->cco < in_b ? DIN4->cco : in_b);
        observability_and(in_a, &in_a, &in_b, cc0_DIN2, cc1_DIN2, cc0_DIN3, cc1_DIN3);
        DIN2->cco  = (DIN2->cco < in_a ? DIN2->cco : in_a);
        DIN3->cco  = (DIN3->cco < in_b ? DIN3->cco : in_b);
    }
    else if(strstr(logic, "oai13s"))//updated on 9/27/19
    {
        //"oai13s1"
        // Q = !(DIN1 & (DIN2 | DIN3 | DIN4))
        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;

        controllability_or(cc0_DIN2, cc1_DIN2, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        int or1_cc0_out = cc0_out_1, or1_cc1_out = cc1_out_1;
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN4, cc1_DIN4, &cc0_out_1, &cc1_out_1);
        int or2_cc0_out = cc0_out_1, or2_cc1_out = cc1_out_1;
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN1, cc1_DIN1, &cc0_out_1, &cc1_out_1);
        int and3_cc0_out = cc0_out_1, and3_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_and(not_co, &in_a, &in_b, or2_cc0_out, or2_cc1_out, cc0_DIN1, cc1_DIN1);
        DIN1->cco  = (DIN1->cco < in_b ? DIN1->cco : in_b);
        observability_or(in_a, &in_a, &in_b, or1_cc0_out, or1_cc1_out, cc0_DIN4, cc1_DIN4);
        DIN4->cco  = (DIN4->cco < in_b ? DIN4->cco : in_b);
        observability_or(in_a, &in_a, &in_b, cc0_DIN2, cc1_DIN2, cc0_DIN3, cc1_DIN3);
        DIN2->cco  = (DIN2->cco < in_a ? DIN2->cco : in_a);
        DIN3->cco  = (DIN3->cco < in_b ? DIN3->cco : in_b);
    }
    else if(strstr(logic, "aoi22s") || strstr(logic, "a22oi"))
    {
        //"aoi22s2"
        // Q = !((DIN1 & DIN2) | (DIN3 & DIN4))
        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;

        controllability_and(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        int and1_cc0_out = cc0_out_1, and1_cc1_out = cc1_out_1;
        controllability_and(cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4, &cc0_out_2, &cc1_out_2);
        int and2_cc0_out = cc0_out_2, and2_cc1_out = cc1_out_2;
        controllability_or(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        int or3_cc0_out = cc0_out_1, or3_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_or(not_co, &in_a, &in_b, and1_cc0_out, and1_cc1_out, and2_cc0_out, and2_cc1_out);
        int tempa = in_a, tempb = in_b;
        observability_and(tempa, &in_a, &in_b, cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2);
        DIN1->cco  = (DIN1->cco < in_a ? DIN1->cco : in_a);
        DIN2->cco  = (DIN2->cco < in_b ? DIN2->cco : in_b);
        observability_and(tempb, &in_a, &in_b, cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4);
        DIN3->cco  = (DIN3->cco < in_a ? DIN3->cco : in_a);
        DIN4->cco  = (DIN4->cco < in_b ? DIN4->cco : in_b);
    }
    else if(strstr(logic, "aoi42s"))//updated on 9/27/19
    {
        //"aoi42s2"
        //Q = !((DIN1 & DIN2 & DIN3 & DIN4) | (DIN5 & DIN6))

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;
        int cc0_DIN6 = DIN6->cc0;
        int cc1_DIN6 = DIN6->cc1;

        controllability_and(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        int and1_cc0_out = cc0_out_1, and1_cc1_out = cc1_out_1;
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        int and2_cc0_out = cc0_out_1, and2_cc1_out = cc1_out_1;
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN4, cc1_DIN4, &cc0_out_1, &cc1_out_1);
        int and3_cc0_out = cc0_out_1, and3_cc1_out = cc1_out_1;
        controllability_and(cc0_DIN5, cc1_DIN5, cc0_DIN6, cc1_DIN6, &cc0_out_2, &cc1_out_2);
        int and4_cc0_out = cc0_out_2, and4_cc1_out = cc1_out_2;
        controllability_or(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        int or5_cc0_out = cc0_out_1, or5_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_or(not_co, &in_a, &in_b, and3_cc0_out, and3_cc1_out, and4_cc0_out, and4_cc1_out);
        int tempa = in_a, tempb = in_b;
        observability_and(tempb, &in_a, &in_b, cc0_DIN5, cc1_DIN5, cc0_DIN6, cc1_DIN6);
        DIN5->cco  = (DIN5->cco < in_a ? DIN5->cco : in_a);
        DIN6->cco  = (DIN6->cco < in_b ? DIN6->cco : in_b);
        observability_and(tempa, &in_a, &in_b, and2_cc0_out, and2_cc1_out, cc0_DIN4, cc1_DIN4);
        DIN4->cco  = (DIN4->cco < in_b ? DIN4->cco : in_b);
        observability_and(in_a, &in_a, &in_b, and1_cc0_out, and1_cc1_out, cc0_DIN3, cc1_DIN3);
        DIN3->cco  = (DIN3->cco < in_b ? DIN3->cco : in_b);
        observability_and(in_a, &in_a, &in_b, cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2);
        DIN1->cco  = (DIN1->cco < in_a ? DIN1->cco : in_a);
        DIN2->cco  = (DIN2->cco < in_b ? DIN2->cco : in_b);
    }
    else if(strstr(logic, "aoi4111s"))//updated on 3/24/20
    {
        //"aoi4111s1"
        // Q = !((DIN1 & DIN2 & DIN3 & DIN4) | DIN5 | DIN6 | DIN7)

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;
        int cc0_DIN6 = DIN6->cc0;
        int cc1_DIN6 = DIN6->cc1;
        int cc0_DIN7 = DIN7->cc0;
        int cc1_DIN7 = DIN7->cc1;

        controllability_and(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        int and1_cc0_out = cc0_out_1, and1_cc1_out = cc1_out_1;
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        int and2_cc0_out = cc0_out_1, and2_cc1_out = cc1_out_1;
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN4, cc1_DIN4, &cc0_out_1, &cc1_out_1);
        int and3_cc0_out = cc0_out_1, and3_cc1_out = cc1_out_1;
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN5, cc1_DIN5, &cc0_out_1, &cc1_out_1);
        int or4_cc0_out = cc0_out_1, or4_cc1_out = cc1_out_1;
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN6, cc1_DIN6, &cc0_out_1, &cc1_out_1);
        int or5_cc0_out = cc0_out_1, or5_cc1_out = cc1_out_1;
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN7, cc1_DIN7, &cc0_out_1, &cc1_out_1);
        int or6_cc0_out = cc0_out_1, or6_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_or(not_co, &in_a, &in_b, or5_cc0_out, or5_cc1_out, cc0_DIN7, cc1_DIN7);
        DIN7->cco  = (DIN7->cco < in_b ? DIN7->cco : in_b);
        observability_or(in_a, &in_a, &in_b, or4_cc0_out, or4_cc1_out, cc0_DIN6, cc1_DIN6);
        DIN6->cco  = (DIN6->cco < in_b ? DIN6->cco : in_b);
        observability_and(in_a, &in_a, &in_b, and3_cc0_out, and3_cc1_out, cc0_DIN5, cc1_DIN5);
        DIN5->cco  = (DIN5->cco < in_b ? DIN5->cco : in_b);
        observability_and(in_a, &in_a, &in_b, and2_cc0_out, and2_cc1_out, cc0_DIN4, cc1_DIN4);
        DIN4->cco  = (DIN4->cco < in_b ? DIN4->cco : in_b);
        observability_and(in_a, &in_a, &in_b, and1_cc0_out, and1_cc1_out, cc0_DIN3, cc1_DIN3);
        DIN3->cco  = (DIN3->cco < in_b ? DIN3->cco : in_b);
        observability_and(in_a, &in_a, &in_b, cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2);
        DIN1->cco  = (DIN1->cco < in_a ? DIN1->cco : in_a);
        DIN2->cco  = (DIN2->cco < in_b ? DIN2->cco : in_b);
    }

    else if(strstr(logic, "aoi222s") || strstr(logic, "a222oi"))
    {
        /*strcpy(gate, "aoi222s1");
        strcpy(derived, "not ((DIN1 & DIN2) | (DIN3 & DIN4) | (DIN5 & DIN6))");
        return derived*/

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2,  cc0_out_3, cc1_out_3;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;
        int cc0_DIN6 = DIN6->cc0;
        int cc1_DIN6 = DIN6->cc1;

        controllability_and(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        int and1_cc0_out = cc0_out_1, and1_cc1_out = cc1_out_1;
        controllability_and(cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4, &cc0_out_2, &cc1_out_2);
        int and2_cc0_out = cc0_out_2, and2_cc1_out = cc1_out_2;
        controllability_and(cc0_DIN5, cc1_DIN5, cc0_DIN6, cc1_DIN6, &cc0_out_3, &cc1_out_3);
        int and3_cc0_out = cc0_out_3, and3_cc1_out = cc1_out_3;
        controllability_or(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        int or4_cc0_out = cc0_out_1, or4_cc1_out = cc1_out_1;
        controllability_or(cc0_out_1, cc1_out_1, cc0_out_3, cc1_out_3, &cc0_out_1, &cc1_out_1);
        int or5_cc0_out = cc0_out_1, or5_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_or(not_co, &in_a, &in_b, or4_cc0_out, or4_cc1_out, and3_cc0_out, and3_cc1_out);
        int tempa = in_a, tempb = in_b;
        observability_and(tempb, &in_a, &in_b, cc0_DIN5, cc1_DIN5, cc0_DIN6, cc1_DIN6);
        DIN5->cco  = (DIN5->cco < in_a ? DIN5->cco : in_a);
        DIN6->cco  = (DIN6->cco < in_b ? DIN6->cco : in_b);
        observability_or(tempa, &in_a, &in_b, and1_cc0_out, and1_cc1_out, and2_cc0_out, and2_cc1_out);
        tempa = in_a;
        tempb = in_b;
        observability_and(tempb, &in_a, &in_b, cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4);
        DIN3->cco  = (DIN3->cco < in_a ? DIN3->cco : in_a);
        DIN4->cco  = (DIN4->cco < in_b ? DIN4->cco : in_b);
        observability_and(tempa, &in_a, &in_b, cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2);
        DIN1->cco  = (DIN1->cco < in_a ? DIN1->cco : in_a);
        DIN2->cco  = (DIN2->cco < in_b ? DIN2->cco : in_b);
    }
    else if(strstr(logic, "aoi2221s"))//updated on 3/24/20
    {
        //"aoi2221s1"
        // Q = !((DIN1 & DIN2) | (DIN3 & DIN4) | (DIN5 & DIN6) | DIN7)

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, cc0_out_3, cc1_out_3;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;
        int cc0_DIN6 = DIN6->cc0;
        int cc1_DIN6 = DIN6->cc1;
        int cc0_DIN7 = DIN7->cc0;
        int cc1_DIN7 = DIN7->cc1;

        controllability_and(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        int and1_cc0_out = cc0_out_1, and1_cc1_out = cc1_out_1;
        controllability_and(cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4, &cc0_out_2, &cc1_out_2);
        int and2_cc0_out = cc0_out_2, and2_cc1_out = cc1_out_2;
        controllability_and(cc0_DIN5, cc1_DIN5, cc0_DIN6, cc1_DIN6, &cc0_out_3, &cc1_out_3);
        int and3_cc0_out = cc0_out_3, and3_cc1_out = cc1_out_3;
        controllability_or(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        int or4_cc0_out = cc0_out_1, or4_cc1_out = cc1_out_1;
        controllability_or(cc0_out_1, cc1_out_1, cc0_out_3, cc1_out_3, &cc0_out_1, &cc1_out_1);
        int or5_cc0_out = cc0_out_1, or5_cc1_out = cc1_out_1;
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN7, cc1_DIN7, &cc0_out_1, &cc1_out_1);
        int or6_cc0_out = cc0_out_1, or6_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_or(not_co, &in_a, &in_b, or5_cc0_out, or5_cc1_out, cc0_DIN7, cc1_DIN7);
        DIN7->cco  = (DIN7->cco < in_b ? DIN7->cco : in_b);
        observability_or(in_a, &in_a, &in_b, or4_cc0_out, or4_cc1_out, and3_cc0_out, and3_cc1_out);
        int tempa= in_a;
        int tempb = in_b;
        observability_and(tempb, &in_a, &in_b, cc0_DIN5, cc1_DIN5, cc0_DIN6, cc1_DIN6);
        DIN5->cco  = (DIN5->cco < in_a ? DIN5->cco : in_a);
        DIN6->cco  = (DIN6->cco < in_b ? DIN6->cco : in_b);
        observability_or(tempa, &in_a, &in_b, and1_cc0_out, and1_cc1_out, and2_cc0_out, and2_cc1_out);
        tempa = in_a;
        tempb = in_b;
        observability_and(tempb, &in_a, &in_b, cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4);
        DIN3->cco  = (DIN3->cco < in_a ? DIN3->cco : in_a);
        DIN4->cco  = (DIN4->cco < in_b ? DIN4->cco : in_b);
        observability_and(tempa, &in_a, &in_b, cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2);
        DIN1->cco  = (DIN1->cco < in_a ? DIN1->cco : in_a);
        DIN2->cco  = (DIN2->cco < in_b ? DIN2->cco : in_b);
    }
    else if(strstr(logic, "aoi123s"))//updated on 9/27/19
    {
        //"aoi123s1"
        // Q = !(DIN1 | (DIN2 & DIN3) | (DIN4 & DIN5 & DIN6))
        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;
        int cc0_DIN6 = DIN6->cc0;
        int cc1_DIN6 = DIN6->cc1;

        controllability_and(cc0_DIN2, cc1_DIN2, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        int and1_cc0_out = cc0_out_1, and1_cc1_out = cc1_out_1;
        controllability_or(cc0_DIN1, cc1_DIN1, cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);
        int or2_cc0_out = cc0_out_1, or2_cc1_out = cc1_out_1;
        controllability_and(cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5, &cc0_out_2, &cc1_out_2);
        int and3_cc0_out = cc0_out_2, and3_cc1_out = cc1_out_2;
        controllability_and(cc0_DIN6, cc1_DIN6, cc0_out_2, cc1_out_2, &cc0_out_2, &cc1_out_2);
        int and4_cc0_out = cc0_out_2, and4_cc1_out = cc1_out_2;
        controllability_or(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        int or4_cc0_out = cc0_out_1, or4_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_or(not_co, &in_a, &in_b, or2_cc0_out, or2_cc1_out, and4_cc0_out, and4_cc1_out);
        int tempa = in_a, tempb = in_b;
        observability_and(tempb, &in_a, &in_b, and3_cc0_out, and3_cc1_out, cc0_DIN6, cc1_DIN6);
        DIN6->cco  = (DIN6->cco < in_b ? DIN6->cco : in_b);
        observability_and(in_a, &in_a, &in_b, cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5);
        DIN4->cco  = (DIN4->cco < in_a ? DIN4->cco : in_a);
        DIN5->cco  = (DIN5->cco < in_b ? DIN5->cco : in_b);
        observability_or(tempa, &in_a, &in_b, and1_cc0_out, and1_cc1_out, cc0_DIN1, cc1_DIN1);
        DIN1->cco  = (DIN1->cco < in_b ? DIN1->cco : in_b);
        observability_and(in_a, &in_a, &in_b, cc0_DIN2, cc1_DIN2, cc0_DIN3, cc1_DIN3);
        DIN2->cco  = (DIN2->cco < in_a ? DIN2->cco : in_a);
        DIN3->cco  = (DIN3->cco < in_b ? DIN3->cco : in_b);
    }
    else if(strstr(logic, "aoi211s") || strstr(logic, "a211oi"))
    {
        //"aoi211s1"
        // Q = !((DIN1 & DIN2) | DIN3 | DIN4)
        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;

        controllability_and(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        int and1_cc0_out = cc0_out_1, and1_cc1_out = cc1_out_1;
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        int or2_cc0_out = cc0_out_1, or2_cc1_out = cc1_out_1;
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN4, cc1_DIN4, &cc0_out_1, &cc1_out_1);
        int or3_cc0_out = cc0_out_1, or3_cc1_out = cc1_out_1;


        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_or(not_co, &in_a, &in_b, or2_cc0_out, or2_cc1_out, cc0_DIN4, cc1_DIN4);
        DIN4->cco  = (DIN4->cco < in_b ? DIN4->cco : in_b);
        observability_or(in_a, &in_a, &in_b, and1_cc0_out, and1_cc1_out, cc0_DIN3, cc1_DIN3);
        DIN3->cco  = (DIN3->cco < in_b ? DIN3->cco : in_b);
        observability_and(in_a, &in_a, &in_b, cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2);
        DIN1->cco  = (DIN1->cco < in_a ? DIN1->cco : in_a);
        DIN2->cco  = (DIN2->cco < in_b ? DIN2->cco : in_b);
    }
    else if(strstr(logic, "aoi23s"))
    {
        /*strcpy(gate, "aoi23s1");
        Q = !((DIN1 & DIN2) | (DIN3 & DIN4 & DIN5))
        return derived;*/
        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;

        controllability_and(cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4, &cc0_out_1, &cc1_out_1);
        int and1_cc0_out = cc0_out_1, and1_cc1_out = cc1_out_1;

        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN5, cc1_DIN5, &cc0_out_1, &cc1_out_1);
        int and2_cc0_out = cc0_out_1, and2_cc1_out = cc1_out_1;

        controllability_and(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        int and3_cc0_out = cc0_out_1, and3_cc1_out = cc1_out_1;

        controllability_or(and2_cc0_out, and2_cc1_out, and3_cc0_out, and3_cc1_out, &cc0_out_1, &cc1_out_1);
        int or4_cc0_out = cc0_out_1, or4_cc1_out = cc1_out_1;


        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);

        observability_or(not_co, &in_a, &in_b, and2_cc0_out, and2_cc1_out, and3_cc0_out, and3_cc1_out);

        int temp_a = in_a, temp_b = in_b;
        observability_and(temp_b, &in_a, &in_b, cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2);
        DIN1->cco  = (DIN1->cco < in_a ? DIN1->cco : in_a);
        DIN2->cco  = (DIN2->cco < in_b ? DIN2->cco : in_b);


        observability_and(temp_a, &in_a, &in_b, and1_cc0_out, and1_cc1_out, cc0_DIN5, cc1_DIN5);
        DIN5->cco  = (DIN5->cco < in_b ? DIN5->cco : in_b);

        observability_and(in_a, &in_a, &in_b, cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4);
        DIN3->cco  = (DIN3->cco < in_a ? DIN3->cco : in_a);
        DIN4->cco  = (DIN4->cco < in_b ? DIN4->cco : in_b);
    }
    else if(strstr(logic, "oai222s"))
    {
        //"oai222s1"
        // Q = !((DIN1 | DIN2) & (DIN3 | DIN4) & (DIN5 | DIN6))

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, cc0_out_3, cc1_out_3;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;
        int cc0_DIN6 = DIN6->cc0;
        int cc1_DIN6 = DIN6->cc1;

        controllability_or(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        int or1_cc0_out = cc0_out_1, or1_cc1_out = cc1_out_1;
        controllability_or(cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4, &cc0_out_2, &cc1_out_2);
        int or2_cc0_out = cc0_out_2, or2_cc1_out = cc1_out_2;
        controllability_or(cc0_DIN5, cc1_DIN5, cc0_DIN6, cc1_DIN6, &cc0_out_3, &cc1_out_3);
        int or3_cc0_out = cc0_out_3, or3_cc1_out = cc1_out_3;
        controllability_and(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        int and4_cc0_out = cc0_out_1, and4_cc1_out = cc1_out_1;
        controllability_and(cc0_out_1, cc1_out_1, cc0_out_3, cc1_out_3, &cc0_out_1, &cc1_out_1);
        int and5_cc0_out = cc0_out_1, and5_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_and(not_co, &in_a, &in_b, and4_cc0_out, and4_cc1_out, or3_cc0_out, or3_cc1_out);
        int tempa = in_a, tempb = in_b;
        observability_or(tempb, &in_a, &in_b, cc0_DIN5, cc1_DIN5, cc0_DIN6, cc1_DIN6);
        DIN5->cco  = (DIN5->cco < in_a ? DIN5->cco : in_a);
        DIN6->cco  = (DIN6->cco < in_b ? DIN6->cco : in_b);
        observability_and(tempa, &in_a, &in_b, or1_cc0_out, or1_cc1_out, or2_cc0_out, or2_cc1_out);
        tempa = in_a;
        tempb = in_b;
        observability_or(tempb, &in_a, &in_b, cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4);
        DIN3->cco  = (DIN3->cco < in_a ? DIN3->cco : in_a);
        DIN4->cco  = (DIN4->cco < in_b ? DIN4->cco : in_b);
        observability_or(tempa, &in_a, &in_b, cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2);
        DIN1->cco  = (DIN1->cco < in_a ? DIN1->cco : in_a);
        DIN2->cco  = (DIN2->cco < in_b ? DIN2->cco : in_b);
    }
    else if(strstr(logic, "oai22s") || strstr(logic, "o22ai"))
    {
        //"oai22s2"
        // Q = !((DIN1 | DIN2) & (DIN3 | DIN4))
        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;


        controllability_or(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        int or1_cc0_out = cc0_out_1, or1_cc1_out = cc1_out_1;
        controllability_or(cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4, &cc0_out_2, &cc1_out_2);
        int or2_cc0_out = cc0_out_2, or2_cc1_out = cc1_out_2;
        controllability_and(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        int and3_cc0_out = cc0_out_1, and3_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_and(not_co, &in_a, &in_b, or1_cc0_out, or1_cc1_out, or2_cc0_out, or2_cc1_out);
        int tempa = in_a, tempb = in_b;
        observability_or(tempa, &in_a, &in_b, cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2);
        DIN1->cco  = (DIN1->cco < in_a ? DIN1->cco : in_a);
        DIN2->cco  = (DIN2->cco < in_b ? DIN2->cco : in_b);
        observability_or(tempb, &in_a, &in_b, cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4);
        DIN3->cco  = (DIN3->cco < in_a ? DIN3->cco : in_a);
        DIN4->cco  = (DIN4->cco < in_b ? DIN4->cco : in_b);
    }
    else if(strstr(logic, "oai2222s"))
    {
        /*strcpy(gate, "oai2222s3");
        strcpy(derived, "not ((DIN1 | DIN2) & (DIN3 | DIN4) & (DIN5 | DIN6) & (DIN7 | DIN8))");
        return derived;*/
        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2,  cc0_out_3, cc1_out_3,  cc0_out_4, cc1_out_4;
        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;
        int cc0_DIN6 = DIN6->cc0;
        int cc1_DIN6 = DIN6->cc1;
        int cc0_DIN7 = DIN7->cc0;
        int cc1_DIN7 = DIN7->cc1;
        int cc0_DIN8 = DIN8->cc0;
        int cc1_DIN8 = DIN8->cc1;


        controllability_or(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        int or1_cc0_out = cc0_out_1, or1_cc1_out = cc1_out_1;
        controllability_or(cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4, &cc0_out_2, &cc1_out_2);
        int or2_cc0_out = cc0_out_2, or2_cc1_out = cc1_out_2;
        controllability_or(cc0_DIN5, cc1_DIN5, cc0_DIN6, cc1_DIN6, &cc0_out_3, &cc1_out_3);
        int or3_cc0_out = cc0_out_3, or3_cc1_out = cc1_out_3;
        controllability_or(cc0_DIN7, cc1_DIN7, cc0_DIN8, cc1_DIN8, &cc0_out_4, &cc1_out_4);
        int or4_cc0_out = cc0_out_4, or4_cc1_out = cc1_out_4;
        controllability_and(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        int and5_cc0_out = cc0_out_1, and5_cc1_out = cc1_out_1;
        controllability_and(cc0_out_3, cc1_out_3, cc0_out_4, cc1_out_4, &cc0_out_3, &cc1_out_3);
        int and6_cc0_out = cc0_out_3, and6_cc1_out = cc1_out_3;
        controllability_and(cc0_out_1, cc1_out_1, cc0_out_3, cc1_out_3, &cc0_out_1, &cc1_out_1);
        int and7_cc0_out = cc0_out_1, and7_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_and(not_co, &in_a, &in_b, and5_cc0_out, and5_cc1_out, and6_cc0_out, and6_cc1_out);
        int tempa = in_a, tempb = in_b;
        observability_and(tempb, &in_a, &in_b, or3_cc0_out, or3_cc1_out, or4_cc0_out, or4_cc1_out);
        int tempa_1 = in_a, tempb_1 = in_b;
        observability_or(tempa_1, &in_a, &in_b, cc0_DIN5, cc1_DIN5, cc0_DIN6, cc1_DIN6);
        DIN5->cco  = (DIN5->cco < in_a ? DIN5->cco : in_a);
        DIN6->cco  = (DIN6->cco < in_b ? DIN6->cco : in_b);
        observability_or(tempb_1, &in_a, &in_b, cc0_DIN7, cc1_DIN7, cc0_DIN8, cc1_DIN8);
        DIN7->cco  = (DIN7->cco < in_a ? DIN7->cco : in_a);
        DIN8->cco  = (DIN8->cco < in_b ? DIN8->cco : in_b);
        observability_and(tempa, &in_a, &in_b, or1_cc0_out, or1_cc1_out, or2_cc0_out, or2_cc1_out);
        tempa_1 = in_a;
        tempb_1 = in_b;
        observability_or(tempb_1, &in_a, &in_b, cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4);
        DIN3->cco  = (DIN3->cco < in_a ? DIN3->cco : in_a);
        DIN4->cco  = (DIN4->cco < in_b ? DIN4->cco : in_b);
        observability_or(tempa_1, &in_a, &in_b, cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2);
        DIN1->cco  = (DIN1->cco < in_a ? DIN1->cco : in_a);
        DIN2->cco  = (DIN2->cco < in_b ? DIN2->cco : in_b);
    }
    else if(strstr(logic, "oai322s"))
    {
        /*strcpy(gate, "oai322s1");
        Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & (DIN6 | DIN7))
        return derived;*/

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, cc0_out_3, cc1_out_3, cc0_out_4, cc1_out_4;

        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;
        int cc0_DIN6 = DIN6->cc0;
        int cc1_DIN6 = DIN6->cc1;
        int cc0_DIN7 = DIN7->cc0;
        int cc1_DIN7 = DIN7->cc1;

        controllability_or(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        int or1_cc0_out = cc0_out_1, or1_cc1_out = cc1_out_1;
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        int or2_cc0_out = cc0_out_1, or2_cc1_out = cc1_out_1;

        controllability_or(cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5, &cc0_out_1, &cc1_out_1);
        int or3_cc0_out = cc0_out_1, or3_cc1_out = cc1_out_1;

        controllability_or(cc0_DIN6, cc1_DIN6, cc0_DIN7, cc1_DIN7, &cc0_out_1, &cc1_out_1);
        int or4_cc0_out = cc0_out_1, or4_cc1_out = cc1_out_1;

        controllability_and(or2_cc0_out, or2_cc1_out, or3_cc0_out, or3_cc1_out, &cc0_out_1, &cc1_out_1);
        int and5_cc0_out = cc0_out_1, and5_cc1_out = cc1_out_1;

        controllability_and(cc0_out_1, cc1_out_1, or4_cc0_out, or4_cc1_out, &cc0_out_1, &cc1_out_1);
        int and6_cc0_out = cc0_out_1, and6_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_and(not_co, &in_a, &in_b, and5_cc0_out, and5_cc1_out, or4_cc0_out, or4_cc1_out);

        int temp_a = in_a, temp_b = in_b;
        observability_or(temp_b, &in_a, &in_b, cc0_DIN6, cc1_DIN6, cc0_DIN7, cc1_DIN7);
        DIN6->cco  = (DIN6->cco < in_a ? DIN6->cco : in_a);
        DIN7->cco  = (DIN7->cco < in_b ? DIN7->cco : in_b);

        observability_and(temp_a, &in_a, &in_b, or2_cc0_out, or2_cc1_out, or3_cc0_out, or3_cc1_out);
        temp_a = in_a;

        observability_or(in_b, &in_a, &in_b, cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5);
        DIN4->cco  = (DIN4->cco < in_a ? DIN4->cco : in_a);
        DIN5->cco  = (DIN5->cco < in_b ? DIN5->cco : in_b);

        observability_or(temp_a, &in_a, &in_b, or1_cc0_out, or1_cc1_out, cc0_DIN3, cc1_DIN3);
        DIN3->cco  = (DIN3->cco < in_b ? DIN3->cco : in_b);

        observability_or(in_a, &in_a, &in_b, cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2);
        DIN1->cco  = (DIN1->cco < in_a ? DIN1->cco : in_a);
        DIN2->cco  = (DIN2->cco < in_b ? DIN2->cco : in_b);
    }
    else if(strstr(logic, "oai321s"))
    {
        /*strcpy(gate, "oai321s1");
        Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & DIN6)
        return derived;*/

        int cc0_out_1, cc1_out_1;

        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;
        int cc0_DIN6 = DIN6->cc0;
        int cc1_DIN6 = DIN6->cc1;

        controllability_or(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        int or1_cc0_out = cc0_out_1, or1_cc1_out = cc1_out_1;

        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        int or2_cc0_out = cc0_out_1, or2_cc1_out = cc1_out_1;

        controllability_or(cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5, &cc0_out_1, &cc1_out_1);
        int or3_cc0_out = cc0_out_1, or3_cc1_out = cc1_out_1;

        controllability_and(or2_cc0_out, or2_cc1_out, or3_cc0_out, or3_cc1_out, &cc0_out_1, &cc1_out_1);
        int and4_cc0_out = cc0_out_1, and4_cc1_out = cc1_out_1;

        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN6, cc1_DIN6, &cc0_out_1, &cc1_out_1);
        int and5_cc0_out = cc0_out_1, and5_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_and(not_co, &in_a, &in_b, and4_cc0_out, and4_cc1_out, cc0_DIN6, cc1_DIN6);
        DIN6->cco  = (DIN6->cco < in_b ? DIN6->cco : in_b);

        observability_and(in_a, &in_a, &in_b, or2_cc0_out, or2_cc1_out, or3_cc0_out, or3_cc1_out);
        int temp_a = in_a, temp_b = in_b;

        observability_or(temp_b, &in_a, &in_b, cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5);
        DIN4->cco  = (DIN4->cco < in_a ? DIN4->cco : in_a);
        DIN5->cco  = (DIN5->cco < in_b ? DIN5->cco : in_b);

        observability_or(temp_a, &in_a, &in_b, or1_cc0_out, or1_cc1_out, cc0_DIN3, cc1_DIN3);
        DIN3->cco  = (DIN3->cco < in_b ? DIN3->cco : in_b);

        observability_or(in_a, &in_a, &in_b, cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2);
        DIN1->cco  = (DIN1->cco < in_a ? DIN1->cco : in_a);
        DIN2->cco  = (DIN2->cco < in_b ? DIN2->cco : in_b);
    }
    else if(strstr(logic, "oai32s") || strstr(logic, "o32ai"))
    {
        /*strcpy(gate, "oai32s1");
        Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5))
        return derived;*/
        int cc0_out_1, cc1_out_1;

        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;

        controllability_or(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        int or1_cc0_out = cc0_out_1, or1_cc1_out = cc1_out_1;
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        int or2_cc0_out = cc0_out_1, or2_cc1_out = cc1_out_1;

        controllability_or(cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5, &cc0_out_1, &cc1_out_1);
        int or3_cc0_out = cc0_out_1, or3_cc1_out = cc1_out_1;

        controllability_and(or2_cc0_out, or2_cc1_out, or3_cc0_out, or3_cc1_out, &cc0_out_1, &cc1_out_1);
        int and4_cc0_out = cc0_out_1, and4_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_and(not_co, &in_a, &in_b, or2_cc0_out, or2_cc1_out, or3_cc0_out, or3_cc1_out);
        int temp_a = in_a, temp_b = in_b;

        observability_or(temp_b, &in_a, &in_b, cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5);
        DIN4->cco  = (DIN4->cco < in_a ? DIN4->cco : in_a);
        DIN5->cco  = (DIN5->cco < in_b ? DIN5->cco : in_b);

        observability_or(temp_a, &in_a, &in_b, or1_cc0_out, or1_cc1_out, cc0_DIN3, cc1_DIN3);
        DIN3->cco  = (DIN3->cco < in_b ? DIN3->cco : in_b);

        observability_or(in_a, &in_a, &in_b, cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2);
        DIN1->cco  = (DIN1->cco < in_a ? DIN1->cco : in_a);
        DIN2->cco  = (DIN2->cco < in_b ? DIN2->cco : in_b);
    }
    else if(strstr(logic, "aoi23s")) //updated on 9/27/19
    {
        //"aoi23s1"
        //Q = !((DIN1 & DIN2) | (DIN3 & DIN4 & DIN5))

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;

        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;

        controllability_and(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        int and1_cc0_out = cc0_out_1, and1_cc1_out = cc1_out_1;
        controllability_and(cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4, &cc0_out_2, &cc1_out_2);
        int and2_cc0_out = cc0_out_2, and2_cc1_out = cc1_out_2;
        controllability_and(cc0_out_2, cc1_out_2, cc0_DIN5, cc1_DIN5, &cc0_out_2, &cc1_out_2);
        int and3_cc0_out = cc0_out_2, and3_cc1_out = cc1_out_2;
        controllability_or(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        int or4_cc0_out = cc0_out_1, or4_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_or(not_co, &in_a, &in_b, and1_cc0_out, and1_cc1_out, and3_cc0_out, and3_cc1_out);
        int tempa = in_a, tempb = in_b;
        observability_and(tempa, &in_a, &in_b, cc0_DIN1, cc1_DIN1, and3_cc0_out, and3_cc1_out);
        DIN1->cco  = (DIN1->cco < in_a ? DIN1->cco : in_a);
        DIN2->cco  = (DIN2->cco < in_b ? DIN2->cco : in_b);

        observability_and(tempb, &in_a, &in_b, and2_cc0_out, and2_cc1_out, cc0_DIN5, cc1_DIN5);
        DIN5->cco  = (DIN5->cco < in_b ? DIN5->cco : in_b);

        observability_and(in_a, &in_a, &in_b, cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4);
        DIN3->cco  = (DIN3->cco < in_a ? DIN3->cco : in_a);
        DIN4->cco  = (DIN4->cco < in_b ? DIN4->cco : in_b);
    }
    else if(strstr(logic, "aoi33s")) //updated on 9/27/19
    {
        //"aoi33s1"
        //Q = !((DIN1 & DIN2 & DIN3) | (DIN4 & DIN5 & DIN6))

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;

        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;
        int cc0_DIN6 = DIN6->cc0;
        int cc1_DIN6 = DIN6->cc1;

        controllability_and(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        int and1_cc0_out = cc0_out_1, and1_cc1_out = cc1_out_1;
        controllability_and(cc0_DIN3, cc1_DIN3, cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);
        int and2_cc0_out = cc0_out_1, and2_cc1_out = cc1_out_1;
        controllability_and(cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5, &cc0_out_2, &cc1_out_2);
        int and3_cc0_out = cc0_out_2, and3_cc1_out = cc1_out_2;
        controllability_and(cc0_DIN6, cc1_DIN6, cc0_out_2, cc1_out_2, &cc0_out_2, &cc1_out_2);
        int and4_cc0_out = cc0_out_2, and4_cc1_out = cc1_out_2;
        controllability_or(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        int or5_cc0_out = cc0_out_1, or5_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_or(not_co, &in_a, &in_b, and2_cc0_out, and2_cc1_out, and4_cc0_out, and4_cc1_out);
        int tempa = in_a, tempb = in_b;
        observability_and(tempb, &in_a, &in_b, and3_cc0_out, and3_cc1_out, cc0_DIN6, cc1_DIN6);
        DIN6->cco  = (DIN6->cco < in_b ? DIN6->cco : in_b);
        observability_and(in_a, &in_a, &in_b, cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5);
        DIN4->cco  = (DIN4->cco < in_a ? DIN4->cco : in_a);
        DIN5->cco  = (DIN5->cco < in_b ? DIN5->cco : in_b);

        observability_and(tempa, &in_a, &in_b, and1_cc0_out, and1_cc1_out, cc0_DIN3, cc1_DIN3);
        DIN3->cco  = (DIN3->cco < in_b ? DIN3->cco : in_b);
        observability_and(in_a, &in_a, &in_b, cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2);
        DIN1->cco  = (DIN1->cco < in_a ? DIN1->cco : in_a);
        DIN2->cco  = (DIN2->cco < in_b ? DIN2->cco : in_b);
    }
    else if(strstr(logic, "oai33s")) //updated on 9/27/19
    {
        //"oai33s1"
        //Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5 | DIN6))

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;

        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;
        int cc0_DIN6 = DIN6->cc0;
        int cc1_DIN6 = DIN6->cc1;

        controllability_or(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        int or1_cc0_out = cc0_out_1, or1_cc1_out = cc1_out_1;
        controllability_or(cc0_DIN3, cc1_DIN3, cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);
        int or2_cc0_out = cc0_out_1, or2_cc1_out = cc1_out_1;
        controllability_or(cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5, &cc0_out_2, &cc1_out_2);
        int or3_cc0_out = cc0_out_2, or3_cc1_out = cc1_out_2;
        controllability_or(cc0_DIN6, cc1_DIN6, cc0_out_2, cc1_out_2, &cc0_out_2, &cc1_out_2);
        int or4_cc0_out = cc0_out_2, or4_cc1_out = cc1_out_2;
        controllability_and(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        int and5_cc0_out = cc0_out_1, and5_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_and(not_co, &in_a, &in_b, or2_cc0_out, or2_cc1_out, or4_cc0_out, or4_cc1_out);
        int tempa = in_a, tempb = in_b;
        observability_or(tempb, &in_a, &in_b, or3_cc0_out, or3_cc1_out, cc0_DIN6, cc1_DIN6);
        DIN6->cco  = (DIN6->cco < in_b ? DIN6->cco : in_b);
        observability_or(in_a, &in_a, &in_b, cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5);
        DIN4->cco  = (DIN4->cco < in_a ? DIN4->cco : in_a);
        DIN5->cco  = (DIN5->cco < in_b ? DIN5->cco : in_b);

        observability_or(tempa, &in_a, &in_b, or1_cc0_out, or1_cc1_out, cc0_DIN3, cc1_DIN3);
        DIN3->cco  = (DIN3->cco < in_b ? DIN3->cco : in_b);
        observability_or(in_a, &in_a, &in_b, cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2);
        DIN1->cco  = (DIN1->cco < in_a ? DIN1->cco : in_a);
        DIN2->cco  = (DIN2->cco < in_b ? DIN2->cco : in_b);
    }
    else if(strstr(logic, "oai322s")) //updated on 9/27/19
    {
        //"oai322s1"
        //Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & (DIN6 | DIN7))

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, cc0_out_3, cc1_out_3;

        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;
        int cc0_DIN6 = DIN6->cc0;
        int cc1_DIN6 = DIN6->cc1;
        int cc0_DIN7 = DIN7->cc0;
        int cc1_DIN7 = DIN7->cc1;

        controllability_or(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        int or1_cc0_out = cc0_out_1, or1_cc1_out = cc1_out_1;
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        int or2_cc0_out = cc0_out_1, or2_cc1_out = cc1_out_1;
        controllability_or(cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5, &cc0_out_2, &cc1_out_2);
        int or3_cc0_out = cc0_out_2, or3_cc1_out = cc1_out_2;
        controllability_or(cc0_DIN6, cc1_DIN6, cc0_DIN7, cc1_DIN7, &cc0_out_3, &cc1_out_3);
        int or4_cc0_out = cc0_out_3, or4_cc1_out = cc1_out_3;
        controllability_and(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        int and5_cc0_out = cc0_out_1, and5_cc1_out = cc1_out_1;
        controllability_and(cc0_out_1, cc1_out_1, cc0_out_3, cc1_out_3, &cc0_out_1, &cc1_out_1);
        int and6_cc0_out = cc0_out_1, and6_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_and(not_co, &in_a, &in_b, and5_cc0_out, and5_cc1_out, or4_cc0_out, or4_cc1_out);
        int tempa = in_a, tempb = in_b;
        observability_or(tempb, &in_a, &in_b, cc0_DIN6, cc1_DIN6, cc0_DIN7, cc1_DIN7);
        DIN6->cco  = (DIN6->cco < in_a ? DIN6->cco : in_a);
        DIN7->cco  = (DIN7->cco < in_b ? DIN7->cco : in_b);
        observability_and(tempa, &in_a, &in_b, or2_cc0_out, or2_cc1_out, or3_cc0_out, or3_cc1_out);
        tempa = in_a;
        observability_or(in_b, &in_a, &in_b, cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5);
        DIN4->cco  = (DIN4->cco < in_a ? DIN4->cco : in_a);
        DIN5->cco  = (DIN5->cco < in_b ? DIN5->cco : in_b);

        observability_or(tempa, &in_a, &in_b, or1_cc0_out, or1_cc1_out, cc0_DIN3, cc1_DIN3);
        DIN3->cco  = (DIN3->cco < in_b ? DIN3->cco : in_b);
        observability_or(in_a, &in_a, &in_b, cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2);
        DIN1->cco  = (DIN1->cco < in_a ? DIN1->cco : in_a);
        DIN2->cco  = (DIN2->cco < in_b ? DIN2->cco : in_b);
    }
    else if(strstr(logic, "oai321s")) //updated on 9/27/19
    {
        //"oai321s1");
        //Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & DIN6)

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;

        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;
        int cc0_DIN6 = DIN6->cc0;
        int cc1_DIN6 = DIN6->cc1;

        controllability_or(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        int or1_cc0_out = cc0_out_1, or1_cc1_out = cc1_out_1;
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        int or2_cc0_out = cc0_out_1, or2_cc1_out = cc1_out_1;
        controllability_or(cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5, &cc0_out_2, &cc1_out_2);
        int or3_cc0_out = cc0_out_2, or3_cc1_out = cc1_out_2;
        controllability_and(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        int and4_cc0_out = cc0_out_1, and4_cc1_out = cc1_out_1;
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN6, cc1_DIN6, &cc0_out_1, &cc1_out_1);
        int and5_cc0_out = cc0_out_1, and5_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_and(not_co, &in_a, &in_b, and4_cc0_out, and4_cc1_out, cc0_DIN6, cc1_DIN6);
        DIN6->cco  = (DIN6->cco < in_a ? DIN6->cco : in_a);
        observability_and(in_a, &in_a, &in_b, or2_cc0_out, or2_cc1_out, or3_cc0_out, or3_cc1_out);
        int tempa = in_a, tempb = in_b;
        observability_or(tempb, &in_a, &in_b, cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5);
        DIN4->cco  = (DIN4->cco < in_a ? DIN4->cco : in_a);
        DIN5->cco  = (DIN5->cco < in_b ? DIN5->cco : in_b);
        observability_or(tempa, &in_a, &in_b, or2_cc0_out, or2_cc1_out, cc0_DIN3, cc1_DIN3);
        DIN3->cco  = (DIN3->cco < in_b ? DIN3->cco : in_b);
        observability_or(in_a, &in_a, &in_b, cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2);
        DIN1->cco  = (DIN1->cco < in_a ? DIN1->cco : in_a);
        DIN2->cco  = (DIN2->cco < in_b ? DIN2->cco : in_b);
    }
    else if(strstr(logic, "oai1112s"))
    {
        /*strcpy(gate, "oai1112s2");
        strcpy(derived, "not (DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)))");
        return deupdate_obserrived;*/

        int cc0_out_1, cc1_out_1;

        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;

        controllability_and(cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5, &cc0_out_1, &cc1_out_1);
        int and1_cc0_out = cc0_out_1, and1_cc1_out = cc1_out_1;
        controllability_or(cc0_out_1, cc1_out_1 ,cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        int or2_cc0_out = cc0_out_1, or2_cc1_out = cc1_out_1;
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        int and3_cc0_out = cc0_out_1, and3_cc1_out = cc1_out_1;
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN1, cc1_DIN1, &cc0_out_1, &cc1_out_1);
        int and4_cc0_out = cc0_out_1, and4_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_and(not_co, &in_a, &in_b, and3_cc0_out, and3_cc1_out, cc0_DIN1, cc1_DIN1);
        DIN1->cco  = (DIN1->cco < in_b ? DIN1->cco : in_b);
        observability_and(in_a, &in_a, &in_b, or2_cc0_out, or2_cc1_out, cc0_DIN2, cc1_DIN2);
        DIN2->cco  = (DIN2->cco < in_b ? DIN2->cco : in_b);
        observability_or(in_a, &in_a, &in_b, and1_cc0_out, and1_cc1_out, cc0_DIN3, cc1_DIN3);
        DIN3->cco  = (DIN3->cco < in_b ? DIN3->cco : in_b);
        observability_and(in_a, &in_a, &in_b, cc0_DIN4, cc1_DIN4, cc0_DIN5, cc1_DIN5);
        DIN4->cco  = (DIN4->cco < in_a ? DIN4->cco : in_a);
        DIN5->cco  = (DIN5->cco < in_b ? DIN5->cco : in_b);
    }
    else if(strstr(logic, "oai221s") || strstr(logic, "o221ai") )
    {
        /*strcpy(gate, "oai221s2");
        strcpy(derived, "not ((DIN1 | DIN2) & (DIN3 | DIN4) & DIN5)");
        return deupdate_obserrived;*/

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;

        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;

        controllability_or(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        int or1_cc0_out = cc0_out_1, or1_cc1_out = cc1_out_1;
        controllability_or(cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4, &cc0_out_2, &cc1_out_2);
        int or2_cc0_out = cc0_out_2, or2_cc1_out = cc1_out_2;
        controllability_and(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        int and3_cc0_out = cc0_out_1, and3_cc1_out = cc1_out_1;
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN5, cc1_DIN5, &cc0_out_1, &cc1_out_1);
        int and4_cc0_out = cc0_out_1, and4_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_and(not_co, &in_a, &in_b, and3_cc0_out, and3_cc1_out, cc0_DIN5, cc1_DIN5);
        DIN5->cco  = (DIN5->cco < in_b ? DIN5->cco : in_b);
        observability_and(in_a, &in_a, &in_b, or1_cc0_out, or1_cc1_out, or2_cc0_out, or2_cc1_out);
        int tempa = in_a, tempb = in_b;
        observability_or(tempa, &in_a, &in_b, cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2);
        DIN1->cco  = (DIN1->cco < in_a ? DIN1->cco : in_a);
        DIN2->cco  = (DIN2->cco < in_b ? DIN2->cco : in_b);
        observability_or(tempb, &in_a, &in_b, cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4);
        DIN3->cco  = (DIN3->cco < in_a ? DIN3->cco : in_a);
        DIN4->cco  = (DIN4->cco < in_b ? DIN4->cco : in_b);
    }
    else if(strstr(logic, "oai13s"))
    {
        /*strcpy(gate, "oai13s2");
        strcpy(derived, "not (DIN1 & (DIN2 | DIN3 | DIN4))");
        return derived;*/

        int cc0_out_1, cc1_out_1;

        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;

        controllability_or(cc0_DIN2, cc1_DIN2, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        int or1_cc0_out = cc0_out_1, or1_cc1_out = cc1_out_1;
        controllability_or(cc0_out_1, cc1_out_1, cc0_DIN4, cc1_DIN4, &cc0_out_1, &cc1_out_1);
        int or2_cc0_out = cc0_out_1, or2_cc1_out = cc1_out_1;
        controllability_and(cc0_DIN1, cc1_DIN1, cc0_out_1, cc1_out_1, &cc0_out_1, &cc1_out_1);
        int and3_cc0_out = cc0_out_1, and3_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_and(not_co, &in_a, &in_b, or2_cc0_out, or2_cc1_out, cc0_DIN1, cc1_DIN1);
        DIN1->cco  = (DIN1->cco < in_b ? DIN1->cco : in_b);
        observability_or(in_a, &in_a, &in_b, or1_cc0_out, or1_cc1_out, cc0_DIN4, cc1_DIN4);
        DIN4->cco  = (DIN4->cco < in_b ? DIN4->cco : in_b);
        observability_or(in_a, &in_a, &in_b, cc0_DIN2, cc1_DIN2, cc0_DIN3, cc1_DIN3);
        DIN2->cco  = (DIN2->cco < in_a ? DIN2->cco : in_a);
        DIN3->cco  = (DIN3->cco < in_b ? DIN3->cco : in_b);
    }
    else if(strstr(logic, "oai211s") || strstr(logic, "o211ai"))
    {
        //"oai211s2"
        // Q = !((DIN1 | DIN2) & DIN3 & DIN4)

        int cc0_out_1, cc1_out_1;

        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;

        controllability_or(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        int or1_cc0_out = cc0_out_1, or1_cc1_out = cc1_out_1;
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN3, cc1_DIN3, &cc0_out_1, &cc1_out_1);
        int and2_cc0_out = cc0_out_1, and2_cc1_out = cc1_out_1;
        controllability_and(cc0_out_1, cc1_out_1, cc0_DIN4, cc1_DIN4, &cc0_out_1, &cc1_out_1);
        int and3_cc0_out = cc0_out_1, and3_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_and(not_co, &in_a, &in_b, and2_cc0_out, and2_cc1_out, cc0_DIN4, cc1_DIN4);
        DIN4->cco  = (DIN4->cco < in_b ? DIN4->cco : in_b);
        observability_and(in_a, &in_a, &in_b, or1_cc0_out, or1_cc1_out, cc0_DIN3, cc1_DIN3);
        DIN3->cco  = (DIN3->cco < in_b ? DIN3->cco : in_b);
        observability_or(in_a, &in_a, &in_b, cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2);
        DIN1->cco  = (DIN1->cco < in_a ? DIN1->cco : in_a);
        DIN2->cco  = (DIN2->cco < in_b ? DIN2->cco : in_b);
    }
    else if(strstr(logic, "fadd1s") || strstr(logic, "fa_"))
    {
        // OUTS = (AIN ^ BIN) ^ CIN;OUTC = ((AIN & BIN) | (BIN & CIN) | (CIN & AIN))
        int cc0_out, cc1_out, cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;
        int cc0_AIN = AIN->cc0;
        int cc1_AIN = AIN->cc1;
        int cc0_BIN = BIN->cc0;
        int cc1_BIN = BIN->cc1;
        int cc0_CIN = CIN->cc0;
        int cc1_CIN = CIN->cc1;
                
        if(array_n(vert->outPorts) == 2)
        {
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

            controllability_xor(cc0_AIN, cc1_AIN, cc0_BIN, cc1_BIN, &cc0_out, &cc1_out);
            int xor1_cc0_out = cc0_out, xor1_cc1_out = cc1_out;
            controllability_xor(cc0_out, cc1_out, cc0_CIN, cc1_CIN, &cc0_out, &cc1_out);
            int xor2_cc0_out = cc0_out, xor2_cc1_out = cc1_out;
            
            int in_a = 0, in_b = 0;
            observability_xor(OUTS->cco, &in_a, &in_b, xor1_cc0_out, xor1_cc1_out, cc0_CIN, cc1_CIN);
            CIN->cco  = (CIN->cco < in_b ? CIN->cco : in_b);

            observability_xor(in_a, &in_a, &in_b, cc0_AIN, cc1_AIN, cc0_BIN, cc1_BIN);
            AIN->cco  = (AIN->cco < in_a ? AIN->cco : in_a);
            BIN->cco  = (BIN->cco < in_b ? BIN->cco : in_b);

            controllability_and(cc0_AIN, cc1_AIN, cc0_BIN, cc1_BIN, &cc0_out, &cc1_out);
            int and1_cc0_out = cc0_out, and1_cc1_out = cc1_out;
            controllability_and(cc0_BIN, cc1_BIN, cc0_CIN, cc1_CIN, &cc0_out_1, &cc1_out_1);
            int and2_cc0_out = cc0_out, and2_cc1_out = cc1_out;
            controllability_and(cc0_CIN, cc1_CIN, cc0_AIN, cc1_AIN, &cc0_out_2, &cc1_out_2);
            int and3_cc0_out = cc0_out, and3_cc1_out = cc1_out;

            controllability_or(cc0_out, cc1_out, cc0_out_1, cc1_out_1, &cc0_out, &cc1_out);
            int or4_cc0_out = cc0_out, or4_cc1_out = cc1_out;
            controllability_or(cc0_out, cc1_out, cc0_out_2, cc1_out_2, &cc0_out, &cc1_out);
            int or5_cc0_out = cc0_out, or5_cc1_out = cc1_out;
            
            observability_or(OUTC->cco, &in_a, &in_b, or4_cc0_out, or4_cc1_out, and3_cc0_out, and3_cc1_out);
            int tempa = in_a, tempb = in_b;

            observability_and(tempb, &in_a, &in_b, cc0_CIN, cc1_CIN, cc0_AIN, cc1_AIN);
            CIN->cco  = (CIN->cco < in_a ? CIN->cco : in_a);
            AIN->cco  = (AIN->cco < in_b ? AIN->cco : in_b);

            observability_or(tempa, &in_a, &in_b, and1_cc0_out, and1_cc1_out, and2_cc0_out, and2_cc1_out);
            tempa = in_a, tempb = in_b;
            observability_and(tempb, &in_a, &in_b, cc0_BIN, cc1_BIN, cc0_CIN, cc1_CIN);
            BIN->cco  = (BIN->cco < in_a ? BIN->cco : in_a);
            CIN->cco  = (CIN->cco < in_b ? CIN->cco : in_b);
            observability_and(tempa, &in_a, &in_b, cc0_AIN, cc1_AIN, cc0_BIN, cc1_BIN);
            AIN->cco  = (AIN->cco < in_a ? AIN->cco : in_a);
            BIN->cco  = (BIN->cco < in_b ? BIN->cco : in_b);

        }
        else
        {
            if(strstr(array_fetch(char*, vert->outPorts, 0) , "OUTS"))
            {
                OUTS = array_fetch(edge*, vert->outEdges, 0);
                
                //logic for obs from only OUTS
                controllability_xor(cc0_AIN, cc1_AIN, cc0_BIN, cc1_BIN, &cc0_out, &cc1_out);
                int xor1_cc0_out = cc0_out, xor1_cc1_out = cc1_out;
                controllability_xor(cc0_out, cc1_out, cc0_CIN, cc1_CIN, &cc0_out, &cc1_out);
                int xor2_cc0_out = cc0_out, xor2_cc1_out = cc1_out;
                
                int in_a = 0, in_b = 0;
                observability_xor(OUTS->cco, &in_a, &in_b, xor1_cc0_out, xor1_cc1_out, cc0_CIN, cc1_CIN);
                CIN->cco  = (CIN->cco < in_b ? CIN->cco : in_b);

                observability_xor(in_a, &in_a, &in_b, cc0_AIN, cc1_AIN, cc0_BIN, cc1_BIN);
                AIN->cco  = (AIN->cco < in_a ? AIN->cco : in_a);
                BIN->cco  = (BIN->cco < in_b ? BIN->cco : in_b);                         
            }
            else
            {
                OUTC = array_fetch(edge*, vert->outEdges, 0);
                //logic for obs from only OUTC
                controllability_and(cc0_AIN, cc1_AIN, cc0_BIN, cc1_BIN, &cc0_out, &cc1_out);
                int and1_cc0_out = cc0_out, and1_cc1_out = cc1_out;
                controllability_and(cc0_BIN, cc1_BIN, cc0_CIN, cc1_CIN, &cc0_out_1, &cc1_out_1);
                int and2_cc0_out = cc0_out, and2_cc1_out = cc1_out;
                controllability_and(cc0_CIN, cc1_CIN, cc0_AIN, cc1_AIN, &cc0_out_2, &cc1_out_2);
                int and3_cc0_out = cc0_out, and3_cc1_out = cc1_out;

                controllability_or(cc0_out, cc1_out, cc0_out_1, cc1_out_1, &cc0_out, &cc1_out);
                int or4_cc0_out = cc0_out, or4_cc1_out = cc1_out;
                controllability_or(cc0_out, cc1_out, cc0_out_2, cc1_out_2, &cc0_out, &cc1_out);
                int or5_cc0_out = cc0_out, or5_cc1_out = cc1_out;

                int in_a, in_b;
                observability_or(OUTC->cco, &in_a, &in_b, or4_cc0_out, or4_cc1_out, and3_cc0_out, and3_cc1_out);
                int tempa = in_a, tempb = in_b;

                observability_and(tempb, &in_a, &in_b, cc0_CIN, cc1_CIN, cc0_AIN, cc1_AIN);
                CIN->cco  = (CIN->cco < in_a ? CIN->cco : in_a);
                AIN->cco  = (AIN->cco < in_b ? AIN->cco : in_b);

                observability_or(tempa, &in_a, &in_b, and1_cc0_out, and1_cc1_out, and2_cc0_out, and2_cc1_out);
                tempa = in_a, tempb = in_b;
                observability_and(tempb, &in_a, &in_b, cc0_BIN, cc1_BIN, cc0_CIN, cc1_CIN);
                BIN->cco  = (BIN->cco < in_a ? BIN->cco : in_a);
                CIN->cco  = (CIN->cco < in_b ? CIN->cco : in_b);
                observability_and(tempa, &in_a, &in_b, cc0_AIN, cc1_AIN, cc0_BIN, cc1_BIN);
                AIN->cco  = (AIN->cco < in_a ? AIN->cco : in_a);
                BIN->cco  = (BIN->cco < in_b ? BIN->cco : in_b);
            }
        }
    }
    else if(strstr(logic, "oai24s")) //updated on 9/27/19
    {
        //"oai24s1"
        // Q = !((DIN1 | DIN2) & (DIN3 | DIN4 | DIN5 | DIN6))

        int cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2;

        int cc0_DIN1 = DIN1->cc0;
        int cc1_DIN1 = DIN1->cc1;
        int cc0_DIN2 = DIN2->cc0;
        int cc1_DIN2 = DIN2->cc1;
        int cc0_DIN3 = DIN3->cc0;
        int cc1_DIN3 = DIN3->cc1;
        int cc0_DIN4 = DIN4->cc0;
        int cc1_DIN4 = DIN4->cc1;
        int cc0_DIN5 = DIN5->cc0;
        int cc1_DIN5 = DIN5->cc1;
        int cc0_DIN6 = DIN6->cc0;
        int cc1_DIN6 = DIN6->cc1;

        controllability_or(cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2, &cc0_out_1, &cc1_out_1);
        int or1_cc0_out = cc0_out_1, or1_cc1_out = cc1_out_1;
        controllability_or(cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4, &cc0_out_2, &cc1_out_2);
        int or2_cc0_out = cc0_out_2, or2_cc1_out = cc1_out_2;
        controllability_or(cc0_out_2, cc1_out_2, cc0_DIN5, cc1_DIN5, &cc0_out_2, &cc1_out_2);
        int or3_cc0_out = cc0_out_2, or3_cc1_out = cc1_out_2;
        controllability_or(cc0_out_2, cc1_out_2, cc0_DIN6, cc1_DIN6, &cc0_out_2, &cc1_out_2);
        int or4_cc0_out = cc0_out_2, or4_cc1_out = cc1_out_2;
        controllability_and(cc0_out_1, cc1_out_1, cc0_out_2, cc1_out_2, &cc0_out_1, &cc1_out_1);
        int and5_cc0_out = cc0_out_1, and5_cc1_out = cc1_out_1;

        int not_co = 0, in_a = 0, in_b=0;
        observability_not(edgOut->cco, &not_co);
        observability_and(not_co, &in_a, &in_b, or1_cc0_out, or1_cc1_out, or4_cc0_out, or4_cc1_out);
        int tempa = in_a, tempb = in_b;
        observability_or(tempa, &in_a, &in_b, cc0_DIN1, cc1_DIN1, cc0_DIN2, cc1_DIN2);
        DIN1->cco  = (DIN1->cco < in_a ? DIN1->cco : in_a);
        DIN2->cco  = (DIN2->cco < in_b ? DIN2->cco : in_b);
        observability_or(tempb, &in_a, &in_b, or3_cc0_out, or3_cc1_out, cc0_DIN6, cc1_DIN6);
        DIN6->cco  = (DIN6->cco < in_b ? DIN6->cco : in_b);
        observability_or(in_a, &in_a, &in_b, or2_cc0_out, or2_cc1_out, cc0_DIN5, cc1_DIN5);
        DIN5->cco  = (DIN5->cco < in_b ? DIN5->cco : in_b);
        observability_or(in_a, &in_a, &in_b, cc0_DIN3, cc1_DIN3, cc0_DIN4, cc1_DIN4);
        DIN3->cco  = (DIN3->cco < in_a ? DIN3->cco : in_a);
        DIN4->cco  = (DIN4->cco < in_b ? DIN4->cco : in_b);
    }
    else if(strstr(logic, "i1s") ||
            strstr(logic, "hi1s")||
            strstr(logic, "ib1s")
            )
    {
        edgIn = array_fetch(edge*, vert->inEdges, 0);
        //edgIn->cco = (edgIn->cco < (edgOut->cco + 1)?edgIn->cco:(edgOut->cco + 1));
        edgIn->cco = (edgIn->cco < (edgOut->cco)?edgIn->cco:(edgOut->cco));
    }
    else{
        //strcpy(derived, "*** Not known ***");
        printf("---> %s\n", vert->type->name);
        printf("\n!!ERROR: Observability: new cell\n");
    }
    free(logic);
}

/**
The function for sorting the graph.
@param G: - graph data structure
@param *inputFileLocation: - input file with location
@note
\n Topological sorting of graph by considering all sequential elements as scan-FF
*/
array_t* sort_for_vipr_scan(graph* G, char *inputFileLocation)
{
    int i, j, k, l, time = 0, topoCnt = 0, flag, comEdgFlag=0, tempCount;
    vertex* v, *u, *s, *flagv;
    array_t *orgvList = G->vertexArr;
    array_t *toVtxArr, *commfromVtxArr;
    int nNodes = array_n(orgvList), clrbFlag;

    int* d, *flagArr, *visited;
    int inpCnt = 0;
    array_t* sorted = array_alloc(vertex*, 1);
    array_t* unsorted = array_alloc(vertex*, 1);
    edge* edg, *tempEdge, *tempfbEdge, *origfbEdge;
    vertex* sVtx, *vtx, *fbVtx;
    vertex* toVtx;
    vertex* outVtx;
    array_t *outEdges, *vList, *combList, *dffList, *dffNonScan,
            *dffScan, *fbEdges, *fromV_list, *toV_list;


    fromV_list = array_alloc(vertex*, 1);
    toV_list = array_alloc(vertex*, 1);
    fbEdges = array_alloc(edge*, 1);

    combList = G->combGates;

    dffList = G->seqGates;

    dffNonScan = G->nonscanDFF;

    dffScan = G->scanDFF;

    vList = combList;
    nNodes = array_n(vList);
    d = (int*)malloc(sizeof(int)*nNodes);
    flagArr = (int*)malloc(sizeof(int)*nNodes);
    visited = (int*)malloc(sizeof(int)*nNodes);

    /* assign unique id to all vertices */
    nNodes = array_n(combList);
    for(i = 0; i < nNodes; i ++)     //update combinational index
    {
        visited[i] = FALSE;
        outVtx = array_fetch(vertex*, vList, i);
        outVtx->idx = i;
    }
    nNodes = array_n(vList);
    /* topological sort of the vertices */
    for(i = 0; i < nNodes; i ++)
    {

        outVtx = array_fetch(vertex*, vList, i);
        //printf("%s", outVtx->name);
        inpCnt = 0;

        for(j = 0; j < array_n(outVtx->inEdges); j ++)
        {
            edg = array_fetch(edge*, outVtx->inEdges, j);
            //printf("\t%s", edg->name);
            if(
                    !(!strncmp(edg->name,"1'b0",4) || !strncmp(edg->name,"GND",4)) &&
                    !(!strncmp(edg->name,"1'b1",4) || !strncmp(edg->name,"VDD",4)) &&
                    !edg->bPrimIn &&                                                 //if primary do not increase count
                    !(edg->fromNode && strstr(edg->fromNode->type->name, "df"))    //if sdff do not increase count
                    )
            {
                inpCnt++;
            }
        }


        d[outVtx->idx] = inpCnt;
        //printf("\t%d\n", inpCnt);
        array_insert(vertex*, unsorted, outVtx->idx, outVtx);
    }

    for(i = 0; i < nNodes; i ++)
    {
        for(j=0;j< nNodes;j++)
            flagArr[j] = false;
        //printf("***Iteration: %d\n", i);
        for(j = 0; j < nNodes; j ++)
        {
            //printf("%s\t%d\t%d\n", array_fetch(vertex*, unsorted, j)->name, d[j], visited[j]);
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
            {
                continue; //skip if false
            }

            sVtx = array_fetch(vertex*, unsorted, l); //grab vertex
            //printf("Vertex: %s\t inDegree: %d\n", sVtx->name, d[sVtx->idx]);
            array_insert_last(vertex*, sorted, sVtx);
            //update_controllability(G, l, fbEdges);

            sVtx->topoIdx = ++topoCnt;
            outEdges = sVtx->outEdges;
            //tp update inDegree count
            for(j = 0; j < array_n(outEdges); j ++)
            {
                edg = array_fetch(edge*, outEdges, j);
                toVtxArr = edg->toNodes;
                for(k = 0; k < array_n(toVtxArr); k++)
                {
                    toVtx = array_fetch(vertex*, toVtxArr, k);
                    if (strstr(toVtx->type->name, "df"))
                        continue;
                    d[toVtx->idx] --;
                    //printf("%s d %d ", toVtx->name, d[toVtx->idx]);
                }
                //printf("\n");
            }
        }
    }
    flagv = NULL;
    for(i = 0; i < array_n(vList); i ++)
    {
        s = array_fetch(vertex*, vList, i);
        if(d[s->idx])
        {
            flagv = s;
            printf("\nWARNING: Violation of topological order for vertex %s. Number of untraversed input edges: %d\n", flagv->name, d[flagv->idx]);
            isCombLoop = true;
        }
    }
    //if (flagv)
    //printf("\nERROR: Violation of topological order for vertex %s. Number of untraversed input edges: %d\n", flagv->name, d[flagv->idx]);

    free(d);
    free(visited);
    free(flagArr);
    array_free(unsorted);
    
    array_free(fromV_list);
    array_free(toV_list);
    array_free(fbEdges);

    return sorted;
}

/**
The function for sorting the graph.
@param G: - graph data structure
@param *inputFileLocation: - input file with location
@note
\n Topological sorting of graph by considering all sequential elements as it is(scan/non-scan).
*/
array_t* sort_for_vipr(graph* G, char *inputFileLocation)
{
    int i, j, k, l, time = 0, topoCnt = 0, flag, comEdgFlag=0, tempCount;
    vertex* v, *u, *s, *flagv;
    array_t *orgvList = G->vertexArr;
    array_t *toVtxArr, *commfromVtxArr;
    int nNodes = array_n(orgvList), clrbFlag;

    int* d, *flagArr, *visited, *unrolling_flag;;
    int inpCnt = 0;
    array_t* sorted = array_alloc(vertex*, 1);
    array_t* unsorted = array_alloc(vertex*, 1);
    edge* edg, *tempEdge, *tempfbEdge, *origfbEdge;
    vertex* sVtx, *vtx, *fbVtx, *tempVtx1, *tempVtx2, *vtx_from_fromList, *vtx_from_toList;
    vertex* toVtx;
    vertex* outVtx;
    array_t *outEdges, *vList, *combList, *dffList, *dffNonScan,
            *dffScan, *fbEdges, *fromV_list, *toV_list;

    int **cycle_matrix, **cycle_matrix_flag, **all_cycle_matrix;
    //change number of columns depending on length of the cycle
    int rows, columns=100;		// number of elements in one cycle

    int numberUnroll = 0;

    fromV_list = array_alloc(vertex*, 1);
    toV_list = array_alloc(vertex*, 1);
    fbEdges = array_alloc(edge*, 1);

    combList = G->combGates;

    dffList = G->seqGates;

    dffNonScan = G->nonscanDFF;

    dffScan = G->scanDFF;

    vList = array_join(combList, dffNonScan);

    nNodes = array_n(vList);
    d = (int*)malloc(sizeof(int)*nNodes);
    flagArr = (int*)malloc(sizeof(int)*nNodes);
    visited = (int*)malloc(sizeof(int)*nNodes);

    // assign unique id to combinational and nonScan FF vertices
    nNodes = array_n(combList);
    //update combinational index

    for(i = 0; i < array_n(G->vertexArr); i ++)
    {
        outVtx = array_fetch(vertex*, G->vertexArr, i);
        outVtx->idx = -1;
        outVtx->totalFbCount = 0;
        //printf("%s\t%d\n", outVtx->name, outVtx->idx);
    }

    for(i = 0; i < nNodes; i ++)        //update combinational index
    {
        visited[i] = FALSE;
        outVtx = array_fetch(vertex*, vList, i);
        outVtx->idx = i;
    }
    //update nonScan index
    for(i = 0; i < array_n(dffNonScan); i ++)
    {
        visited[i + nNodes] = FALSE;
        outVtx = array_fetch(vertex*, dffNonScan, i);
        outVtx->idx = i + nNodes;
        //printf("nonScan: %s\t%d\n", outVtx->name, outVtx->idx);
    }

    //consider combinational and nonScan FF while sorting the graph
    nNodes = array_n(vList);

    // topological sort of the vertices
    for(i = 0; i < nNodes; i ++)
    {
        outVtx = array_fetch(vertex*, vList, i);
        inpCnt = 0;
        //nonScan FF
        //For inDegree, each input is considered except CLK input
        if(! strstr(outVtx->type->name, "sdff") && strstr(outVtx->type->name, "dff"))
        {
            //check for enable and DIN signal
            int tempinDegree = 0;
            for(int k=0; k<array_n(outVtx->inEdges); k++)
            {
                //if(!strstr(array_fetch(char*, outVtx->inPorts,k), ".CLK"))
                //{
                if(array_fetch(edge*, outVtx->inEdges,k)->fromNode)
                    tempinDegree++;
                //}
            }
            inpCnt = tempinDegree;
        }
            //Combinational inDegree count is increased
            //scanFF count is set to 0
        else
        {
            for(j = 0; j < array_n(outVtx->inEdges); j ++)
            {
                edg = array_fetch(edge*, outVtx->inEdges, j);
                if(
                        !(!strncmp(edg->name,"1'b0",4) || !strncmp(edg->name,"GND",4)) &&
                        !(!strncmp(edg->name,"1'b1",4) || !strncmp(edg->name,"VDD",4)) &&
                        !edg->bPrimIn &&                                                 //if primary, do not increase count
                        !(edg->fromNode && strstr(edg->fromNode->type->name, "sdf"))    //if sdff, do not increase count
                        )
                {
                    inpCnt++;
                }
            }
        }

        d[outVtx->idx] = inpCnt;
        array_insert(vertex*, unsorted, outVtx->idx, outVtx);
    }

    // Reading file to update inDegree considering feedback loop
    char *opFileName = (char*)malloc(sizeof(char)*10000);
    strcpy(opFileName, inputFileLocation);
    strcat(opFileName, "/modify_inDegree.csv");

    FILE *inputFile = fopen(opFileName, "r");
    char buffer[1000];
    char *tempWord;
    int lineNo = 1;
    int counter2 = 0;
    while (fgets(buffer,1000,inputFile) != NULL)
    {
        if(lineNo == 1){
            lineNo++;
            continue;
        }
        array_t *data = string_strip(buffer, ",");
        tempWord = array_fetch(char*, data, 0);         //vertex name
        vertex* vert = findVertex(strdup(tempWord), G->vertexArr);

        if(vert){
            tempWord = array_fetch(char*, data, 1);     //inDegree count
            vert->feedbackCount = atoi(tempWord);       //number of feedbacks to a vertex
            if(vert->feedbackCount)
            {
                counter2++;
                //vert->feedbackCount++;
            }
        }
        else{
            printf("*****Vertex Not found in graph*****(controllability_inDegree): %s\n", tempWord);
            exit(0);
        }
    }
    fclose(inputFile);
    free(opFileName);

    // Reading file to modify connection between loops
    opFileName = (char*)malloc(sizeof(char)*10000);
    strcpy(opFileName, inputFileLocation);
    strcat(opFileName, "/modify_connection.csv");

    inputFile = fopen(opFileName, "r");
    lineNo = 1;

    while (fgets(buffer,1000,inputFile) != NULL)
    {
        if(lineNo == 1){
            lineNo++;
            continue;
        }
        array_t *data = string_strip(buffer, ",");

        tempWord = array_fetch(char*, data, 0);         //from vert name
        vertex* fromVert = findVertex(strdup(tempWord), G->vertexArr);

        tempWord = array_fetch(char*, data, 1);         //to vert name
        vertex* toVert = findVertex(strdup(tempWord), G->vertexArr);
        //printf("fbEdge\tfromV\ttoV\n");
        if(fromVert && toVert){                         //Both vertices exist in graph
            comEdgFlag = 0;
            for(int l=0; l<array_n(fromVert->outEdges);l++)     //looking at output edge name of fromVertex
            {
                edg = array_fetch(edge*, fromVert->outEdges, l);
                //printf("outputEdge: %s\n", edg->name);
                for(int m=0; m<array_n(toVert->inEdges);m++)    //looking at input edge name of toVertex
                {
                    tempEdge = array_fetch(edge* ,toVert->inEdges, m);
                    //if names match --> feedback edge
                    //breaking edge : set default feature values to edge
                    if(strstr(edg->name, tempEdge->name)
                       && (strlen(edg->name) == strlen(tempEdge->name)) )
                    {
                        edg->cco = 0;
                        //edg->cc1 = 1;
                        //comEdgFlag = 1;
                        array_insert_last(edge*, fbEdges, edg);
                        array_insert_last(vertex*, fromV_list, fromVert);
                        array_insert_last(vertex*, toV_list, toVert);
                        //printf("fbEdge: %s\n", edg->name);
                        //printf("fromVt: %s\n", fromVert->name);
                        //printf("toVert: %s\n", toVert->name);
                    }
                }
            }
        }
        else{
            printf("*****Vertex Not found in graph*****(controllability_connection): %s\n", tempWord);
            exit(0);
        }
    }
    fclose(inputFile);
    free(opFileName);

    //update it later
    //cycle_matrix = (int**)malloc(array_n(fbEdges) * sizeof(int*));
    cycle_matrix = (int**)malloc(array_n(G->vertexArr) * sizeof(int*));
    cycle_matrix_flag = (int**)malloc(array_n(G->vertexArr) * sizeof(int*));
    all_cycle_matrix = (int**)malloc(array_n(G->vertexArr) * sizeof(int*));
    unrolling_flag = (int*)malloc(array_n(G->vertexArr) * sizeof(int*));;
    for (int i = 0; i < array_n(G->vertexArr); i++) {
        cycle_matrix[i] = (int*)malloc(array_n(G->vertexArr) * sizeof(int));
        cycle_matrix_flag[i] = (int*)malloc(array_n(G->vertexArr) * sizeof(int));
        all_cycle_matrix[i] = (int*)malloc(array_n(G->vertexArr) * sizeof(int));
    }
    /*
    for(int i=0; i<array_n(fbEdges); i++)
    {
        for(int j=0; j<=array_n(fbEdges); j++) {
            cycle_matrix[i][j] = -1;
        }
    }
    */
    for(int i=0; i<array_n(G->vertexArr); i++)
    {
        for(int j=0; j<array_n(G->vertexArr); j++) {
            cycle_matrix[i][j] = -1;
            cycle_matrix_flag[i][j] = -1;
            all_cycle_matrix[i][j] = -1;
        }
        unrolling_flag[i] = 0;
    }
    //store cycles in matrix


    // Reading file to modify connection between loops
    opFileName = (char*)malloc(sizeof(char)*10000);
    strcpy(opFileName, inputFileLocation);
    strcat(opFileName, "/all_cycles.csv");

    inputFile = fopen(opFileName, "r");
    int totalCycle = 0;
    while (fgets(buffer,1000,inputFile) != NULL)
    {
        array_t *data = string_strip(buffer, ",");
        //printf("Data: %d", array_n(data));
        for(int i=0; i<array_n(data)-1; i++)
        {
            tempWord = array_fetch(char*, data, i);         //vert name
            //printf("i: %d\t%s\n", i, tempWord);
            vertex* cycleVert = findVertex(strdup(tempWord), G->vertexArr);
            if(cycleVert)
            {
                cycle_matrix_flag[totalCycle][i] = cycleVert->idx;
                all_cycle_matrix[totalCycle][i] = cycleVert->idx;
            }
            else
            {
                printf("*****Vertex Not found in graph*****(all_cycles): %s--\n", tempWord);
                exit(0);
            }

        }
        totalCycle++;
    }
    fclose(inputFile);
    free(opFileName);

    printf("Printing all fb flag:\n");
    for(int i=0; i<totalCycle; i++)
    {
        for(int j=0; j<=array_n(G->vertexArr); j++) {
            if( all_cycle_matrix[i][j] == -1)
                break;
            printf("%d\t", all_cycle_matrix[i][j]);
        }
        printf("\n");
    }
    printf("Printing all fb flag done:\n");


    int existEdge = 0, fromVindex;
    tempCount = 0;
    for(int i=0; i<array_n(fbEdges); i++)
    {
        fromVindex = -1;
        existEdge = 0;
        //checking if it already exists or not?
        for(int j=0; j<tempCount; j++)
        {
            if(cycle_matrix[j][0] == array_fetch(vertex*, fromV_list,i) -> idx)
            {
                fromVindex = j;
                existEdge = 1;
                break;
            }
        }
        //vertex index does not exist in list
        if(existEdge == 0)
        {
            //adding fromV and toV
            //printf("First time: %d\n", tempCount);
            cycle_matrix[tempCount][0] = array_fetch(vertex*, fromV_list,i) -> idx;
            cycle_matrix[tempCount][1] = array_fetch(vertex*, toV_list,i) -> idx;
            //printf("First time: %d\t%d\t%d\n", tempCount, cycle_matrix[tempCount][0], cycle_matrix[tempCount][1]);
            tempCount++;
        }
            //vertex index does exist in list
        else
        {
            //printf("Already exists\n");
            //adding fromV and toV wherver empty space is found
            for(int k=0; k<=array_n(fbEdges); k++)
            {
                //j --> here we found the matching vertex
                //printf("j: %d\tk: %d\t %d\n", fromVindex, k, cycle_matrix[fromVindex][k]);
                if(cycle_matrix[fromVindex][k] == -1)
                {
                    cycle_matrix[fromVindex][k] = array_fetch(vertex*, toV_list,i) -> idx;
                    break;
                }

            }
        }
    }
    /*
    printf("Printing all fb:\n");
    for(int i=0; i<tempCount; i++)
    {
        for(int j=0; j<=array_n(fbEdges); j++) {
            if( cycle_matrix[i][j] == -1)
                break;
            printf("%d\t", cycle_matrix[i][j]);
        }
        printf("\n");
    }
    printf("Printing all fb done:\n");
    */

    printf("Matrix of fromV and all corresponding toV: \n");
    for(int i=0; i<tempCount; i++){
        for(int j=0; j<=array_n(fbEdges); j++)//latest change
        {
            if(cycle_matrix[i][j] == -1)
                break;
            if(j == 0)
            {
                printf("From: %d\t : ", cycle_matrix[i][j]);
                continue;
            }
            //printf("**: %d\n", cycle_matrix[i][j]);
            //find vertex from its idx and update totalFbCount
            for(int k=0; k<array_n(G->vertexArr); k++)
            {
                if(array_fetch(vertex*, G->vertexArr, k)->idx == cycle_matrix[i][j])
                {
                    array_fetch(vertex*, G->vertexArr, k)->totalFbCount++;
                    //printf("Count increased\n");
                }

            }
            printf("%d\t", cycle_matrix[i][j]);
        }
        printf("\n");
    }
    /*
    for(int i=0; i<array_n(toV_list); i++)
    {
        printf("%s: %d\n", array_fetch(vertex*, toV_list, i)->name, array_fetch(vertex*, toV_list, i)->totalFbCount );
    }
    */
    //Finally updating inDegree count of respective vertices
    int updateCount = 0;
    for(int i=0; i<array_n(unsorted); i++)
    {
        outVtx = array_fetch(vertex*, unsorted, i);
        if(outVtx->feedbackCount)
            printf("Updating inDegree: %s, %d\n", outVtx->name, outVtx->totalFbCount);
        //d[outVtx->idx] = d[outVtx->idx] - outVtx->feedbackCount;
        d[outVtx->idx] = d[outVtx->idx] - outVtx->totalFbCount;
        //inDegree count should not be less that 0.
        if(d[outVtx->idx] < 0)
            printf("Debug vertex: %s\n", outVtx->name);
        d[outVtx->idx] = d[outVtx->idx] < 0 ? 0 : d[outVtx->idx] ;
        if(outVtx->feedbackCount)
        {
            updateCount++;
        }
    }

    //inDegree Algorithm starts here
    for(i = 0; i < nNodes; i ++)
    {
        for(j=0;j< nNodes;j++)
            flagArr[j] = false;
        //checking if any vertex is ready to be processed and not considering already processed vertex
        for(j = 0; j < nNodes; j ++)
        {
            if(d[j] == 0 && visited[j] == FALSE)
            {
                visited[j] = TRUE;
                sVtx = array_fetch(vertex*, unsorted, j);
                flagArr[j] = true;
            }
            //printf("%s: %d\n", array_fetch(vertex*, unsorted, j)->name, d[j]);
        }

        for(l=0;l<nNodes;l++)
        {
            if(!flagArr[l])
            {
                continue; //skip if false
            }

            sVtx = array_fetch(vertex*, unsorted, l);               //grab vertex
            array_insert_last(vertex*, sorted, sVtx);               //add vertex to sorted array list

            //********************************************************
            //printf("Sorted V: %s\n", sVtx->name);
            sVtx->topoIdx = ++topoCnt;
            outEdges = sVtx->outEdges;

            //to update inDegree count
            for(j = 0; j < array_n(outEdges); j ++)
            {

                edg = array_fetch(edge*, outEdges, j);
                toVtxArr = edg->toNodes;
                clrbFlag = 0;

                comEdgFlag = 0;
                //check if this edge belongs to fb edge list
                for(int m=0; m<array_n(fbEdges); m++)
                {
                    tempfbEdge = array_fetch(edge*, fbEdges, m);
                    if (strstr(edg->name, tempfbEdge->name) &&
                        (strlen(edg->name) == strlen(tempfbEdge->name)))
                    {
                        comEdgFlag = 1;
                        break;
                    }
                }

                //edge belongs to fbEdge list
                //check if it really is a fb edge or not?
                if(comEdgFlag)
                {
                    //check fromV and toV are matching or not
                    //fdEdge is between fromV and toV
                    //sVtx is fromV
                    //edg is fbEdge found
                    for(int k=0; k<tempCount; k++)
                    {
                        if(cycle_matrix[k][0] == sVtx->idx)
                        {
                            fromVindex = k;
                            //printf("Comming from vertex: %d\n", cycle_matrix[k][0]);
                            break;
                        }
                    }
                    for(int m=0; m<array_n(toVtxArr); m++)
                    {
                        toVtx = array_fetch(vertex*, toVtxArr, m);
                        //consider next vertice of current vertex
                        //check if it is there in list of fb vertices
                        int fbVertex = 0;
                        for(int n=0; n<array_n(fbEdges); n++)
                        {
                            if(cycle_matrix[fromVindex][n] == -1)
                                break;
                            if (toVtx->idx == cycle_matrix[fromVindex][n])
                            {
                                //this pair forms cycle
                                //printf("Inside: %d\t%d\n", sVtx->idx, toVtx->idx);
                                fbVertex = 1;
                                break;
                            }
                        }
                        if(fbVertex)
                        {
                            //printf("Outside: %d\t%d\n", sVtx->idx, toVtx->idx);
                            continue;
                        }
                        else if (strstr(toVtx->type->name, "sdff") || strstr(toVtx->type->name, "sdf"))
                            continue;
                        else
                        {
                            //not a fbV decrease count
                            //printf("Before: %d\n", d[toVtx->idx]);
                            d[toVtx->idx] --;
                            //printf("After: %d\n", d[toVtx->idx]);
                            //if(d[toVtx->idx] < 0)
                                //printf("Check nested if while updating inDegree: %s\n", toVtx->name);
                            d[toVtx->idx] = d[toVtx->idx] < 0 ? 0 : d[toVtx->idx];
                        }
                    }
                    
                }
                else
                {
                    for(k = 0; k < array_n(toVtxArr); k++)
                    {
                        toVtx = array_fetch(vertex*, toVtxArr, k);
                        for(int l=0; l<array_n(toVtx->inEdges); l++)
                        {
                            tempEdge = array_fetch(edge*, toVtx->inEdges, l);
                            if( strstr(tempEdge->name, edg->name) && ( strstr(array_fetch(char*, toVtx->inPorts, l),"CLRB") || strstr(array_fetch(char*, toVtx->inPorts, l),"SETB") ))
                            {
                                clrbFlag = 1;
                                break;
                            }
                        }
                        if (strstr(toVtx->type->name, "sdff") || strstr(toVtx->type->name, "sdf"))// || clrbFlag == 1)
                            continue;
                        else
                        {
                            d[toVtx->idx] --;
                            //if(d[toVtx->idx] < 0)
                            //printf("Check code after nested if while updating inDegree\n");
                            d[toVtx->idx] = d[toVtx->idx] < 0 ? 0 : d[toVtx->idx];
                        }
                    }
                }
            }
        }
        
    }

    for (int i = 0; i < array_n(G->vertexArr); i++) {
        free(cycle_matrix[i]);
        free(cycle_matrix_flag[i]);
        free(all_cycle_matrix[i]);
    }
    free(cycle_matrix);
    free(cycle_matrix_flag);
    free(all_cycle_matrix);

    flagv = NULL;
    int errorFlag = 0;
    for(i = 0; i < array_n(vList); i ++)
    {
        s = array_fetch(vertex*, vList, i);
        if(d[s->idx])
        {
            flagv = s;
            printf("\nWARNING: (Observability) Violation of topological order for vertex %s. Number of untraversed input edges: %d\n", flagv->name, d[flagv->idx]);
            errorFlag = 1;
            isCombLoop = true;
        }
    }
    if (flagv)
        printf("\nWARNING: Violation of (obs)topological order for vertex %s. Number of untraversed input edges: %d\n", flagv->name, d[flagv->idx]);
    if(errorFlag)
    {
        printf("**Toposort not working for: **\n");
        printf("%s\n", inputFileLocation);
    }

    free(d);
    free(visited);
    free(flagArr);
    array_free(unsorted);
    array_free(fromV_list);
    array_free(toV_list);
    array_free(fbEdges);
    array_free(vList);
    return sorted;
}

/**
The function updates observability of primary output gates and evaluates feature value by  
sorting the graph with helper function.
@param G: - graph data structure
@param scanFlag: - scan-FF flag
@note
\n Initialisation of primary outputs to default values and updating feature values
*/

/**
 * @brief Function to extract combinational observability.
 * 
 * @param G                     - CAST graph data structure.
 * @param inputFileLocation     - Flattened gate-level netlist.
 * @param scanFlag              - Scan flag set to 1.
 * @param sorted                - Topologically sorted list of vertices.
 * 
 * @note
 * 
 * -# Primary output and pseudo primary putput edges are assigned default values.
 * -# update_observability() is valled to extract the features.
 * -# Final results are stored in result_scoap.csv file.
 */
void observability(graph *G, char *inputFileLocation, int scanFlag, array_t* sorted)
{
    //array_t* sorted = array_alloc(vertex*, 1);
    array_t *dffScan , *dffnonScan;
    vertex* vert;
    edge* edg;
    int notKnow_count = 0, totalCycle = 0, numberUnroll = 0;

    FILE *inputFile;

    //if(scanFlag)
    //    sorted = sort_for_vipr_scan(G, inputFileLocation);
    //else
    //    sorted = sort_for_vipr(G, inputFileLocation);
    
    char *opFileName = (char*)malloc(sizeof(char)*10000);
    strcpy(opFileName, inputFileLocation);
    strcat(opFileName, "/result_scoap_all.csv");

    FILE *outFile;
    if(debug)
    {
        outFile = fopen(opFileName, "w");
        fprintf(outFile, "%s,%s,%s,%s,%s\n", "Net_name", "cc_0", "cc_1", "Obs", "Org_Net_name");
    }    
    //update all the edges with cco
    for(size_t i=0; i<array_n(G->primOutEdges); i++){
        edg = array_fetch(edge*, G->primOutEdges, i);
        edg->cco = 0;
    }

    //update all the edges with toNodes == NULL with 0 observability
    for(size_t i=0; i<array_n(G->edgArr); i++){
        edg = array_fetch(edge*, G->edgArr, i);
        if(array_n(edg->toNodes) == 0)
            edg->cco = 0;
    }

    dffScan = G->scanDFF;
    dffnonScan= G->nonscanDFF;
    //Updating FF with default values considering all FF as scan chain FF
    for(size_t i=0; i<array_n(dffScan); i++)
    {
        vert = array_fetch(vertex*, dffScan, i);
        for(int j=0; j<array_n(vert->inEdges);j++)
        {
            edg = array_fetch(edge*, vert->inEdges, j);
            edg->cco = 0;
        }
    }
    if(scanFlag)
    {
        for(size_t i=0; i<array_n(dffnonScan); i++){
            vert = array_fetch(vertex*, dffnonScan, i);
            for(int j=0; j<array_n(vert->inEdges);j++){
                edg = array_fetch(edge*, vert->inEdges, j);
                edg->cco = 0;
            }
        }
    }

    if(scanFlag)
    {
        for(int i=array_n(sorted)-1; i>=0; i--){
            vert = array_fetch(vertex*, sorted, i);
            //printf("%d\t%s\n", i, vert->name);
            update_observability(vert, &notKnow_count, inputFileLocation);
        }
    }
    
    //array_free(sorted);
    G->cc_eclud_min = INT_MAX;
    G->cc_eclud_max = INT_MIN;
    for(size_t i=0; i<array_n(G->edgArr); i++){
        edg = array_fetch(edge*, G->edgArr, i);
        edg->cc_eclud_dist = sqrt((edg->cc0)*(edg->cc0) + (edg->cc1)*(edg->cc1));
        G->cc_eclud_min = edg->cc_eclud_dist < G->cc_eclud_min ? edg->cc_eclud_dist : G->cc_eclud_min;
        G->cc_eclud_max = edg->cc_eclud_dist > G->cc_eclud_max ? edg->cc_eclud_dist : G->cc_eclud_max;            
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
}

void get_outputs(graph *G, char *dumpDir)
{
    int i=0, j=0;
    edge* edg;
    vertex* vtx;

    char *opFileName = (char*)malloc(sizeof(char)*10000);
    strcpy(opFileName, dumpDir);
    strcat(opFileName, "/output_nets.csv");

    FILE *outFile = fopen(opFileName, "w");

    for(i=0;i<array_n(G->primOutEdges);i++)
    {
        edg = array_fetch(edge*, G->primOutEdges, i);
        fprintf(outFile, "%s\n", edg->name);
    }

    for(i=0;i<array_n(G->seqGates);i++)
    {
        vtx = array_fetch(vertex*, G->seqGates, i);
        for(j=0; j<array_n(vtx->inEdges); j++)
        {
            edg = array_fetch(edge*, vtx->inEdges, j);
            fprintf(outFile, "%s\n", edg->name);
        }
    }
    fclose(outFile);
}
    



