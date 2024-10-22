

read_failures \
   -testmode FULLSCAN \
   -EXPERIMENT logic \
   -workdir . \
   -failset logic \
   -importfile ./testresults/verilog/VER.FULLSCAN.logic.data.logic.ex1.ts2.verilog_FAILSET

analyze_failset \
   -TESTMODE FULLSCAN \
   -EXPERIMENT logic \
   -workdir . \
   -failset logic
