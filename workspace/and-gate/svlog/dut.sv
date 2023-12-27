/**
 * DUT template
 *
 * @version: 0.1
 * @author : Gabriel Villanova N. M.
 */

module dut #(
  // parameters
) (
  // port_list
  input logic i_a,
  input logic i_b,
  output logic o_r
);

always_comb begin : AND_BLOCK
  o_r = i_a && i_b;
end

endmodule