/**
 * testbench template
 *
 * @version: 0.1
 * @author : Gabriel Villanova N. M.
 */

module tb;
  // import and includes
  import uvm_pkg::*;
  `include "uvm_macros.svh"
  
  import eg_pkg::*;

  // main block
  initial begin
    // codes here ...
    $display("\n");
    $display("# starts tb");
    $display("\n");

    // change it for +UVM_TESTNAME
    run_test("eg_test_basic");
  end
  
  // dump variable for debug
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end

endmodule