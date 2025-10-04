/**
 * DUT template
 *
 * @version: 0.1
 * @author : Gabriel Villanova N. M.
 */

module dut #(
  parameter DELAY_TIME=1
)(
  input i_event,
  output o_event_detected
);
  
  logic w_event_detected;

  always @(posedge i_event) begin
    w_event_detected = 1;
    #(DELAY_TIME);
    w_event_detected = 0;
  end

  assign o_event_detected = w_event_detected;

endmodule