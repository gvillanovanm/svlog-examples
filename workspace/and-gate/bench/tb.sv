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

  localparam OUTPUT=100;
  bit [0:119] test;
  int m_a=7;

  // main block
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;

    // if even
    $display("total=%d", m_a);
    if(m_a%2) begin
      $display("cycles 0: %d", m_a/2+1);
      $display("cycles 1: %d", m_a/2);
    end else begin
      $display("cycles 0: %d", m_a/2);
      $display("cycles 1: %d", m_a/2);
    end
    
    $finish();
    test = 0;
    $display("test %b", test);
    test = {1'b1, test[1:119]};
    $display("test %b", test);

    test = test >> (OUTPUT);
    $display("test %b", test);
    
    repeat(5) begin
      test = test >> 1;
      $display("test %b", test);
    end
    $finish();

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