class eg_virtual_sequencer extends uvm_sequencer;
    `uvm_component_utils(eg_virtual_sequencer)

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction: new

    eg_sequencer_a eg_seqr_a;
    eg_sequencer_b eg_seqr_b;

endclass : eg_virtual_sequencer