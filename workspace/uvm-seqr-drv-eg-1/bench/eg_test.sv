class eg_test extends uvm_test;
  `uvm_component_utils(eg_test)

  eg_env env;

  function new(string name = "eg_test", uvm_component parent);
    super.new(name, parent);
  endfunction: new

  function void build_phase(uvm_phase phase);
    /*  note: Do not call super.build_phase() from any class that is extended from an UVM base class!  */
    /*  For more information see UVM Cookbook v1800.2 p.503  */
  
    env = eg_env::type_id::create("env", this);

    // ways for start a sequence...
    
    // way 1: choose the sequence that you want to use (..type_a or ..type_b for example)
    uvm_config_wrapper::set(
      this, 
      "env.agent.sequencer.run_phase",
      "default_sequence",
      eg_sequence_type_a::get_type());

    // way 2...
  endfunction: build_phase
  
  function void end_of_elaboration_phase(uvm_phase phase);
    uvm_top.print_topology();    
  endfunction: end_of_elaboration_phase
  
endclass: eg_test
