TB_FILES  = bench/tb.sv
RTL_FILES = svlog/dut.sv

cmp:
	dvlcom -sv svlog/dut.sv

sim:
	dsim svlog/dut.sv bench/tb.sv

clean:
	rm -rf *.env *.log *.db dsim_work/