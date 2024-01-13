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

  // dut instantiation
  dut uu_dut(.*);

  // clk generator
  always #(CLK_PERIOD/2) clk=~clk;

  // array
  int dyn_array[];

  // main block
  initial begin
    // codes here ...
    $display("####################################");
    $display("        Hello, Siemens!");
    $display("####################################");

    // new dyn array
    dyn_array = new[3];
    dyn_array = '{1, 2, 3};

    $display("dyn_array %p", dyn_array);
    $display("dyn_array %d\n", dyn_array[40]);

    dyn_array = new[2];
    $display("dyn_array %p", dyn_array);

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