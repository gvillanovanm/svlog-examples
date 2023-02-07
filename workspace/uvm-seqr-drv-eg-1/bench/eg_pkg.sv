package eg_pkg;
  import uvm_pkg::*;
  `include "uvm_macros.svh"  

  // agent
  `include "agent/eg_sequence_item.sv"
  `include "agent/eg_sequence.sv"
  `include "agent/eg_sequencer.sv"
  `include "agent/eg_driver.sv"
  `include "agent/eg_agent.sv"

  // ...
  `include "eg_env.sv"
  `include "eg_test.sv"
endpackage: eg_pkg
