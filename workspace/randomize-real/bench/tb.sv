/**
 * testbench template
 *
 * @version: 0.1
 * @author : Gabriel Villanova N. M.
 */

class CustomRandomize;
  rand int unsigned multiplier;
  real result, A=-1.0, B=1.0;
 
  function real get_value_randomized();
    result = A + (B-A)*(real'(multiplier)/32'hffffffff);
    return result;
  endfunction

  function real get_value();
    void'(this.randomize());
    return this.get_value_randomized();
  endfunction
endclass

module tb;
  // localparam
  localparam int NUM_OF_SAMPLE = 10;

  // points
  real x, y;
  CustomRandomize custom_rand;

  initial begin
    custom_rand = new();

    for (int i=0; i<NUM_OF_SAMPLE; ++i) begin
      // generate real random numbers between -1 to +1
      x = custom_rand.get_value();
      y = custom_rand.get_value();
      // write_csv(x, y);
      $display("x, y = %8f, %8f", x, y);
    end

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

/**
 * functions
 *
 */

function void write_csv(real x, real y);
  static int out = $fopen("input.csv", "w");
  $fwrite(out, "%f,%f\n", x, y);
endfunction