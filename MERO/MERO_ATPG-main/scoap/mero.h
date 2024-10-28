
#ifndef MERO_H
#define MERO_H
#include "scoap.h"

array_t* get_scoap_data(graph* G, char *dumpDir, char *scanFlag, char *verboseFlag, char *topoArr, char *tFileFlag, array_t *rare_nets, char *threshold);

array_t* get_rare_net_id(graph* G, char* dumpDir, char *verboseFlag, array_t *rare_nets, char *libName, char *cktType, char *clkN, char *clkV, char *wrst, char *rstN, char *rstV, char *exeDir, char *inputFile, char *moduleName, char *libFile, char *tmaxSource);

void parse_net_id(graph* G, char *dumpDir, array_t *rare_nets, char *id_file);

array_t* get_rare_net_patterns(graph* G, char* dumpDir, char *verboseFlag, array_t *rare_nets, char *libName, char *cktType, char *clkN, char *clkV, char *wrst, char *rstN, char *rstV, char *exeDir, char *inputFile, char *moduleName, char *tFileFlag, char *libFile, char *tmaxSource);

void dump_valid_rare_nets(graph* G, array_t *valid_rare_nets, char *exeDir, char *dumpDir, char *trigN, char *trojN, char *verboseFlag);

void create_trojans(graph* G, array_t* valid_rare_nets, char *trigN, char *trojN, char *exeDir, char *dumpDir, char *verboseFlag, array_t **triggers, array_t **payloads, array_t* topoArr, char *randomness);

edge* findRandomPayload(array_t* topoArr, int maxtopo);

void dumpPI(graph *G, char *dumpDir);

void get_fanin_pi_conflict(graph *G, char *dumpDir, array_t *rare_nets);

void get_fanin_set(graph *G, char *dumpDir, array_t *rare_nets);

void get_single_optimization(graph *G, char *inputFile, char *exeDir, char *dumpDir, char *ndetect, char *moduleName, char *libName, char *cktType, char *clkN, char *clkV, char *wrst, char *rstN, char *rstV, char *verboseFlag, char *ntrig, char *randomness, int exhaustive, char *libFile, int justOptCov, char *tmaxSource, char *ndetectApp, array_t *valid_rare_nets, int fullScan, array_t *topoArr);

void validate_trojans(graph* G, array_t *valid_triggers, array_t *valid_payloads, char* dumpDir, char *verboseFlag, char *libName, char *cktType, char *clkN, char *clkV, char *wrst, char *rstN, char *rstV, char *exeDir, char *inputFile, char *moduleName, char *tFileFlag, array_t **justified_triggers, array_t **justified_payloads, char *libFile, char *tmaxSource);

void dump_valid_trojans(array_t **justified_triggers, array_t **justified_payloads, char *dumpDir);

void vector_processing(graph *G, array_t *topoArr, char *dumpDir, array_t *justified_triggers, array_t *justified_payloads, array_t *valid_rare_nets, char *ndetect, char *trigN, char *states, char *scanFlag, int flowFlag, char *exeDir, int postOpt, char *codeBase, char *inputFile, char *moduleName, char *cktType, char *libName);

array_t* simTcov(graph *G, array_t* topoArr, char *dumpDir, array_t* valid_rare_nets, int fullScan, char *vecFile, array_t *triggers, array_t *payloads, char *opVecHitName, int justVecFlag, char *states, char *unCovTrigName, char *unCovTrojName, char *ndetect, char *ntrig, int *firstErrVec, char *codeBase, char *inputFile, char *moduleName, char *cktType, char *libName);

void run_iverilog_simulation_internally(graph *G, char *dumpDir, char *ndetect, char *trigN, char *cktType, char *inputFile, char *moduleName, char *codeBase, char *compareiVeriFlag, array_t *topoArr, int firstErrVec, array_t *valid_rare_nets);

void run_iverilog_simulation_internally(graph *G, char *dumpDir, char *ndetect, char *trigN, char *cktType, char *inputFile, char *moduleName, char *codeBase, char *compareiVeriFlag, array_t *topoArr, int firstErrVec, array_t *valid_rare_nets);

int propagateToPO_debug(graph* G, array_t* topoArr, edge* tedg, int fullScan);

void print_pi_details(graph *G, int fullScan, char *dumpDir, char *ndetect, char *ntrig);

edge* findDataEdge(vertex* vert);

int get_only_coverage(graph *G, array_t *topoArr, char *dumpDir, array_t *justified_triggers, 
                        array_t *justified_payloads, array_t *valid_rare_nets, char *ndetect, char *trigN, 
                            char *states, char *scanFlag, int flowFlag, char *exeDir, char *vecFile, int onlyVec, char *codeBase, char *inputFile, char *moduleName, char *cktType, char *libName);


array_t* get_rare_nets_from_Trojan(graph* G, char *exeDir, char *dumpDir, char *trigN, char *tFile, array_t **triggers, array_t **payload);

void run_iverilog_simulation(graph *G, char *dumpDir, char *ndetect, char *trigN, char *cktType, char *inputFile, char *moduleName, char *codeBase, char *compareiVeriFlag, array_t *topoArr, int firstErrVec, array_t *valid_rare_nets);

int remove_invalid_trojans(graph* G, array_t* valid_rare_nets, array_t* rare_nets, array_t *triggers, array_t *payloads, array_t **valid_triggers, array_t **valid_payloads);

void simulateOneVectorsimTcov(graph *G, array_t* topoArr, char *dumpDir, int fullScan, int justVecFlag, int vecNo, array_t *valid_rare_nets);

void run_iverilog_simulation_internally_seq(graph *G, char *dumpDir, char *ndetect, char *trigN, char *cktType, char *inputFile, char *moduleName, char *codeBase, char *compareiVeriFlag, array_t *topoArr, int firstErrVec, array_t *valid_rare_nets, char *libName);

void run_iverilog_simulation_internally_seq_w_vecArray(graph *G, char *dumpDir, char *ndetect, char *trigN, char *cktType, char *inputFile, char *moduleName, char *codeBase, char *compareiVeriFlag, array_t *topoArr, int *errVecArr, array_t *valid_rare_nets, char *libName);

void compare_data_w_vecArray(graph *G, char *dumpDir, char *ndetect, char *trigN, char *cktType, char *inputFile, char *moduleName, char *codeBase, char *compareiVeriFlag, array_t *topoArr, int* errVecArr, array_t *valid_rare_nets);

void simulateOneVectorsimTcov_w_vecArray(graph *G, array_t* topoArr, char *dumpDir, int fullScan, int justVecFlag, int *errVecArr, array_t *valid_rare_nets);

array_t* get_combinational_design(graph *G, char *dumpDir, char *inputFile, char *moduleName, char *libName);

array_t* vector_otg_optimization(graph *G, char *dumpDir, char *ndetect, array_t *topoArr, int fullScan, array_t *valid_rare_nets, char *exeDir);

int get_no_unk(char *unk_vec);

char *create_real_pattern(char *unk_vec, int curr_add, int unk_cnt);

char *intToBin(int intNo, int unk_cnt);

int isGoodRealVec(graph *G, array_t* topoArr, char *dumpDir, int fullScan, char *vector, array_t *expHit, array_t *valid_rare_nets, int firstRealFlag);

array_t* simOneVectorwExp(graph *G, array_t* topoArr, char *dumpDir, int fullScan, char *vector, array_t *expHit, array_t *valid_rare_nets);

void get_valid_rare_nets_from_Trojan(graph *G, array_t *justified_triggers, array_t **trojan_valid_rare_nets);

#endif

