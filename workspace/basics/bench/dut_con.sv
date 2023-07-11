interface MyInterface;
  logic a, b, c;
endinterface

module MyDesign(input logic a, input logic b, output logic c);
  // Implementation of the design module
  // ...
  assign c = a & b;
endmodule

module tb;
  logic a, b c;
  MyInterface ifc(); // Instantiate the interface

  // FAIL
  // MyDesign dut1(.a(ifc), .b(ifc), .c(ifc));  

  MyDesign dut1(.a, .b, .c);  

  // PASS
  // MyDesign dut2(ifc.a, ifc.b, ifc.c); // Connections using interface signals
  
  // PASS
  // MyDesign dut3(.a(ifc.a), .b(ifc.b), .c(ifc.c)); // Connections using interface signals
  
  // FAIL
  // MyDesign dut4(ifc); // Connection using the entire interface instance


  initial begin
    // Simulate the design
    // ...
    $finish;
  end
endmodule
