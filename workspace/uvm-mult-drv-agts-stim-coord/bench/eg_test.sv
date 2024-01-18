class eg_test extends uvm_test;
    `uvm_component_utils(eg_test)

    eg_env uu_eg_env;
    eg_sequence_a uu_eg_sequence_a;

    function new(string name = "eg_test", uvm_component parent);
        super.new(name, parent);
    endfunction: new

    function void end_of_elaboration_phase(uvm_phase phase);
        uvm_top.print_topology();    
    endfunction : end_of_elaboration_phase

    function void build_phase(uvm_phase phase);
        uu_eg_env = eg_env::type_id::create("uu_eg_env", this);
        uu_eg_sequence_a = eg_sequence_a::type_id::create("uu_eg_sequence_a", this);
    endfunction : build_phase

    task main_phase(uvm_phase phase);
        `uvm_info(get_name(), "<run_phase> started, objection raised.", UVM_NONE)
        phase.raise_objection(this);
            uu_eg_sequence_a.start(uu_eg_env.uu_eg_agent_a.uu_eg_sequencer_a);
        phase.drop_objection(this);
        `uvm_info(get_name(), "<run_phase> finished, objection dropped.", UVM_NONE)
    endtask : main_phase
    
endclass : eg_test