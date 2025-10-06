package eg_pkg;
    import uvm_pkg::*;
    `include "uvm_macros.svh"  

    // agent a
    `include "agent_a/eg_sequence_item_a.sv"
    `include "agent_a/eg_sequence_a.sv"
    `include "agent_a/eg_sequencer_a.sv"
    `include "agent_a/eg_driver_a.sv"
    `include "agent_a/eg_agent_a.sv"

    // agent b
    `include "agent_b/eg_sequence_item_b.sv"
    `include "agent_b/eg_sequence_b.sv"
    `include "agent_b/eg_sequencer_b.sv"
    `include "agent_b/eg_driver_b.sv"
    `include "agent_b/eg_agent_b.sv"

    `include "eg_virtual_sequencer.sv"
    `include "eg_virtual_sequence.sv"

    `include "eg_env.sv"
    `include "eg_test.sv"
endpackage : eg_pkg