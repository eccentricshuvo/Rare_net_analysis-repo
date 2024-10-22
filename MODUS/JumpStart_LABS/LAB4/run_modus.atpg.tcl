#####################################################
# LAB 5 - Vector Simulation and Debug
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
   -source ./netlist/DLX_TOP.v,./netlist/DLX_CORE.v \
   -techlib ../TECHLIB/*.v \
   -allowmissingmodules no \
   -blackboxoutputs x
 
puts "Running build_testmode FULLSCAN "
build_testmode \
   -testmode FULLSCAN \
   -assignfile ./modus_inputs/dlx_assignfile
 
puts "Running verify_test_structures FULLSCAN - remaining checks "
verify_test_structures \
   -testmode FULLSCAN
 
puts "Running Build_faultmodel"
build_faultmodel \
   -includedynamic no

puts "Running create_logic_tests"
create_logic_tests \
   -testmode FULLSCAN \
   -experiment logic 

puts "Runing write vectors"
write_vectors \
   -testmode FULLSCAN \
   -inexperiment logic \
   -language verilog \
   -scanformat parallel 

 
