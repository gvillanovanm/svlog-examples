class eg_sequence_item_b extends uvm_sequence_item;
    static int data_b;
    static int new_signal_b;
    string str_b = "I'M FROM SEQ ITEM B";

    `uvm_object_utils_begin(eg_sequence_item_b)
    `uvm_field_int(data_b, UVM_ALL_ON | UVM_DEC)
    `uvm_field_int(new_signal_b, UVM_ALL_ON | UVM_DEC)
    `uvm_field_string(str_b, UVM_ALL_ON | UVM_DEC)
    `uvm_object_utils_end

    function new(string name = "eg_sequence_item_b");
        super.new(name);
    endfunction: new

endclass : eg_sequence_item_b