TB = array

run_cds: cds_sim
run_questa: questa_batchmode 

# ----------------------------------------------------
# Xrun Cadence
# ----------------------------------------------------
cds_sim: cds_clean
	xrun $(TB).sv

cds_clean:
	rm -rf xcelium.d
	rm -rf xrun.*
	rm -rf .simvision
	rm -rf xmsim*

# ----------------------------------------------------
# QuestaSim
# ----------------------------------------------------
QUESTA_LIB_WORK = lib_BENCH

questa_batchmode: questa_clean questa_libs questa_compile
	vsim +nowarn3116 -batch -do "run -all" lib_BENCH.tb

questa_compile:
	vlib ../libs/$(QUESTA_LIB_WORK)
	vmap $(QUESTA_LIB_WORK) ../libs/$(QUESTA_LIB_WORK) 
	vlog -work $(QUESTA_LIB_WORK) $(VLOG_FILES) $(TB).sv

questa_libs:
	mkdir -p ../libs/lib_BENCH

questa_clean:
	rm -rf modelsim.ini
	rm -rf transcript
	rm -rf vsim.wlf
	rm -rf ../libs/

# clean
clean: cds_clean questa_clean
