#####################################################
# LAB 4 - How to analyze Initialization Sequences
#
# MODUS TEST SOLUTION
#
#Copyright (C) 2002-2020 Cadence Design Systems Inc. All Rights Reserved.
#Cadence and the Cadence logo are registered trademarks and Modus is a trademark
#of Cadence Design Systems, Inc. in the United States and other countries.
#
#####################################################
 
set WORKDIR ./
set_db workdir $WORKDIR
 
puts "Running build_model "
build_model \
   -cell DLX_TOP \
   -source DLX_TOP.v \
   -techlib ../TECHLIB/*.v \
   -allowmissingmodules no \
   -blackboxoutputs x
 
puts "Running build_testmode FULLSCAN "
build_testmode \
   -testmode FULLSCAN \
   -seqdef ./DLX.seqdef \
   -seqpath . \
   -assignfile DLX.working_assignfile
 
puts "Running verify_test_structures FULLSCAN - remaining checks "
verify_test_structures \
   -testmode FULLSCAN
 
