class eg_sequence_item_a extends uvm_sequence_item;
    static int data_a;
    string str_a = "I'M FROM SEQ ITEM A";
    static int o_data_a;

    `uvm_object_utils_begin(eg_sequence_item_a)
        `uvm_field_int(data_a, UVM_ALL_ON | UVM_DEC)
        `uvm_field_int(o_data_a, UVM_ALL_ON | UVM_DEC)
        `uvm_field_string(str_a, UVM_ALL_ON | UVM_DEC)
    `uvm_object_utils_end

    function new(string name = "eg_sequence_item_a");
        super.new(name);
    endfunction: new

endclass : eg_sequence_item_a