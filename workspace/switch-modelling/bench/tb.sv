/**
 * testbench template
 *
 * @version: 0.1
 * @author : Gabriel Villanova N. M.
 */

module tb;
  reg in, ctrl;
  wire out;

  // dut instantiation
  dut uu_dut(
    .in(in),
    .ctrl(ctrl),
    .out(out)
  );

  // main block
  initial begin
    // if ctrl = 0, then the output is always 'z
    in   = 0;
    ctrl = 0;
    #10;

    in   = 1;
    ctrl = 0;
    #10;

    // if ctrl = 1, then the output is always in
    in   = 0;
    ctrl = 1;
    #10;

    in   = 1;
    ctrl = 1;
    #10;

    $finish();
  end
  
  // monitor
  initial begin
    $monitor("%2t, in: %0b, out: %0b, ctrl: %0b", $time, in, out, ctrl);
  end
endmodule