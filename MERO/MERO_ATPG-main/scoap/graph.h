/**************************************************************************************
VIPR: Verification of IP trust
Copyright: University of Florida, Gainesville, FL, USA

This document is copyright protected and property of the above mentioned entity. 
Any disclosure, alteration, re-distribution, or commercial use is NOT allowed without 
the consent of the developers and/or the entity mentioned above.

For copyright issues, contact information can be found in the following site.
Link: http://swarup.ece.ufl.edu/

***************************************************************************************/
/* define the graph structures */

#ifndef GRAPH_H
#define GRAPH_H

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <limits.h>
#include <ctype.h>
#include <math.h>
#include <unistd.h>
#include <stdbool.h>
#include "array.h"

#define true 1
#define false 0
#define TRUE 1
#define FALSE 0
#define MAXLEVEL 10
#define MAXSIZESTEP 3
#define NSIZESPERCELL 50
#define MAX_ITER_NO 5
#define DONT_TOUCH_SLACK 1.00e-12
#define DUMPALL 0

#define INV_AREA 33.1776
#define PDN_AREA 3.5
#define NORPDN_AREA 44.972
#define BUF_AREA 33.1776
#define NND2_AREA 41.472
#define NOR2_AREA 41.472
#define AND2_AREA 49.76
#define OR2_AREA 47.76
#define NND3_AREA 49.77
#define NOR3_AREA 82.94
#define AND3_AREA 66.36
#define OR3_AREA 58.06
#define NND4_AREA 58.06
#define NOR4_AREA 82.94
#define AND4_AREA 74.65
#define OR4_AREA 82.94
#define LATCH_AREA 91.24
#define MUX_AREA 41
#define MUXOR_AREA 73.76
#define AOI1_AREA 49.77
#define AOI2_AREA 58.06

#define findmax(x,y) (x > y ? x : y)



#define NUM_ORG_FFS 30
#define setupDelay 0
#define clk2QDelay 0


#define lowWp   300e-9
#define lowWn   150e-9
#define uppWp   4e-6
#define uppWn   2e-6
#define INVAREA 8.2e-7

// Added by Hitesh
#define FREE_GRAPH(G, hasDualFFs)	\
			((hasDualFFs) ? array_free(G->stateFlopArr) : 0),		\
			freeVertexArr(G->vertexArr),	\
			array_free(G->combGates),	\
			array_free(G->seqGates),	\
			freeEdgArr(G->edgArr),	\
			array_free(G->primInEdges),	\
			array_free(G->primOutEdges),\
			freeTypeArr(G->typeArr),	\
			array_free(G->capArr),	\
			array_free(G->resArr),	\
			FREE(G->header),	\
			FREE(G)

#define FREE_CA(G)	\
			freeVertexArr(G->seqGates),	\
			array_free(G->primInEdges),	\
			array_free(G->primOutEdges),	\
			array_free(G->capArr),	\
			array_free(G->resArr),	\
			FREE(G->header),	\
			FREE(G)

#define insertID(array, caId, oId)	\
			array_insert_last(int, array->caIdArr, caId), \
			array_insert_last(int, array->oIdArr, oId)


/* global variables -  mainly options */
char*    sisScr;
int      NDETECT;
int      SEQSTATES;
int      NTESTPTS;
int      maxTests;
int      NTRIG;
int      TRIGGER_INSTANCES;
int      TROJAN_INSTANCES;
float    TRIGTHRESH;
float    inputActivity;
char*    moduleName;
char*    cktType;
char*    vectorFile;
char*    inputFile;
char*    outFile;
char*    subckt;
int      nPrimIn;
int      maxHierLevel;
int      globalEqnIdx;
int      isCombLoop;
char     keepLog[20];
float    timeFactor;
int      areaTolerance;
// int      fullScan = 1;
int      delayTolerance;
float    slackMargin;
float    slackWindow;
float    targetDelay;
int      bDebug;
int      maxSizeStep;
int      numSizePerCell;
int      maxIterationNumber;
int      nMaxPatterns;
int      systemVdd;
int      numStages;
int      nParallel;
int      maxNodes;
int      MAXIN;
int      MAXOUT;
int      btopoOrder;
int      globalVertIdx;
int      globalEdgIdx;
int      extraDffIn;


typedef enum direction {INPUT=1, OUTPUT=2} dirType;
typedef enum size {UPSIZE=1, DOWNSIZE=2, NOSIZE=3} sizeType;



typedef struct graphSt
{
   char*     header;
   array_t*  vertexArr;
   array_t*  edgArr;
   array_t*  combGates;
   array_t*  seqGates;
   array_t*  nonscanDFF;      //added by Pravin on 10/7/19
   array_t*  scanDFF;         //added by Pravin on 10/7/19
   array_t*  capArr;        /* Array of capacitances in the circuit */
   array_t*  resArr;        /* Array of Resistances in the circuit */
   array_t*  primInEdges;   /* Array of Primary Inputs */
   array_t*  primOutEdges;  /* Array of Primary Outputs */
   array_t*  lvlVertArr;    /* Array of Vertex based on their level */
   array_t*  listOfPath;    /* List of Critical Path */
   array_t*  fNodes;        /* define faulty and fault-free nodes */
   array_t*  typeArr;       /* Array of type of gates in library */
   array_t*  trueLvlVertArr; // Vertex array sorted in terms of its 'levelized' levels: different from lvlVertArr
   array_t*  lowprobEdges;
   char*     eqnFile;

   float     gatingDecoderArea;  // used in shannon's expansion
   int       isGated;
   int       hierLevel;
   int       doExpand; //indicates the controller to expand this graph
   char*     gatingCtrl;
   int       processed;

   float     highVt;
   float     lowVt;
	// Added by Hitesh
	//array_t*	seqGatesFB;       /* Array of FFs that can be super-imposed with CA */
	//array_t*	seqGatesNoFB;	/* Array of FFs that drive sequential elements with feedback */
	int			nDisable;
	//int			nEnable;
	int			nObfFF;
	array_t*	stateFlopArr;
	array_t*	rstableFlopArr;
	//array_t*	flopDrivingStateFlops;
	int		rstableFlops_mapped;
	int		rstEdg2_fanout;
	int		flopsPerNLFSR;
	int			FFs_mapped;
	array_t*	tempEdgArr;
	//int		rstLogicFanout;
	int		maxFanout;
   int      topoLevels;

   double cc_eclud_min;
   double cc_eclud_max;
   array_t* all_tmax_pi_patterns;
   array_t* all_tmax_ff_patterns;

   array_t* real_vectors;
   array_t* unk_vectors;
   array_t* real_vector_hit;
   array_t* real_vector_hit_vecSim;
   array_t* real_vector_hit_expected;
   
} graph;

typedef struct gateTypeSt
{
   char*     name;
   array_t*  pChannel;
   array_t*  nChannel;
   array_t*  netArr;
   array_t*  primNetArr;
   int       NoTr;        /* number of NMOS(or PMOS) transistors in a gate */
   double    WpMax;         /* Max. On resistance of PUN */
   double    WpMin;         /* Min. On resistance of PUN */
   double    WnMax;         /* Max. On resistance of PDN */
   double    WnMin;         /* Min. On resistance of PDN */
   double     WnOrg;            /* original width of PDN */
   double     WpOrg;            /* original width of PUN */
} Type;

typedef struct netSt
{
   char*     name;
   array_t*  pchArr;
   array_t*  nchArr;
} net;


typedef struct transistor
{
   char*     name;
   net*      drain;
   net*      gate;
   net*      source;
   double    length;
   double    width;
} trans;

typedef struct pathSt
{
   long pathIndex;
   int validity;        // 1: valid, 0: invalid
   float totalDelay;
   array_t* edgeArr;
   array_t* NodeArr;
   array_t* transArr;
   array_t* segmentDelays;
   float maxDelay;
} path;

typedef struct vertexSt
{
   int idx;
   int lvlIdx;
   int topoIdx;
   int bPrimIn;             /* if it's a primary input or not */
   int bPrimOut;
   char* name;
   Type* type;
   Type* newType;
   int level;      /* It specifies the level of gate */
   int virtualFlag;     /* to detect virtual i/o node */
   int criticalFlag;    /* to detect critical path nodes*/
   int fDelay;
   int isSeq;
   int partitionNumber;
   int partLevel;
   int schLevel;
   int dontTouch;
   int AM;
   int rDelay;
   int traverseFlag;
   char* gatingCtrl;
   int bDeleted;
   int bDummy;
   int tmpFlag;
   int borphan;
   int bdeleted;
   int bmoved;
   double delay;
   double riseDelay;
   double fallDelay;
   array_t* delayLRS; /*FIXUP */
   array_t* faultList0;
   array_t* faultList1;
   array_t* precludeList0;
   array_t* precludeList1;
   double tranLRS;
   array_t* delayArr;
   array_t* inEdges;
   array_t* outEdges;
   array_t* inPorts;
   int* sortInPorts;	//Added by Pravin
   array_t* outPorts;
   array_t* pathArr;        // list of crossing paths
   double sizeFactor;                /* optimal size multiplication factor */
   double prevSizeFactor;                /* optimal size multiplication factor */
   double mu;
   float alpha;
   double delConst;            // delay constraint: Ai's in the referred paper
   double slackConst;         // slack constraint: Si's in the algorithm
   double resistance;
   double delStd;            // gate delay standard variation(%)
   double outStd;            // output arrival time standard variation(not %, absolute value)
   float  worstSlack;
   path* worstPath;

   //vert->WnLRS represents the equivalent NMOS size of a "gate"
   //this is different from gate->Wn's
   //This value will be set by Lagrangian relaxation sizing algorithm
   double WnLRS;
   double WnMin;
   double WnMax;
   double lowBound;
   double uppBound;

   double dlyInter;
   double *dlyInterPO;
   double dlyInterMean;
   double dlyInterStd;

   // Intra-die variation
   double dlyIntraMean;
   double dlyIntraStd;
   double tranIntraMean;
   double tranIntraStd;
   int *flags;

   float  activity;
   float  nInput00;
   float  nInput01;
   float  nInput10;
   float  nInput11;

   int  vth;
   //for packing of partitions into clusters
   float output_time;
   float logic_delay;
   int clusterid;

   array_t* nodeList; // list of consituent vertices if the node is a partition

	// Added by Hitesh
	int		fanIn;
	int		fanOut;
	int		nIO;
	int		rank;
	//int		tracked;
	//int		outTracked;
	float	entropy;
	int		traversed;
	int		outMapped;
	int		inMapped;
	//int		flag;			// Used for terminating isCaptureFFsame()
	//int		isDual;			// True if it is a FF and can be super-imposed
	int		id;
	int		hasReset;	// marks if a flip flop has reset/clear. If not, stores 0 otherwise stores a 1 for clear and 2 for reset
	int		rstMapped;
	//int		nextStateImpact;	// stores the number of flip flops present at the endpoints of timing paths beginning from this vertex's outputs
	
	//Added by Pravin
	int sortedInput;
	int checkProb;
	int cycleIndex;
    int scanDFF;      //upodated on 10/7/19
    int isScanDFF;
    int feedbackCount;
    int feedbackCount_check;
    int totalFbCount;

    int globalVertIdx;
    int topoSortIdx;
    
    char *logicFunc;
} vertex;

typedef struct edgeSt
{
   int idx;
   char* name;
   char* origName;		//Added by Pravin on 10/10/19
   char* fromFFName;		//Added by Pravin 
   int oldVal;
   int newVal;
   int errNewVal;
   int errOldVal;
   int lowProbVal;
   struct edge* prmEdgTran;  /* primary edge responsible for transition */
   struct edgeSt* maxCcEdg;
   struct edgeSt* mainPrmIn;      /* Main PriIn for switching */
   array_t* impEdgArr;
   array_t* crtEdgArr;       /* list of critical path edges coupled with */
   int tmpAssign1;           /* Temporarily Assigned */
   int tmpAssign2;           /* Desired Transition */
   int tmpAssign2Org;
   int tmpAssign3;           /* For virtual propagation */
   float tmpTranTime;
   float tmpTranTime2;
   int assnTran;            /* Transition Assigned */
   int assnFlag;            /* Transition Assignment Flag */
   int tpd;                 /* propagation delay */
   int bPrimIn;
   int bPseudoPrimIn;
   int bPrimOut;
   int bSeqIn;
   int bSeqOut;
   int cplCapFlag;          /* Check if Cc exists */
   int gndCapFlag;          /* Check if ground Cap existx */
   vertex* fromNode;
   array_t* toNodes;
   array_t* cplCap;         /* Array of Coupling Capacitors */
   float    maxCc;
   float    maxCcConflict;
   double   gndCap;         /* Ground Capacitor */
   double   rDelayMax;
   float    rDelayMaxOrg;   /* To store the original value during simulation */
   array_t* rDlyMaxArr;

   array_t* rDelayMaxArr;   /* Max. Pin-to-Pin rising delay list at the output edge */
   array_t* rDelayMinArr;   /* Min. Pin-to-Pin rising delay list at the output edge */

   array_t* fDelayMaxArr;   /* Max. Pin-to-Pin falling delay list at the output edge */
   array_t* fDelayMinArr;   /* Min. Pin-to-Pin falling delay list at the output edge */
   double   tmpMaxDelay;    /* To temporarily store the delay for finding critical path */

   double tmpslack;         /* To store the relative slack information */


   float    rDelayMaxTmp1;
   double   rDelayMin;
   double   rDelayMinOrg;
   array_t* rDlyMinArr;
   float    rDelayMinTmp1;
   double   fDelayMax;
   float    fDelayMaxOrg;
   array_t* fDlyMaxArr;
   float    fDelayMaxTmp1;
   double   fDelayMin;
   double   fDelayMinOrg;
   array_t* fDlyMinArr;
   float    fDelayMinTmp1;
   double   maxDelay;
   double   gateDelayR;
   float    gateDelayRTmp;
   array_t* gateDlyRArr;
   float    gateDelayROrg;
   double   gateDelayF;
   float    gateDelayFTmp;
   array_t* gateDlyFArr;
   float    gateDelayFOrg;
   int      weight;
   float    TtimeR;         /* Output Transition time */
   float    TtimeROrg;
   float    TtimeRTmp;
   array_t* TtimeRArr;
   float    TtimeRmax;      /* Output Transition time */
   float    TtimeRmaxOrg;
   float    TtimeRmaxTmp;
   array_t* TtimeRmaxArr;
   float    TtimeRmin;      /* Output Transition time */
   float    TtimeRminOrg;
   float    TtimeRminTmp;
   array_t* TtimeRminArr;
   float    TtimeF;         /* Output Transition time */
   float    TtimeFOrg;
   float    TtimeFTmp;
   array_t* TtimeFArr;
   float    TtimeFmax;      /* Output Transition time */
   float    TtimeFmaxOrg;
   float    TtimeFmaxTmp;
   array_t* TtimeFmaxArr;
   float    TtimeFmin;      /* Output Transition time */
   float    TtimeFminOrg;
   float    TtimeFminTmp;
   array_t* TtimeFminArr;
   int      lastSample;    /* to flag last sampling time */
   array_t* switchArr;     /* to record the switching in a edge */
   array_t* tmpSwitchArr;
   array_t* swTimeArr;  /* to record the time at which switching takes place */
   array_t* tmpSwTimeArr;
   array_t* prmEdgArr;     /* List of Prime Edge responsible for switch time */
   array_t* timeEdgArr;    /* List of edges affected by any primary edge */
   array_t* switchTimeArr;    /* To keep track on all assigned tran time */
   float    switchTime;       /* Switching time */
   array_t* assnValues;       /* Values Assigned to any PI */
   int      outTranMaxDelay;  /* Reqd. Transition for Max. Delay */
   double   minDelay;
   int      outTranMinDelay;  /* Reqd. Transition for Min. Delay */
   array_t* tmpPropArr;          /* To record propagation status of each tran */
   int      logicProp;        /* tmporary propagation status */
   int      crEdgConflict;     /* To record any conflict at critical edg */
   int      timeOutFlag;     /* 1: if last sampling time > desired sw time */
   int      progressEdgIndex; /* For PrimINEdg to track pregress in podem */
   float    rDelMaxVar;       /* variance of delay variation */
   float    fDelMaxVar;
   float    rDelMinVar;
   float    fDelMinVar;

   float    signal0Prob;
   float    signal1Prob;
   float    activity01;
   float    activity10;
   int      updatedProb_flag;

   float    lamda;
   int done;

	// Added by Hitesh
	int		isDual;	// set to true if this edge is used as one of the inputs to obfuscation state machine as well
	int		primOutput;	// set to true if this edge is driven by a FF's Q output
	//int		valid;
	float	pZero;
	float	pOne;
	int		traversed;
	int		mapped;  // used in trackGraph()
	int		seen;
	int		visited; // used in isTrueStateFlop()
	int		fanout;
	
	//Added by Pravin
	float entropy;	     //used to find surrounding entropy
   int control;        //used to find surrounding control
	int lastStage_ip;
   int cc0;
   int cc1;
   int cco;
   float transProb;
   float signalProb1;
   float signalProb0;
   float activity;
    int globalEdgIdx;
   int  visitedEdgeFlag;

   int atLogic;
   int simulated;
   array_t* iv_simResults;
   array_t* simResults;
   array_t* simTritResults;

   double cc_eclud_dist;
   double cc_minmaxStd;
   double cc_minmaxScale;

   int tmax_id;
   int tmax_pattern_stat;
   array_t* tmax_pattern;

   int partbPrimIn;
      int partbPrimOut;
      
   int meroCovered;
   int rareEdge;

} edge;

typedef struct parasiteSt
{
   char* name;
   edge* fromEdge;
   edge* toEdge;
   double value;
} parasite;


/*typedef struct partList
{
   int id;
   array_t* vertexList;
   array_t* inList;
   array_t* outList;
} partitionType; */

typedef struct edgListSt
{
   array_t* edgListTran;
   array_t* edgListTime;
} edgList;

typedef struct jFrontSt
{
   vertex*  node;
   int      tran;
   float    time;
   array_t* edgArr;   /* Edges already tried */
}  jFront;

// Added by Hitesh
typedef struct idArrSt
{
	array_t* caIdArr;
	array_t* oIdArr;
} idArr;

// Added by Hitesh
typedef struct stateFlopSt
{
	array_t* trackedFlops;	/* Used in identifying state flip flops */
	array_t* trackedGates;
	array_t* gatesInCycle;
	array_t* stateFlopArr;	/* Array of flip flops identified as state (either true or partial) */
	array_t* trueStateFlopArr;
	//array_t* partStateFlopArr;
	array_t* flopsDrivingStateFlops;
	array_t* tempEdgArr;
	array_t* tempVertArr;
} stateFlops;

typedef struct enEdgesSt
{
	edge* selEdg;
	edge* rstEdg;
	edge* rstEdg2;
	int inverted;
} enEdges;


// Added by Naren for TROY
typedef struct partitionSt
{
   int id;
   array_t*  vertexList;
   array_t* edgeList;
   array_t* primInEdges;
   array_t* primOutEdges;
   float avgAct;
   graph* G;
} partitionType;

/* declare graph functions */
graph* createGraph(char* inFile, char* ckt, array_t* gEdges, float MINCAP);

net* createNewNet(char* word, Type* gate);

void getResistance(Type* gate);

edge* createNewEdge(array_t* tmpArr, graph* G, array_t* gEdges, int i);

edge* createPrimInEdge(char* edgName, graph* G, array_t* globEdges);

net* findNet(char* word, array_t* NetArr);

int getEdgeInfo(array_t* arr, int idx);

edge* findEdge(char* edgName, array_t* gEdges);

edge* findEdgeIdx(int edgIdx, array_t* globEdges);

Type* findType(char* typeName, array_t* typArr);

vertex* findVertex(char* vertName, array_t* lvlvrtArr);

vertex* findVertex_len(char* vertName, int len, array_t* lvlvrtArr);

// Added by Hitesh
//vertex* findVertex2(char*, array_t*);
int getEdgeIndex(char* edgName, array_t *array);
int getVertexIndex(char* vertName, array_t *array);
int getPortIndex(char* portName, array_t *array);
vertex* getVertexOfRank(int, array_t*);
void mergeOFSM(graph*, graph*, char*, char*);
void mergeGraph(graph*, graph*, edge*);
int nlfsrException(int);
void insertModCell(graph*, int);
void identifyStateFlops(graph*, char*);
void findFlopsToReset(graph*, char*);
void findStateFlops(graph*);
int hasFeedback(stateFlops*, vertex*, vertex*);
int isTrueStateFlop(graph*, vertex*, vertex*);
void identifyCycle(stateFlops*, vertex*);
int isDrivingStateFF(graph*, stateFlops*, vertex*);
//int hasReset(vertex*);
void getStateFlops(graph*, char*);
//void findNextStateImpact(stateFlops*, vertex*, vertex*);
//int isDatapathFlop(vertex*);
//void findDualFFs(graph*);
//int sortStateFlops(stateFlops*, vertex*, edge*);
//void findEndpoints(stateFlops*, edge*);
//int findEndpoints2(stateFlops*, edge*);
//void identifyDualFF(graph*);
void assignID(graph*);
void mergeCA(graph*, graph* [], int);
//void mergeNLFSR(graph*, graph*, edge*, edge*, edge*, int);
//void mergeNLFSR(graph*, graph*, graph*);
float mergeNLFSR(graph*, graph*, int, int, int);
enEdges* findEnEdges(graph*);
//void trackGraph(graph*, vertex*, vertex*, edge*, vertex*, edge*, idArr*, edge*, edge*, edge*, int);
void trackGraph(graph*, vertex*, vertex*, edge*, vertex*, edge*, idArr*, enEdges*, graph*);
int getIdIndex(int, array_t*);
vertex* getVertexAtIndex(int, array_t*, array_t*);
void addMux(graph*, vertex*, edge*, vertex*, int, edge*, edge*, edge*, int);
void addRstLogic(graph*, edge*, edge*, int);
void addMux2(graph*);
vertex* getOrigFF(graph*);
edge* getOrigEdge(graph*, vertex*, int);
void addControl(graph*, int);
void freeVertexArr(array_t*);
void freeEdgArr(array_t*);
void freeTypeArr(array_t*);
void freeTransistors(array_t*);
void freeNetArr(array_t*);
//graph* mergeGraph(graph*, graph*, graph* [], int, int, int, int, char*, int, char*);
//void trackGates(graph*, vertex*, vertex*, vertex*, int);
//void insertMux(graph*, edge*, vertex*, vertex*, int);

void levelize(graph* G);

void findLevel(array_t* vertArr, graph* G, FILE* fout);

void getDelay(graph* G, vertex* vert);

int findInTran(int outTran, Type* gate);

double findDelayOrg(int tran, int maxMin, float Wn, float Wp, float CL, edge* edg, float tT);

double findCL(graph* G, edge* outEdg, Type* gate, int rqTran, int i);

double findDelay(int tran, int maxMin, float Wn, float Wp, float CL, edge* edg, float tT);


/* Calculate the Path Delay */
void findPathDelay(graph* G,path* crtPath);

edge* findMaxPOEdg(array_t* edgArr, int rqTran);

edge* findMaxEdg(edge* outEdg, int outTran);

void insertDelay(path* crtpath, edge* edg, vertex* outNode, int tran);

void findRealPath(graph* G, float delta);

void findInputTime(graph* G, array_t* edgArr, int n, int delta);

void resetList(graph* G);

void resetTree(graph* G, edge* testEdg);

void initialize(graph* G);

edge* newAssignment(edge* edg);

int nextTran(array_t* tranArr, int tran);

int findTran(array_t* tranArr, int tran);

float findObjTime(array_t* edgArr, int j, edge* edg, int objTran);

int podem(graph* G, edge* edg, array_t* edgArr, int objTran, int objTime,
                        int conflict, int progressIndex);

edge* chgPrmInAssn(graph* G, edge* testEdg, array_t* conflEdgArr);

void freeEdgLst(graph* G, edgList* Lst, int k);

edge* backTrack(graph* G, edge* testEdg, array_t* conflEdgArr);

int getComplement(int value);

array_t* getAggressorEdg(array_t* edgArr, int n);

int forwardPropagate(graph* G, edge* edg, edge* testEdg,
                     array_t* conflEdgArr, int conflict, int tmpProp);

void findPrmEdg(edge* outEdg);

void getPrmEdg(edge* edg, edge* outEdg);

int findConflict(edge* edg, edge* testEdg, array_t* conflEdgArr);

void findSwTime(vertex* node, edge* outEdg, float swTime);

float findTime(edge* refEdg, vertex* node, float minSwTime, int tmpProp);

float getTime(edge* refEdg, vertex* node, float minSwTime, int tmpProp);

void assignTime(edge* edg, float swTime, float gamma,
                                edge* outEdg, edge* refEdg, int tmpProp);

int getOutTran(vertex* node, edge* testEdg, int tmpProp);

int checkPropagation(vertex* node, int inputSet, edge* testEdg);

int findPropagation(vertex* node, int tmpProp);

int checkEdg(edge* refEdg, edge* outEdg, edge* testEdg,
                                  array_t* conflEdgArr, int tmpProp);

int prmInCheck(edge* prmEdg, edge* testEdg, array_t* conflEdgArr);

edge* backTrace(graph* G, edge* edg, int assnTran, float objTime);

float getObjTime(edge* edg, int assnTran, float objTime);

edge* selectEdge(array_t* inEdgArr, vertex* vert,
                                    int inputTran, float objTime);

edge* updateJfront(array_t* tmpArr, vertex* vert,
                                    int inputTran, float objTime);

edge* getNewObject();

array_t* updateFrontArr(array_t* testArr);

void freeFront(array_t* testArr);

array_t* updateEdgArr(array_t* testArr);

array_t* updateFloatArr(array_t* testArr);

array_t* updateListArr(array_t* testArr);

array_t* removeEdg(array_t* testArr, edge* edg);

void printGraph(graph* G);

void initializeEdgInputs(array_t* globEdges);

void assntime(edge* refEdg, vertex* node, float swTime, int tmpProp);

// new functions added for Lagrangian relaxation

double optSizerOld(array_t* lvlvrtArr, int i);

double optSizer(graph *G, array_t* lvlvrtArr, int i);

void findPath(graph* G, float f, int cFlag);

void SOLVE_LRS(graph *G, array_t* lvlvrtArr);

void SOLVE_LDP(graph* G, float sf);

double **lamdaInit(double **lamda, array_t* trueLvlVrtArr);

double **moveLamda(double **lamda, array_t* trueLvlVrtArr, double rho, double inConst, double outConst);

//int lamdaVecInitF(double **lamda, double *lamdaVec, double **matA, array_t *trueLvlVrtArr);

int lamdaVecInitF(double **lamda, array_t *trueLvlVrtArr);

int lamdaVecInitB(double **lamda, double *lamdaVec, array_t *trueLvlVrtArr);

void moveLamdaVecOld(double **lamda, double *lamdaVec, double **matB, double **projMat, array_t* trueLvlVrtArr, double rho, double inConst, double outConst, int vecSize);

//double moveLamdaVec(double **lamda, double *lamdaVec, double **matB, double **projMat, array_t* trueLvlVrtArr, double rho, double inConst, double outConst, int vecSize);

void moveLamdaVec(double **lamda, array_t* trueLvlVrtArr, double inConst, double outConst, float sf);

// new functions for slack based sizing


double minElement(double **matrix, int sizeMat);

void getProjMat(double **matB, double **projMat, int sizeMat, int vecSize);

// matrix.c

void matInverse(double **matIn, double **matOut, int sizeMat);

void lubksb(double **a, int sizeMat, int *indx, double *b);

void ludcmp(double **a, int sizeMat, int *indx, double *d);

void matMultiply(double **matA, double **matB, double **matOut, int rowA, int colA, int rowB, int colB);

void matVecMultiply(double **matA, double *vecIn, double *vecOut, int rowA, int colA);

void unitMatInit(double **mat, int sizeMat);

void matTrans(double **matIn, double **matOut, int rowA, int colA);

void matSubtract(double **matA, double **matB, double **matOut, int rowA, int colA);

void loadStd(int noTran, int noSize, int noLoad, double ***stdVal);

double calcStd(double trIn,double gateW, double lFactor);

double calcSigmaFac(double yield);

void delayCalcInter(array_t* trueLvlVrtArr, int noSample);

double mean(double *data, int size);

double std(double *dat, double mean, int size);

void delayCalcIntra(array_t* trueLvlVrtArr);

typedef double array8[3][3][3][4][4][4][3][3];
typedef double array4[4][5][4][3];

double calcStdIntra(double arr1Std, double arr2Std, double diffArr, double loadFac,
                    double tran1, double tran2, double tran1Std, double tran2Std, array8 dataIntra);

double calcStdIntraInv(double loadFac, double gateW, double tran1, double tran1Std, array4 dataIntra);

void readIntra();

void readIntraInv();

int printPaths(graph* G, char* fName, char* hName);

int resetLevelsDelays(graph* G);

void readOptions(char* optFile);

long slackBasedSizing(graph* G, float initMaxDelay, float initArea,
       int delayTolerance, int areaTolerance, float slackWindow,
       float tdelay, array_t* sizedCells);

double computeTotalSlack(graph* G, float refDelay);

int assignSlackToCells(graph* G, float refDelay);

int initializeAlphaEtc(graph* G);

int rankVerticesOnSlack(graph* G, array_t*, array_t*);

double computeCircuitArea(graph* G, int* ngates);

float getMaxDelay(graph* G);

void initializeTraverseFlag(graph* G);

void markLogicCone(graph* G, int nLevel);

float getCellTrioDelay(vertex* vert, path* pPath, float* drvDelay);

float whatIfCellTrioDelay(graph* G, vertex* vert, path* pPath, float newSizeFactor, float* drvDelay);

float computeCellDelay(graph* G, vertex* vert, int rqTran, int outTran, edge* edg, float sizeFactor);

double getNextSize(vertex* vert, sizeType sizeDir, int nStep);

float performWhatIfAnalysis(graph* G, vertex* vert, sizeType sizeDir, float targetSlack, float* drvDelayDiff);

long performHealing(graph* G, double targetDelay, array_t* sizedCells);

void markFanInLogicCone(vertex* startVert, int nLevel, float slack, float drvDlyDiff);

void readSizeFactors(graph* G, char* filename);

void generateStat(graph* G, array_t* topoArr, char* vectorFile);

array_t* getTopoOrder(graph* G, int scanFlag);

double getDelayOpt(graph* G, vertex* vert, float Vdd, int input, int outTran);

double getDelayStd(graph* G, vertex* vert, float Vdd, int input, int outTran);

double findCLStd(graph* G, edge* outEdg, Type* gate, int input, double* absCL, float vdd);

double findCLOpt(graph* G, edge* outEdg, Type* gate, int input, double* absCL, float vdd);

double computeStageDelay(graph* G, array_t* topoArr, float vdd, int numStages, int device);

double computeTotalPower(graph* G, array_t* topoArr, float vdd, double freq, int nStages, int device);

array_t* partition(graph* G);

int checkTopoOrder(vertex* v, array_t* tList);

int findInputOutputOfPartition(array_t* tmpList, array_t* inList, array_t* outList);

void writeVerilog(int nPart, FILE* fpart, array_t* tmpList, array_t* inList, array_t* outList);

void writeTruthTable(int nPart, FILE* fpart, array_t* tmpList, array_t* inList, array_t* outList);

void levelizen(graph* G, array_t* topoArr);

void createSyndrome(array_t* partitionList);

array_t* breakInWords(char* str);

array_t* partitionBackward(graph* G);

array_t* partitionBackwardNew(graph* G);

array_t* partitionForward(graph* G);
array_t* partitionForwardComplex(graph* G);

void performReverseTrace(array_t* tlist, array_t* tmpList, int dir, int i);

int evaluateCircuit(graph* G, array_t* partitionList);

void evaluatePartition(array_t* tmpList, array_t* inList, array_t* outList);

int calculateOutValues(vertex* s);

//graph* createGraphFromVerilog(char* tstr, char* tstr1, int* primInCnt, graph* rootG, int addBuff);	// Signature changed by Hitesh
//graph* createGraphFromVerilog(char* tstr, char* tstr1, int* primInCnt, graph* rootG);	// Signature changed by Hitesh

void cooptimizeVerilog(array_t* files);

void separateCofactorsVerilog(graph* G, int nfiles);

array_t* breakInWordsVlog(char* header);

vertex* createNewVertexForVlog(graph* G, array_t* wordArr, char* cellName, char* nodeName, array_t* globEdges, char* libName);

vertex* createNewVertex(graph* G, array_t* wordArr, char* outputVar, char* cellName, char* nodeName, array_t* globEdges);

edge* createEdge(graph* G, char* name);

int computeMaxDelayPath(graph* G);

vertex* createNewVertexForPartition(graph* G, array_t* inList, array_t* outList, array_t* tlist, array_t* globEdges);

graph* createPartitionGraph(array_t* partitionList, array_t* globEdges);

vertex* createInverter(graph* G, char* inputVar, char* outputVar, char* nodeName, array_t* globEdges);

int findInputOutputOfCofactor(array_t* tmpList, array_t* inList, array_t* outList, char* str);

void convertGraph2Verilog(graph* G, FILE* fptr, int hier, int bgated);
array_t* convertGraph2Verilog_comb(graph* G, FILE* fptr, int hier, int bgated, char *dumpDir, graph *G_original);

void convertGraph2VerilogForCtrlVarSelection(graph* G, char* fileName, char* gname, char* var, int val);

// inserted for packing of partitions

void packing(graph*);

int edge_member(edge*,array_t*);

int partDone(int, array_t*);

int funcSim(graph* G, array_t* topoArr);

char* parseEquationVerilog(graph* G, int hierLevel);

typedef struct cluster
{
        int id;
        array_t* partList;
        array_t* inList;
        array_t* outList;
		int level;
		float latency;
		float output_time;
} cluster;



array_t* findMffc(vertex* v);
array_t* findMffcForPartitioning(vertex* v);
array_t* findMffs(array_t* varr);
array_t* partitioning(graph* partitionList);
array_t* findFanout(graph* G, edge* inputedg, dirType dir, int nLevel, FILE* fptr);
array_t* hypergraph(array_t* part, graph* G, array_t* clusterList, int vopt, double maxCR);
array_t* hypergraphmffc(array_t* part, graph* G, array_t* clusterList, int vopt, double maxCR);
array_t* hypergraphmffcmod(array_t* part, graph* G, array_t* clusterList, int vopt, double maxCR);
array_t* annealPart(array_t* clusterList, int shannonLimit, graph* G);
vertex* createVertexForFunctionalDecomposition(graph* G, array_t* inputVars, array_t* outputVars, char* vtxName, char* vtxType);
void functionalDecomposition(graph* G);



//graph* createGraphFromVerilog_p(char* tstr, char* tstr1, int* primInCnt, graph* rootG);
//graph* createGraphFromVerilog(char* inputFileName, char* libFileName, char* moduleName, int* primInCnt, graph* rootG)
void dump_original_nets(graph* G, char *ipFile);
void immediate_fanout(graph* G, char *ipFile);
void immediate_fanin(graph* G, char *ipFile);
array_t* get_fanout_idx(graph* G, int edgIdx);
void level_2_fanout(graph* G, char *ipFile);
array_t* get_fanin_level(graph* G, char* edgName, int level);
array_t* get_fanin_level_idx(graph* G, int edgIdx, int level);
void level_2_fanin(graph* G, char *ipFile);
array_t* get_ff(graph* G);
array_t* get_ff_inEdges_idx(graph* G);
array_t* get_fanout_level(graph* G, char* edgName, int level);
array_t* get_fanout_level_idx(graph* G, int edgIdx, int level);
void nearestFFd_idx(graph* G, char *ipFile);
array_t* get_ff_outEdges_idx(graph* G);
void nearestFFq_idx(graph* G, char *ipFile);
void nearestOutput(graph* G, char *ipFile);
void nearestInput(graph* G, char *ipFile);
int control_level(graph* G, char* edgName, int level,
      array_t **updateEdges, array_t **updateVertex);
int control_level_idx(graph* G, int edgIdx, int level,
      array_t **updateEdges, array_t **updateVertex);
int control_level_fanin(graph* G, char* edgName, int level,
      array_t **updateEdges, array_t **updateVertex);
int control_level_fanout(graph* G, char* edgName, int level,
      array_t **updateEdges, array_t **updateVertex);
array_t* get_type(graph* G);
void cellDiversity(graph* G, char *ipFile);
int find_number (char* strName);
char* logic_parse(char* logic);
void get_functions(graph* G, char *inputFileLocation);
void get_vertex_functions(graph* G, char *inputFileLocation);
edge* findDataEdge(vertex* inpVtx);
void entropySurrounding(graph *G, char *ipFile);
void entropyFanin(graph *G, char *ipFile);
void entropyFanout(graph *G, char *ipFile);
void controlSurrounding(graph *G, char *ipFile);
void controlFanin(graph *G, char *ipFile);
void probabilitySurrounding(graph *G, char *ipFile);
void probabilityFanin(graph *G, char *ipFile);
void probabilityFanout(graph *G, char *ipFile);
void probabilitySurrounding_vipr(graph *G, char *ipFile);
void probabilityFanin_vipr(graph *G, char *ipFile);
void probabilityFanout_vipr(graph *G, char *ipFile);
void toggleSurrounding(graph *G, char *ipFile);
void toggleFanin(graph *G, char *ipFile);
void toggleFanout(graph *G, char *ipFile);
void toggleSurrounding_vipr(graph *G, char *ipFile);
void toggleFanin_vipr(graph *G, char *ipFile);
void toggleFanout_vipr(graph *G, char *ipFile);
vertex* findIndexVertex(int index, graph *G);
void read_probability(graph *G, char* ipFile, char *inputFileLocation);
void read_probability_vipr(graph *G, char* ipFile, char *inputFileLocation);
void read_scoap(graph *G, char* ipFile, char *inputFileLocation);
void read_scoap_vipr(graph *G, char* ipFile, char *inputFileLocation);
void scoapSurrounding(graph *G, char *ipFile);
void scoapFanin(graph *G, char *ipFile);
void scoapFanout(graph *G, char *ipFile);
void dump_driver(graph* G, char *ipFile);
void dump_design_details(graph* G, char *location);
void free_graph(graph *G);

void sortPorts(vertex *vert);
edge* createEdge_struct(graph* G, char* name);
void createInEdges(graph *G, vertex *vert, array_t *wordArr, int *edgCounter);
void createOutEdges(graph *G, vertex *vert, array_t *wordArr, int *edgCounter);
vertex* createNewVertexForVlog_struct(graph* G, array_t* wordArr, char* cellName, char* nodeName, array_t* globEdges, char* libName);
void dumpGraphStr(graph *G, char *dumpDir);

void printEdgArr(array_t *edgArr);

graph* createGraphFromVerilog(char* inputFileName, char* libFileName, char* moduleName, int* primInCnt, graph* rootG, char* libName);
#endif
