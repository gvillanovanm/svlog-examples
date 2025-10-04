/**
 * DUT template
 *
 * @version: 0.1
 * @author : Gabriel Villanova N. M.
 */

module dut (
  input logic clk_in,  // 1 Hz clock input
  input logic rst, 
  output logic clk_out  // 2 Hz clock output
);

  logic u2_out, u3_out, u4_out;

  // XOR gates instantiation
  assign u2_out = clk_in ^ clk_out;  // U2
  assign u3_out = u2_out ^ clk_in;  // U3
  assign u4_out = u3_out ^ clk_in;  // U4
  assign clk_out = u4_out ^ clk_in;  // U1 (final output)

endmodule