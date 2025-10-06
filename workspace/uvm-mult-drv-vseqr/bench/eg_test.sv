class eg_test extends uvm_test;
    `uvm_component_utils(eg_test)

    eg_env uu_eg_env;
    eg_virtual_sequence uu_eg_virtual_sequence;

    function new(string name = "eg_test", uvm_component parent);
        super.new(name, parent);
    endfunction: new

    function void end_of_elaboration_phase(uvm_phase phase);
        uvm_top.print_topology();    
    endfunction : end_of_elaboration_phase

    function void build_phase(uvm_phase phase);
        uu_eg_env = eg_env::type_id::create("uu_eg_env", this);
        uu_eg_virtual_sequence = eg_virtual_sequence::type_id::create("uu_eg_virtual_sequence", this);
    endfunction : build_phase

    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction : connect_phase

    task main_phase(uvm_phase phase);
        `uvm_info(get_name(), "<run_phase> started, objection raised.", UVM_NONE)
        phase.raise_objection(this);
            uu_eg_virtual_sequence.start(uu_eg_env.eg_vseqr);
        phase.drop_objection(this);
        `uvm_info(get_name(), "<run_phase> finished, objection dropped.", UVM_NONE)
    endtask : main_phase
    
endclass : eg_test