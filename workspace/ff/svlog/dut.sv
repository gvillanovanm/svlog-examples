/**
 * DUT template
 *
 * @version: 0.1
 * @author : Gabriel Villanova N. M.
 */

module dut (
  input logic clk,
  input logic rstn,
  input logic i_data,
  output logic o_data
);
  
  always_ff @(posedge clk or negedge rstn) begin
    if(!rstn) begin
      o_data <= 0;
    end else begin
      o_data <= i_data;
    end
  end

endmodule