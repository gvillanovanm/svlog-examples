/**
 * DUT template
 *
 * @version: 0.1
 * @author : Gabriel Villanova N. M.
 */

module lfsr_6bit (
  input logic clk,
  input logic rst_n,
  input logic enable,
  output logic [5:0] lfsr_out
);
  logic [5:0] lfsr;

  // Feedback polynomial: x^6 + x^5 + 1
  always_ff @(posedge clk or negedge rst_n) begin
      if (!rst_n)
          lfsr <= 6'b000001; // Non-zero seed value
      else if (enable)
          lfsr <= {lfsr[4:0], lfsr[5] ^ lfsr[4]};
  end

  assign lfsr_out = lfsr;

endmodule