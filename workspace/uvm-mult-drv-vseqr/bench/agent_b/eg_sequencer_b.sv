class eg_sequencer_b extends uvm_sequencer #(eg_sequence_item_b);
    `uvm_component_utils(eg_sequencer_b)

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction: new

endclass : eg_sequencer_b