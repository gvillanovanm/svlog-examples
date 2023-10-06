/**
 * testbench template
 *
 * @version: 0.1
 * @author : Gabriel Villanova N. M.
 */

class custom_data;
  localparam COUNTER_LOAD = 4;

  rand bit i_valid;
  rand bit i_enable;
  
  static bit turn_off_valid = 0;
  static int turn_off_counter = COUNTER_LOAD - 1;

  function void post_randomize();

    if(turn_off_valid) begin
      this.i_valid = 0;
      turn_off_counter--;

      if(turn_off_counter == 0) begin
        turn_off_counter = COUNTER_LOAD - 1;
        turn_off_valid = 0;
      end
    end

    if(this.i_valid)
      turn_off_valid = 1;

  endfunction

endclass

module tb;
  // localparams
  localparam CLK_PERIOD = 10;

  // signals
  logic clk = 1'b0;
  logic rst_n = 1'b0;
  logic i_valid;
  logic i_enable;

  // dut instantiation
  dut uu_dut(.*);

  // assertions instantiation
  assertions uu_assertions(
    .clk(clk),
    .i_valid(i_valid),
    .i_enable(i_enable)
  );

  // clk generator
  always #(CLK_PERIOD/2) clk=~clk;

  // main block
  custom_data data = new();

  initial begin
    // codes here ...

    repeat(50) begin
      @(posedge clk);
      data.randomize();
      i_valid = data.i_valid;
      i_enable = data.i_enable;
    end

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