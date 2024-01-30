//  Class: eg_item
//
class eg_item #(
    parameter PARAM_A = 1,
    parameter PARAM_B = 2,
    parameter type TA = int,
    parameter type TB = real    
) extends uvm_sequence_item;
    `uvm_object_utils(eg_item);

    function new(string name = "eg_item");
        super.new(name);
    endfunction: new

    function void size_of();
        `uvm_info(get_name(), $sformatf("\n\n
            PARAM_A is %d
            PARAM_B is %d
                 TB is %d
                 TA is %d\n", $typename(PARAM_A), $typename(PARAM_B), $typename(TA), $typename(TB)), UVM_NONE)
    endfunction

endclass: eg_item

