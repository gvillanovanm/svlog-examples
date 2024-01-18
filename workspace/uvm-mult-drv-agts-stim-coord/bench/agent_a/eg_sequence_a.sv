// "data producer"
class eg_sequence_a extends uvm_sequence #(eg_sequence_item_a);
  `uvm_object_utils(eg_sequence_a)

  function new(string name = "eg_sequence_a");
    super.new(name);
  endfunction: new

  virtual task body();
    repeat(2) begin
      `uvm_info(get_name(), "Producing req on body sequence TYPE A", UVM_MEDIUM)

      // way 1: create, start, randomize/const, finish.
      req = eg_sequence_item_a::type_id::create("req");
      start_item(req);
      // assert(req.randomize()); only if you have license
      req.data_a++;
      finish_item(req);
      #10;
      
      // way 2: using UVM macros; eg: uvm_do, uvm_do_with... using "req"
      // `uvm_do(req)
      // #10;
    end
  endtask : body

endclass: eg_sequence_a