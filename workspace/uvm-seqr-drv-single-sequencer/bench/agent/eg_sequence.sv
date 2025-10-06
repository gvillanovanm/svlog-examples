// ------------------------------------------------------------------
// type A
// ------------------------------------------------------------------

// "data producer"
class eg_sequence_type_a extends uvm_sequence #(eg_sequence_item);
  `uvm_object_utils(eg_sequence_type_a)

  // use inherited "req" variable that's equal to eg_sequence_item

  function new(string name = "eg_sequence_type_a");
    super.new(name);
  endfunction: new

  virtual task pre_body();
    `uvm_info(get_name(), "Raise objection on pre_body sequence", UVM_MEDIUM)
    if(starting_phase != null)
      starting_phase.raise_objection(this);
  endtask: pre_body

  virtual task body();
    repeat(5) begin
      `uvm_info(get_name(), "Producing req on body sequence TYPE A", UVM_MEDIUM)

      // way 1: create, start, randomize/const, finish.
      // req = eg_sequence_item::type_id::create("req");
      // start_item(req);
      // assert(req.randomize());
      // finish_item(req);
      // #10;
      
      // way 2: using UVM macros; eg: uvm_do, uvm_do_with... using "req"
      // ...
      `uvm_do(req)
      #10;
    end
  endtask: body

  // what happens if you do not drop_objection here? :)
  virtual task post_body();
    `uvm_info(get_name(), "Drop objection on post_body sequence", UVM_MEDIUM)
    if(starting_phase != null)
      starting_phase.drop_objection(this);
  endtask: post_body

endclass: eg_sequence_type_a

// ------------------------------------------------------------------
// type B
// ------------------------------------------------------------------

// "data producer"
class eg_sequence_type_b extends uvm_sequence #(eg_sequence_item);
  `uvm_object_utils(eg_sequence_type_b)

  // use inherited "req" variable that's equal to eg_sequence_item

  function new(string name = "eg_sequence_type_b");
    super.new(name);
  endfunction: new

  virtual task pre_body();
    `uvm_info(get_name(), "Raise objection on pre_body sequence", UVM_MEDIUM)
    if(starting_phase != null)
      starting_phase.raise_objection(this);
  endtask: pre_body

  virtual task body();
    repeat(5) begin
      `uvm_info(get_name(), "Producing req on body sequence TYPE B", UVM_MEDIUM)

      // way 1: create, start, randomize/const, finish.
      req = eg_sequence_item::type_id::create("req");
      start_item(req);
      `uvm_info(get_name(), "\n\nTHERE IS AN COMMENTED ASSERTION HERE CUZ MSIM FREE DOES NOT ALLOW\n\n", UVM_LOW)
      // assert(req.randomize());
      req.data_a = 123;
      req.data_b = 321;
      finish_item(req);
      #10;
      
      // way 2: using UVM macros; eg: uvm_do, uvm_do_with... using "req"
      // ...
      // `uvm_do(req)
      // #10;
    end
  endtask: body

  // what happens if you do not drop_objection here? :)
  virtual task post_body();
    `uvm_info(get_name(), "Drop objection on post_body sequence", UVM_MEDIUM)
    if(starting_phase != null)
      starting_phase.drop_objection(this);
  endtask: post_body

endclass: eg_sequence_type_b