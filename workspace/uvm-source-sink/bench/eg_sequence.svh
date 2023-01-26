/**
 * eg_sequence
 * @brief: is-a uvm_sequence.
 *  the uvm_sequence has done methods to create 'n start transactions;
 *  here we do not model the packet/data, we use it to randomize and start.
 */
class eg_sequence extends uvm_sequence #(eg_seq_item);
  `uvm_object_utils(eg_sequence)
  
  // methods
  function new(string name = "eg_sequence");
    super.new(name);
  endfunction: new

  // tasks
  task body();
    eg_seq_item tx;

    forever begin
      tx = eg_seq_item::type_id::create("tx");
      start_item(tx);
      assert(tx.randomize());
      finish_item(tx);
    end
  endtask: body
endclass