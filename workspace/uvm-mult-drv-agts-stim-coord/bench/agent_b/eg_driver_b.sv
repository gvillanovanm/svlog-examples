class eg_driver_b extends uvm_driver #(eg_sequence_item_b);
    `uvm_component_utils(eg_driver_b)

    uvm_event ev_recv_pkt;
    uvm_analysis_imp #(eg_sequence_item_a, eg_driver_b) in_ap_agent_rx;

    function new(string name = "eg_driver_b", uvm_component parent);
        super.new(name, parent);
        in_ap_agent_rx = new("in_ap_agent_rx", this);
    endfunction: new

    task run_phase(uvm_phase phase);
        ev_recv_pkt = uvm_event_pool::get_global("ev_sp");

        forever begin
            // get item
            seq_item_port.get_next_item(req);
    
            // debug analysis
            ev_recv_pkt.wait_trigger();
            `uvm_info(get_name(), $sformatf("\n~~~~~~\n# Driver B packet : %s, %0d\n~~~~~~\n", req.str_b, req.data_b), UVM_NONE)
    
            // close item
            seq_item_port.item_done();
        end
    endtask: run_phase

    virtual function void write(eg_sequence_item_a t);
        `uvm_info(get_name(), $sformatf("\n~~~~~~\n# Driver B RECEIVE FROM A : %s, %0d\n~~~~~~\n", t.str_a, t.data_a), UVM_NONE)
    endfunction
endclass : eg_driver_b
