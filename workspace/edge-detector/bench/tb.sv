/**
 * testbench template
 *
 * @version: 0.1
 * @author : Gabriel Villanova N. M.
 */

module tb;
  // signals
  logic i_event;
  logic o_event_detected;

  // dut instantiation
  dut uu_dut(
    .i_event(i_event),
    .o_event_detected(o_event_detected)
  );

  // main block
  initial begin
    // codes here ...
    $display("%3t, o_event_detected : %b", $time, o_event_detected);
    #5;
    $display("%3t, o_event_detected : %b", $time, o_event_detected);
    #5;

    // 
    i_event = 0;
    #1;
    i_event = 1;
    #1;
    $display("%3t, o_event_detected : %b", $time, o_event_detected);
    #5;
    $display("%3t, o_event_detected : %b", $time, o_event_detected);

    $finish();
  end

endmodule