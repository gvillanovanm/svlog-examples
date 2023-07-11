class Packet;
  rand bit [7:0] a;
  rand bit [7:0] b;
  rand bit [15:0] dice;

  constraint dice_inside {
    dice inside {[1:6]};
  }

  constraint a_gt_b {
    a > b;
    // a = b;  FAIL 
    // a == b++; FAIL
  }

  constraint dice_inside2 {
    // dice inside {1:6}; FAIL
  }
endclass

module tb;
  initial begin
    Packet pkt = new;
    repeat (10) begin
      if (1) begin
        $display("Randomized packet: a=%h, b=%h, dice=%d",
                 pkt.a, pkt.b, pkt.dice);
      end
    end
  
    $finish();
  end
endmodule
