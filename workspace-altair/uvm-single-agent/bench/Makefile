TB = tb
PKG_FILES = eg_pkg.sv
DUT_FILES = 

run_altair: altair_batchmode
run_cds: cds_batchmode
run_questa: questa_batchmode 

# ----------------------------------------------------
# Altair
# ----------------------------------------------------
ALTAIR_UVM_FLAGS = +UVM_NO_RELNOTES +UVM_TESTNAME=eg_test

altair_cmp:
	dsim -uvm 1.2 eg_pkg.sv $(TB).sv +UVM_TESTNAME="eg_test"

altair_clean:
	rm -rf *.env *.log *.db dsim_work/

# ----------------------------------------------------
# Xrun Cadence
# ----------------------------------------------------

CDS_DATABASE  = -sysv -64 -access rwc 
CDS_DEBUG     = -debug -linedebug -classlinedebug
CDS_UVM_FLAGS = -uvm +UVM_NO_RELNOTES +UVM_TESTNAME=eg_test
CDS_DEFINES   = -define DEF_DUMMY -timescale 1ns/100ps
CDS_COV_FLAGS = 
CDS_UVM_DEBUG =

cds_batchmode: cds_clean
	xrun $(CDS_DATABASE) $(CDS_DEBUG) $(CDS_COV_FLAGS) $(CDS_UVM_FLAGS) $(CDS_UVM_DEBUG) $(DUT_FILES) $(CDS_DEFINES) $(PKG_FILES) $(TB).sv

cds_gui:
	xrun $(CDS_DATABASE) $(CDS_DEBUG) $(CDS_COV_FLAGS) $(CDS_UVM_FLAGS) $(CDS_UVM_DEBUG) $(DUT_FILES) $(CDS_DEFINES) $(PKG_FILES) $(TB).sv -gui

cds_help:
	@echo '# COV_FLAGS options = {-coverage all, ...}'
	@echo '# CDS_UVM_DEBUG options = {-uvmlinedebug, +UVM_PHASE_TRACE, +UVM_OBJECTION_TRACE, ...}'

cds_clean:
	rm -rf xcelium.d
	rm -rf xrun.*
	rm -rf .simvision
	rm -rf xmsim*
	rm -rf cov_work
	rm -rf *.vcd

# ----------------------------------------------------
# QuestaSim
# ----------------------------------------------------
QUESTA_LIB_WORK = lib_BENCH
QUESTA_UVM_FLAGS = +UVM_NO_RELNOTES +UVM_TESTNAME=eg_test

questa_batchmode: questa_clean questa_libs questa_compile
	vsim +nowarn3116 $(QUESTA_UVM_FLAGS) -batch -do "run -all" $(QUESTA_LIB_WORK).tb

questa_gui: questa_clean questa_libs questa_compile
	vsim

questa_compile:
	vlib ../libs/$(QUESTA_LIB_WORK)
	vmap $(QUESTA_LIB_WORK) ../libs/$(QUESTA_LIB_WORK) 
	vlog -work $(QUESTA_LIB_WORK) $(DUT_FILES) $(PKG_FILES) $(TB).sv

questa_libs:
	mkdir -p ../libs/lib_BENCH

questa_clean:
	rm -rf modelsim.ini
	rm -rf transcript
	rm -rf vsim.wlf
	rm -rf ../libs/

# clean
clean: cds_clean questa_clean

# clean
clean: cds_clean questa_clean altair_clean