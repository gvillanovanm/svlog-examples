class eg_driver_b extends uvm_driver #(eg_sequence_item_b);
    `uvm_component_utils(eg_driver_b)

    function new(string name = "eg_driver_b", uvm_component parent);
        super.new(name, parent);
    endfunction: new

    task run_phase(uvm_phase phase);
        forever begin
            // get item
            seq_item_port.get_next_item(req);
    
            // debug analysis
            // `uvm_info(get_name(), $sformatf("Driver consumes packet \n%s", req.sprint()), UVM_NONE)
            `uvm_info(get_name(), $sformatf("\n~~~~~~\n# Driver B packet : %s, %0d\n~~~~~~\n", req.str_b, req.data_b), UVM_NONE)
    
            // close item
            seq_item_port.item_done();
        end
    endtask: run_phase
endclass : eg_driver_b
