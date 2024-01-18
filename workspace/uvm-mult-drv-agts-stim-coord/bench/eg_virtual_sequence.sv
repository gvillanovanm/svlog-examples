class eg_virtual_sequence extends uvm_sequence #(uvm_sequence_item);
    `uvm_object_utils(eg_virtual_sequence)
    
    eg_sequence_a uu_eg_sequence_a;
    eg_sequence_b uu_eg_sequence_b;

    eg_sequencer_a uu_eg_sequencer_a;
    eg_sequencer_b uu_eg_sequencer_b;

    function new (string name = "eg_virtual_sequence");
        super.new(name);
        uu_eg_sequence_a = eg_sequence_a::type_id::create("uu_eg_sequence_a");
        uu_eg_sequence_b = eg_sequence_b::type_id::create("uu_eg_sequence_b");
    endfunction

    task body();
        fork
            begin
                uu_eg_sequence_a.start(.sequencer(uu_eg_sequencer_a),.parent_sequence(this));
            end

            begin
                uu_eg_sequence_b.start(.sequencer(uu_eg_sequencer_b),.parent_sequence(this));
            end
        join
    endtask
endclass