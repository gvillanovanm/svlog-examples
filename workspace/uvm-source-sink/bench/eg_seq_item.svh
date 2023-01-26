/**
 * eg_seq_item
 * @brief: DEFINES/Modelling the "packet"/data that will be used
 */
class eg_seq_item extends uvm_sequence_item;
  // attributes
  rand bit cmd;
  rand int data;
  
  // factory
  `uvm_object_utils_begin(eg_seq_item)
    `uvm_field_int(cmd, UVM_ALL_ON)
    `uvm_field_int(data, UVM_ALL_ON)
  `uvm_object_utils_end
  
  // constraints
  constraint c_data {
    data >= 0;
    data <  256;
  }
  
  // new
  function new(string name = "");
    super.new(name);
  endfunction: new

  // methods
  function string convert2string();
    return $psprintf("cmd=%b, data=%0d", cmd, data);
  endfunction: convert2string
endclass