class eg_test extends uvm_test;
  `uvm_component_utils(eg_test)

  eg_env env;
  eg_sequence_type_b seq_type_b;

  function new(string name = "eg_test", uvm_component parent);
    super.new(name, parent);
  endfunction: new

  function void build_phase(uvm_phase phase);
    /*  note: Do not call super.build_phase() from any class that is extended from an UVM base class!  */
    /*  For more information see UVM Cookbook v1800.2 p.503  */
  
    env = eg_env::type_id::create("env", this);

    // ways for start a sequence...
    
    // way 1: choose the sequence that you want to use (..type_b or ..type_b for example)
    uvm_config_wrapper::set(
      this, 
      "env.agent.sequencer.run_phase", // attention with the phase and objections
      "default_sequence",
      eg_sequence_type_b::get_type()); // attention with the sequence_type*

    // way 2...
    // seq_type_b = eg_sequence_type_b::type_id::create("seq");
  endfunction: build_phase
  
  function void end_of_elaboration_phase(uvm_phase phase);
    uvm_top.print_topology();    
  endfunction: end_of_elaboration_phase
  
  // task run_phase(uvm_phase phase);
    // `uvm_info(get_name(), "<run_phase> started, objection raised.", UVM_NONE)
    // phase.raise_objection(this);
      // seq_type_b.start(env.agent.sequencer);
    // phase.drop_objection(this);
    // `uvm_info(get_name(), "<run_phase> finished, objection dropped.", UVM_NONE)
  // endtask: run_phase

endclass: eg_test
