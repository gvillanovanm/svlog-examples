/**
 * DUT template
 *
 * @version: 0.1
 * @author : Gabriel Villanova N. M.
 */

module dut #(
  // parameters
) (
  input wire in,
  input wire ctrl,
  output wire out
);
  
  tranif1 gl(in, out, ctrl);

endmodule