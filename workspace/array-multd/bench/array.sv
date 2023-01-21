/**
 * Testbench working with multi-dimensional array
 *
 * @version: 0.1
 * @author : Gabriel Villanova N. M.
 */

module tb();

  localparam NBW_IN  = 7;
  localparam NS_IN 	 = 5;
  localparam NS_COEF = 3;
  
  // [WIDTH] variable_name [LINE][COLUMN] each one with NBW_IN bits;
  logic signed [NBW_IN-1:0] data [NS_IN-1:0][NS_COEF-1:0];
  
  initial begin
    int i, j;
  
    $display("\n\nExample with arrays\n");
    for (i = 0; i < NS_IN; i++) begin
      for (j = 0; j < NS_COEF; j++) begin
        data[i][j] = j;
        $display("array %p", data); // print the data array building
      end
    end
    $display("");
  
    // print each element
    for (i = 0; i < NS_IN; i++) begin
      for (j = 0; j < NS_COEF; j++) begin
        $display("data[%1d][%1d]=%1d, size data is %1d", i, j, data[i][j], $size(data[i][j]));
      end
      $display("");
    end
  
    $display("\n\n");
    $finish;
  end
  endmodule