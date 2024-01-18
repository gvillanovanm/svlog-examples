class eg_agent_b extends uvm_agent;
    `uvm_component_utils(eg_agent_b)

    eg_driver_b uu_eg_driver_b;
    eg_sequencer_b uu_eg_sequencer_b;

    function new(string name = "eg_agent_b", uvm_component parent);
        super.new(name, parent);
    endfunction: new

    function void build_phase(uvm_phase phase);
        uu_eg_driver_b = eg_driver_b::type_id::create("uu_eg_driver_b", this);
        uu_eg_sequencer_b = eg_sequencer_b::type_id::create("uu_eg_sequencer_b", this);
    endfunction: build_phase

    function void connect_phase(uvm_phase phase);
        uu_eg_driver_b.seq_item_port.connect(uu_eg_sequencer_b.seq_item_export);
    endfunction: connect_phase

endclass : eg_agent_b