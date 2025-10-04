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
  logic rstn = 1'b1;
  logic i_data = 0;
  logic o_data;

  // dut instantiation
  dut uu_dut(
    .clk(clk),
    .rstn(rstn),
    .i_data(i_data),
    .o_data(o_data)
  );

  // clk generator
  always #(CLK_PERIOD/2) clk=~clk;

  // main block
  initial begin
    // dump variable for debug
    $dumpfile("dump.vcd");
    $dumpvars;
    
    // codes here ...
    @(posedge clk); // 1 
    rstn = 0;
    repeat(2)
      @(posedge clk); // 2, 3 
    rstn = 1;

    @(posedge clk); // 4

    @(posedge clk); // 5
    i_data = 1;

    @(posedge clk); // 6
    i_data = 0;

    @(posedge clk);

    $finish();
  end

endmodule