module tb();
  logic a,b,c;

  dut uu_dut(a,b,c);

  initial begin
    repeat(5) begin
      a = $random();
      b = $random();
      #10;
    end
  end

  initial begin
    $monitor("%d AND %d = %d", a, b, c);
  end

endmodule