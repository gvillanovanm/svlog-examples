class eg_agent_a extends uvm_agent;
    `uvm_component_utils(eg_agent_a)

    eg_driver_a uu_eg_driver_a;
    eg_sequencer_a uu_eg_sequencer_a;

    function new(string name = "eg_agent_a", uvm_component parent);
        super.new(name, parent);
    endfunction: new

    function void build_phase(uvm_phase phase);
        uu_eg_driver_a = eg_driver_a::type_id::create("uu_eg_driver_a", this);
        uu_eg_sequencer_a = eg_sequencer_a::type_id::create("uu_eg_sequencer_a", this);
    endfunction: build_phase

    function void connect_phase(uvm_phase phase);
        uu_eg_driver_a.seq_item_port.connect(uu_eg_sequencer_a.seq_item_export);
    endfunction: connect_phase

endclass : eg_agent_a