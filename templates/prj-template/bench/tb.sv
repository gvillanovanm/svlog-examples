/**
 * Testbench template
 *
 * @version: 0.1
 * @author : Gabriel Villanova N. M.
 */

 module tb;
  // localparams
  localparam CLK_PERIOD = 10;

  // signals
  logic clk = 1'b0;
  logic rst_n = 1'b0;

  // dut instantiation
  dut uu_dut(.*);

  // clk generator
  always #(CLK_PERIOD/2) clk=~clk;

  // main block
  initial begin
    // codes here ...

    $finish();
  end
  
  // dump variable for debug
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end

  // final block
  final begin
    $display("");
  end

endmodule