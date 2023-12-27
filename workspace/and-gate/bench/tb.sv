/**
 * testbench template
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
  logic a, b, r;

  // aux
  logic [1:0] input_vector[4] = '{0, 1, 2, 3};

  // dut instantiation
  dut uu_dut(a,b,r);

  // clk generator
  always #(CLK_PERIOD/2) clk=~clk;

  // main block
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;

    // codes here ...
    $display("Starting simulation...");

    for (int i=0; i<4; i++) begin
      a = input_vector[i][0];
      b = input_vector[i][1];
      #1;
      $display("a = %b", input_vector[i][0]);
      $display("b = %b", input_vector[i][1]);
      $display("r = %b\n", r);
    end

    $finish();
  end
  
  // final block
  final begin
    $display("");
  end

endmodule