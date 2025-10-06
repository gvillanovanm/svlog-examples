class eg_driver_a extends uvm_driver #(eg_sequence_item_a);
    `uvm_component_utils(eg_driver_a)

    uvm_event ev_send_pkt;
    uvm_analysis_port #(eg_sequence_item_a) in_ap_agent_tx;

    function new(string name = "eg_driver_a", uvm_component parent);
        super.new(name, parent);
        in_ap_agent_tx = new(.name("in_ap_agent_tx"), .parent(this));
    endfunction: new

    task run_phase(uvm_phase phase);
        ev_send_pkt = uvm_event_pool::get_global("ev_sp");

        forever begin
            // get item
            seq_item_port.get_next_item(req);
    
            // debug analysis
            // `uvm_info(get_name(), $sformatf("Driver consumes packet \n%s", req.sprint()), UVM_NONE)
            `uvm_info(get_name(), $sformatf("\n~~~~~~\n# Driver A packet : %s, %0d, %0d\n~~~~~~\n", req.str_a, req.data_a, req.o_data_a), UVM_NONE)
    
            // send item to another driver
            in_ap_agent_tx.write(req);
            ev_send_pkt.trigger();

            // close item
            seq_item_port.item_done();
        end
    endtask: run_phase
endclass : eg_driver_a
