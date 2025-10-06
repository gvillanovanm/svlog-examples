class eg_virtual_sequence extends uvm_sequence;
    `uvm_object_utils(eg_virtual_sequence)
    `uvm_declare_p_sequencer(eg_virtual_sequencer)
    
    eg_sequence_a uu_eg_sequence_a;
    eg_sequence_b uu_eg_sequence_b;

    function new (string name = "eg_virtual_sequence");
        super.new(name);
        uu_eg_sequence_a = eg_sequence_a::type_id::create("uu_eg_sequence_a");
        uu_eg_sequence_b = eg_sequence_b::type_id::create("uu_eg_sequence_b");
    endfunction

    task body();
        fork
            begin
                uu_eg_sequence_a.start(.sequencer(p_sequencer.eg_seqr_a),.parent_sequence(this));
            end

            begin
                uu_eg_sequence_b.start(.sequencer(p_sequencer.eg_seqr_b),.parent_sequence(this));
            end
        join
    endtask
endclass