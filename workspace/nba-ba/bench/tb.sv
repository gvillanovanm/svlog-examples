/**
 * testbench template
 *
 * @version: 0.1
 * @author : Gabriel Villanova N. M.
 */

module tb;
  logic clk = 0;
  logic din;
  logic reset;
  logic dout;
   
  // instantiate DUT and connections
  dut fsm (reset, din, clk, dout);
   
  // clock generator
  always #5 clk = ~clk;

  // main
  initial begin
    reset <= 1;
    repeat(2)
      @(posedge clk);
    reset <= 0;

    // din <= 0, non-blocking assignment '<='
    // it will occurs in the same time, then the circuit will see a little bit BEFORE the CLOCK (tip: the din appears BEFORE the clock)
    din <= 0;
    @(posedge clk);

    // din = 1, blocking-assignment '=' 
    // it will see the new value of din in exact posedge (tip: the din appear FIRST that the clock)
    din = 1;
    @(posedge clk);
        
    // exercise:
    // change from '<=' to '=' and vice-versa, and see the effects on circuit.
    // what happens and why? the transiction depends on din.
    din <= 0;
    @(posedge clk);

    // exercise:
    // change from '<=' to '=' and vice-versa, and see the effects on circuit.
    // What happens and why? S2->S0 will occurs independently of din, then the transiction occurrs.
    din <= 1;
    repeat(3) @(posedge clk);

    $finish;    
  end
  
  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
  end

  // final block
  final begin
    $display("");
  end

endmodule