class eg_env extends uvm_env;
  `uvm_component_utils(eg_env)

  eg_agent_a uu_eg_agent_a;
  eg_agent_b uu_eg_agent_b;

  function new(string name = "eg_env", uvm_component parent);
    super.new(name, parent);
  endfunction : new

  function void build_phase(uvm_phase phase);
    uu_eg_agent_a = eg_agent_a::type_id::create("uu_eg_agent_a", this);
    uu_eg_agent_b = eg_agent_b::type_id::create("uu_eg_agent_b", this);
  endfunction: build_phase

  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    uu_eg_agent_a.uu_eg_driver_a.in_ap_agent_tx.connect(uu_eg_agent_b.uu_eg_driver_b.in_ap_agent_rx);
  endfunction : connect_phase
  
endclass : eg_env