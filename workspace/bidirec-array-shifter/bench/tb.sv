/**
 * testbench template
 *
 * @version: 0.1
 * @author : Gabriel Villanova N. M.
 */

module tb;
  // localparams
  localparam SIZE_OF_ARRAY = 8;

  // main block
  initial begin
    // dir = 1: left / dir = 0: right
    bit dir = 1;
    real a[SIZE_OF_ARRAY] = '{1, 2, 3, 4, 5, 6, 7, 8};
    int temp;
    int pos = 2;

    $display("BEFORE a = %p", a);
    a = name(a, pos, dir);
    $display("AFTER  a = %p", a);

    $finish();
  end
  
  // function
  typedef real array_fnc[SIZE_OF_ARRAY];
  function array_fnc name(input real a[SIZE_OF_ARRAY], input int pos, input bit dir);
    int temp;

    for(int i=0; i<pos; i++) begin
      if(dir) begin  
        temp = a[0];  
        for(int j = 0; j < SIZE_OF_ARRAY - 1; j++)  
            a[j] = a[j + 1];  

        a[SIZE_OF_ARRAY - 1] = temp;  
      end
      else begin
        temp = a[SIZE_OF_ARRAY - 1];  
        for(int j = SIZE_OF_ARRAY - 1; j > 0; j--)  
            a[j] = a[j - 1];  

        a[0] = temp;  
      end
    end

    return a;
  endfunction

endmodule