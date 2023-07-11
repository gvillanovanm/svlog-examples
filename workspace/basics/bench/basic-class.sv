class C;
  static int a;
  
  function void test();
    assign a = 1;
    assert(a == 1);
    assert(a == 2);
    assign a = 2;
    assert(a == 2);
  endfunction

endclass

module tb();
  initial begin
    C c = new;
    c.test();

    $display("\n\n# --------------------- end");
    $finish();
  end
endmodule
