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
  bit [7:0] addr, data;

  // dut instantiation
  dut uu_dut(.*);

  // clk generator
  always #(CLK_PERIOD/2) clk=~clk;

  covergroup c_group;
    cp1: coverpoint addr;
    cp2: coverpoint data;
    cp1_X_cp2: cross cp1, cp2;
  endgroup : c_group

  c_group cg = new();

  // main block
  initial begin
    // codes here ...
    cg.start();
    cg.set_inst_name("my_cg");
      
    forever begin
      cg.sample();
      #5;
    end
  end
  
  // dump variable for debug
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("At time = %0t: addr = %0d, data = %0d", $time, addr, data);
    
    repeat(5) begin
      addr = $random;
      data = $random;
      #5;
    end
    cg.stop();
    $display("Coverage = %f", cg.get_coverage());
    $finish;
  end

  // final block
  final begin
    $display("");
  end

endmodule