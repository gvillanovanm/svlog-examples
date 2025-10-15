class eg_env extends uvm_env;
  `uvm_component_utils(eg_env)

  eg_agent agent;

  function new(string name = "eg_env", uvm_component parent);
    super.new(name, parent);
  endfunction: new

  function void build_phase(uvm_phase phase);
    /*  note: Do not call super.build_phase() from any class that is extended from an UVM base class!  */
    /*  For more information see UVM Cookbook v1800.2 p.503  */

    agent = eg_agent::type_id::create("agent", this);
  endfunction: build_phase

endclass: eg_env
