
module tb;
  import uvm_pkg::*;
  `include "uvm_macros.svh"  
  `include "dummy_uvm_component.sv"

  dummy_uvm_component dummy_obj;

  // main block
  initial begin
    test_say_hello();
    test_say_str("Don't run with scissors.");

    $finish();
  end
  
  // ...
  task test_say_hello();
    if(dummy_obj == null)
      dummy_obj = new(.parent(null));

    dummy_obj.say_hello();
  endtask

  // ...
  task test_say_str(string s);
    if(dummy_obj == null)
      dummy_obj = new(.parent(null));

    dummy_obj.say_str(s);
  endtask
endmodule