# open a simvision window (path of signals is referent to Makefile location)
simvision -submit waveform new -reuse -name Waveforms
simvision -submit waveform loadsignals -using Waveforms ../scripts/signals.svwf

# probe the desire signals
probe -create -shm tb.uu_dut.clk tb.uu_dut.i_a tb.uu_dut.i_b tb.uu_dut.i_sel tb.uu_dut.o_r tb.uu_dut.operations_e tb.uu_dut.rst

# run until X unit time (eg: 10 unit time)
run -timepoint 300

# describe signals in X time, it can be saved for a post-processing...
describe tb.uu_dut.clk tb.uu_dut.i_a tb.uu_dut.i_b tb.uu_dut.i_sel tb.uu_dut.o_r tb.uu_dut.operations_e tb.uu_dut.rst

# print the waveform
simvision waveform print -using Waveforms -file wave_image -colors coloronwhite

# exit (do not print correctly if enable exit)