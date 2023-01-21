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
  logic rst;
  logic [1:0] sel;
  logic [15:0] a;
  logic [15:0] b;
  logic [31:0] r;

  // dut instantiation
  dut uu_dut(
    clk, rst, sel, a, b, r
  );

  // clk generator
  always #(CLK_PERIOD/2) clk=~clk;

  // main block
  initial begin
    rst = 1;
    repeat(2)
      @(posedge clk);
    
    rst = 0;
    a   = 10;
    b   = 20;
    
    for (int i=0; i<4; ++i) begin
      sel = i;
      @(posedge clk);
      $display("operation %d", sel);
      $display("a  = %0d", a);
      $display("b  = %0d", b);
      $display("sel= %0d", sel);
      $display("r  = %0d", $signed(r));
    end

    #500;
    $finish;
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