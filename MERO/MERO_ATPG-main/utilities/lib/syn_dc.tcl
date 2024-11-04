define_design_lib WORK -path ./debug/WORK
set search_path ./

set_app_var link_library {}
lappend link_library "leda/lec25dscc25.db"  #path to .db file of link lib

set_app_var target_library {}
lappend target_library "leda/lec25dscc25.db"  #path to .db file of target lib

analyze -f verilog c17.v  # Design file
elaborate c17   # <top module name>
check_design
check_timing
compile -ungroup_all
write -f verilog -o c17_syn.v   # Synthesized netlist name

#report_area > c17.area.rpt
#report_power > c17.power.rpt
#report_timing > c17.timing.rpt

quit




