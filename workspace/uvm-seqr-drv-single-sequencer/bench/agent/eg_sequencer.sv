// "data executor"
class eg_sequencer extends uvm_sequencer #(eg_sequence_item);
  `uvm_component_utils(eg_sequencer)

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction: new

endclass: eg_sequencer