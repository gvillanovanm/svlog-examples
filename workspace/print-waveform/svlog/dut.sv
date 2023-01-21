/**
 * dummy calculator template
 *
 * @version: 0.1
 * @author : Gabriel Villanova N. M.
 */

module dut #(
  // parameters
  )(
  input logic clk,
  input logic rst,
  input logic [1:0] i_sel,
  input logic [15:0] i_a,
  input logic [15:0] i_b,

  output logic [31:0] o_r
  );
  
  enum logic [1:0] { SUM, SUB, MUL, DIV } operations_e;

  always_ff @(posedge clk) begin
    if(rst) begin
      o_r <= 0;
    end else begin
      unique case (i_sel)
        SUM: o_r <= i_a + i_b;
        SUB: o_r <= i_a - i_b;
        MUL: o_r <= i_a * i_b;
        DIV: o_r <= i_a / i_b;
      endcase
    end
  end
  
endmodule