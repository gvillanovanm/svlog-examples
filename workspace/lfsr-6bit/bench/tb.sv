module tb;

  // Testbench signals
  logic clk;
  logic rst_n;
  logic enable;
  logic [5:0] lfsr_out;

  // Instantiate the LFSR module
  lfsr_6bit uut (
      .clk(clk),
      .rst_n(rst_n),
      .enable(enable),
      .lfsr_out(lfsr_out)
  );

  // Clock generation
  always #5 clk = ~clk; // 100MHz clock

  // Testbench procedure
  initial begin
      // Initialize signals
      clk = 0;
      rst_n = 0;
      enable = 0;

      // Apply reset
      #10;
      rst_n = 1;

      // Enable the LFSR and observe the output
      enable = 1;

      // Run the simulation for a sufficient time
      #800;

      // Disable the LFSR
      enable = 0;

      // Finish the simulation
      #10;
      $finish;
  end

  // Monitor the LFSR output
  int counter = 0;

  initial begin
      $monitor("Time: %3t | LFSR Output: %6b | Converted: %6d", $time, lfsr_out, lfsr6bit_to_decimal(lfsr_out));    
  end

function int lfsr6bit_to_decimal(logic [5:0] lfsr);
  case (lfsr)
    6'b000001: return 1;
    6'b000010: return 2;
    6'b000100: return 3;
    6'b001000: return 4;
    6'b010000: return 5;
    6'b100001: return 6;
    6'b000011: return 7;
    6'b000110: return 8;
    6'b001100: return 9;
    6'b011000: return 10;
    6'b110001: return 11;
    6'b100010: return 12;
    6'b000101: return 13;
    6'b001010: return 14;
    6'b010100: return 15;
    6'b101001: return 16;
    6'b010011: return 17;
    6'b100111: return 18;
    6'b001111: return 19;
    6'b011110: return 20;
    6'b111101: return 21;
    6'b111010: return 22;
    6'b110100: return 23;
    6'b101000: return 24;
    6'b010001: return 25;
    6'b100011: return 26;
    6'b000111: return 27;
    6'b001110: return 28;
    6'b011100: return 29;
    6'b111001: return 30;
    6'b110010: return 31;
    6'b100100: return 32;
    6'b001001: return 33;
    6'b010010: return 34;
    6'b100101: return 35;
    6'b001011: return 36;
    6'b010110: return 37;
    6'b101101: return 38;
    6'b011011: return 39;
    6'b110111: return 40;
    6'b101110: return 41;
    6'b011101: return 42;
    6'b111011: return 43;
    6'b110110: return 44;
    6'b101100: return 45;
    6'b011001: return 46;
    6'b110011: return 47;
    6'b100110: return 48;
    6'b001101: return 49;
    6'b011010: return 50;
    6'b110101: return 51;
    6'b101010: return 52;
    6'b010101: return 53;
    6'b101011: return 54;
    6'b010111: return 55;
    6'b101111: return 56;
    6'b011111: return 57;
    6'b111111: return 58;
    6'b111110: return 59;
    6'b111100: return 60;
    6'b111000: return 61;
    6'b110000: return 62;
    6'b100000: return 63;
    default: return 0; // Default case
  endcase
endfunction

endmodule
