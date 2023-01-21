### This example aims to automate the process of obtaining signals values and the Simvision waveform image automatically.

### Why? 
- It is tedious to obtain bug information manually for the designer.
- It is tedious to create a report to report the bug.

### How to use?

- **Explore mode**: First, generate a .svwf file (see the next section). Now, just type `$ make cds_tcl`, it will save a wave_image of the waveform test.

### How to generate a .svwf file

- Open Simvision, load the signals manually to the waveform, press the right button on the desired signals, and finally click on "Save Signals." This will create a .svwf file used in the control-sim.tcl.

### Files descriptions
- control-sim.tcl: the main Tcl commands, use it to control your simulation.
- signals.svwf: contains the signals of interest and allows for specific intervals of observation (the line: "waveform xview limits 0 30ns").

### References
1. SimVision: Using the SimVision Tcl Command Language (xcelium docs SimVisCmdLang.pdf)
2. SimVision: Quick Reference (xcelium docs simvision_qrg.pdf)