puts "Starting Modus Test Run Script";
set WORKDIR ./
set CELL DLX_TOP

## Set netlist and library information
set NETLIST DLX_ERRORS.v
set LIBRARY "../TECHLIB/*.v"

## Testmode information
set TESTMODE FULLSCAN
set ASSIGNFILE ./dlx_2.assignfile
set SEQDEFFILE ./dlx_2.seqdef

## Processing steps  1=do, 0=don't
set do_build_model 1;
set do_fault_model 1;

set do_build_testmode_FULLSCAN 1;
set do_report_test_structures_FULLSCAN 1;
set do_verify_test_structures_FULLSCAN 1;


#*************************************************
#BUILD MODEL
#*************************************************

if {$do_build_model} {
puts  "Building Test Model"

build_model  \
   -cell $CELL \
   -workdir $WORKDIR \
   -designsource $NETLIST \
   -TECHLIB $LIBRARY \
   -allowmissingmodules yes \

}
#*************************************************
#BUILD FAULT MODEL
#*************************************************

if { $do_fault_model} {
puts "Building Test Fault Model"

build_faultmodel \
   -includedynamic no 

}


#*************************************************
#BUILD TEST MODE FULLSCAN
#*************************************************
if {$do_build_testmode_FULLSCAN} {
puts "Building Test Mode $TESTMODE"

build_testmode \
   -WORKDIR $WORKDIR \
   -testmode $TESTMODE \
   -modedef $TESTMODE \
   -assignfile $ASSIGNFILE \
   -seqdef $SEQDEFFILE \
   -seqpath $WORKDIR \

}

#*************************************************
#Report Test Structures for FULLSCAN MODE
#*************************************************

if {$do_report_test_structures_FULLSCAN} {
puts "Report Test Structures $TESTMODE"

report_test_structures \
   -workdir $WORKDIR \
   -testmode $TESTMODE \
}

#*************************************************
#Verify Test Structures for FULLSCAN MODE
#*************************************************

if {$do_verify_test_structures_FULLSCAN} {
puts "Verify Test Structures $TESTMODE"

verify_test_structures \
   -workdir $WORKDIR \
   -testmode $TESTMODE \
}
puts "Modus Run Script Complete"
