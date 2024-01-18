class eg_driver_a extends uvm_driver #(eg_sequence_item_a);
    `uvm_component_utils(eg_driver_a)

    function new(string name = "eg_driver_a", uvm_component parent);
        super.new(name, parent);
    endfunction: new

    task run_phase(uvm_phase phase);
        forever begin
            // get item
            seq_item_port.get_next_item(req);
    
            // debug analysis
            // `uvm_info(get_name(), $sformatf("Driver consumes packet \n%s", req.sprint()), UVM_NONE)
            `uvm_info(get_name(), $sformatf("\n~~~~~~\n# Driver A packet : %s, %0d\n~~~~~~\n", req.str_a, req.data_a), UVM_NONE)
    
            // close item
            seq_item_port.item_done();
        end
    endtask: run_phase
endclass : eg_driver_a
