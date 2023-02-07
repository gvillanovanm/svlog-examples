class eg_agent extends uvm_agent;
  `uvm_component_utils(eg_agent)

  eg_driver driver;
  eg_sequencer sequencer;

  function new(string name = "eg_agent", uvm_component parent);
    super.new(name, parent);
  endfunction: new

  function void build_phase(uvm_phase phase);
    /*  note: Do not call super.build_phase() from any class that is extended from an UVM base class!  */
    /*  For more information see UVM Cookbook v1800.2 p.503  */

    driver = eg_driver::type_id::create("driver", this);
    sequencer = eg_sequencer::type_id::create("sequencer", this);
  endfunction: build_phase

  function void connect_phase(uvm_phase phase);
    // FROM (initiator) ... TO (target) ...
    driver.seq_item_port.connect(sequencer.seq_item_export);
  endfunction: connect_phase
  
endclass: eg_agent
