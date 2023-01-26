class eg_test_basic extends uvm_test;
  `uvm_component_utils(eg_test_basic)
  
  eg_env env;

  // new
  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction: new

  // build-phase
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    env = eg_env::type_id::create("env", this);
  endfunction: build_phase
  
  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);

    uvm_top.print_topology();
  endfunction: end_of_elaboration_phase

  // run-phase
  virtual task run_phase(uvm_phase phase);
    eg_sequence sequence_test_basic;
    sequence_test_basic = eg_sequence::type_id::create("sequence_test_basic");
    sequence_test_basic.start(env.source.eg_sequencer);
  endtask: run_phase
endclass: eg_test_basic