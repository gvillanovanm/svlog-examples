TB = tb
PKG_FILES = 
DUT_FILES = ../svlog/dut.sv

run_cds: cds_batchmode
run_questa: questa_batchmode 

# ----------------------------------------------------
# Xrun Cadence
# ----------------------------------------------------
CDS_DATABASE  = -sysv -64 -access rwc 
CDS_DEBUG     = -debug -linedebug -classlinedebug
CDS_COV_FLAGS = -coverage all
CDS_UVM_FLAGS = -uvm +UVM_NO_RELNOTES
CDS_UVM_DEBUG = -uvmlinedebug +UVM_PHASE_TRACE +UVM_OBJECTION_TRACE
CDS_DEFINES   = -define DEF_DUMMY
CDS_TCL	      = -tcl -input ../scripts/control-sim.tcl

cds_tcl: cds_clean
	xrun $(CDS_DATABASE) $(CDS_DEBUG) $(CDS_COV_FLAGS) $(CDS_UVM_FLAGS) $(CDS_UVM_DEBUG) $(DUT_FILES) $(CDS_DEFINES) $(CDS_TCL) $(TB).sv

cds_batchmode: cds_clean
	xrun $(CDS_DATABASE) $(CDS_DEBUG) $(CDS_COV_FLAGS) $(CDS_UVM_FLAGS) $(CDS_UVM_DEBUG) $(DUT_FILES) $(CDS_DEFINES) $(TB).sv

cds_gui:
	xrun $(CDS_DATABASE) $(CDS_DEBUG) $(CDS_COV_FLAGS) $(CDS_UVM_FLAGS) $(CDS_UVM_DEBUG) $(DUT_FILES) $(CDS_DEFINES) $(TB).sv -gui

cds_clean:
	rm -rf xcelium.d
	rm -rf xrun.*
	rm -rf .simvision
	rm -rf xmsim*
	rm -rf cov_work
	rm -rf *.vcd
	rm -rf wave_image
	rm -rf xcelium*

clean: cds_clean	
