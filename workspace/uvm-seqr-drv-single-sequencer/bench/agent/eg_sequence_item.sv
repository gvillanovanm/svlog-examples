// "data modelling"
class eg_sequence_item extends uvm_sequence_item;
  rand int data_a;
  rand int data_b;
  rand logic [1:0] cmd;

  `uvm_object_utils_begin(eg_sequence_item)
    `uvm_field_int(data_a, UVM_ALL_ON | UVM_DEC)
    `uvm_field_int(data_b, UVM_ALL_ON | UVM_DEC)
    `uvm_field_int(cmd, UVM_ALL_ON)
  `uvm_object_utils_end

  function new(string name = "eg_sequence_item");
    super.new(name);
  endfunction: new

  // constraints...

  // aux methods...
  
endclass: eg_sequence_item