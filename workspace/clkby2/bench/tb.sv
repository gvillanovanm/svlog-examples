/**
 * testbench template
 *
 * @version: 0.1
 * @author : Gabriel Villanova N. M.
 */
 module tb;

  // Testbench signals
  logic clk_in = 0;
  logic rst = 0;
  logic clk_out;

  // Instantiate the clk_doubler module
  dut uu_dut (
      .clk_in(clk_in),
      .rst(rst),
      .clk_out(clk_out)
  );

  // Clock generation (50 MHz for example)
  initial begin
    clk_in = 0;
      forever #10 clk_in = ~clk_in; // 50 MHz clock
  end

  initial begin
      rst = 1;
      #2
      rst = 0;
      #2
      rst = 1;
    // Observe the clk_out signal for a few cycles
      repeat (20) @(posedge clk_in);
      
      // Finish the simulation
      $finish();
  end

  // Monitor output clock signal
  initial begin
      $monitor("Time: %0t | clk_in: %b | clk_out: %b", $time, clk_in, clk_out);
  end

endmodule
