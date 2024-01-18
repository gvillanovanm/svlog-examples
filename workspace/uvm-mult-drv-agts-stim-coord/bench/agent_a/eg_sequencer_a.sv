class eg_sequencer_a extends uvm_sequencer #(eg_sequence_item_a);
    `uvm_component_utils(eg_sequencer_a)

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction: new

endclass : eg_sequencer_a