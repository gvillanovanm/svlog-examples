package eg_pkg;
    import uvm_pkg::*;
    `include "uvm_macros.svh"  

    // agent
    `include "agent_a/eg_sequence_item_a.sv"
    `include "agent_a/eg_sequence_a.sv"
    `include "agent_a/eg_sequencer_a.sv"
    `include "agent_a/eg_driver_a.sv"
    `include "agent_a/eg_agent_a.sv"

    `include "eg_env.sv"
    `include "eg_test.sv"
endpackage : eg_pkg