/**
 * testbench template
 *
 * @version: 0.1
 * @author : Gabriel Villanova N. M.
 */
module tb;
  import uvm_pkg::*;
  `include "uvm_macros.svh"  
  `include "eg_item.sv"

  // default  
  eg_item uu_eg_item_default;

  // directly
  eg_item #(
    .PARAM_A(1.1),
    .PARAM_B(1.2),
    .TA(real),
    .TB(int)   
  ) uu_eg_item_param;

  // typedef
  typedef eg_item #(
    .PARAM_A(1),
    .PARAM_B(1),
    .TA(bit [3:0]),
    .TB(bit [8:0])  
  ) eg_item_t;

  eg_item_t uu_eg_item_t;

  // main block
  initial begin
    // default
    uu_eg_item_default = new();
    uu_eg_item_default.size_of();

    // params
    uu_eg_item_param = new();
    uu_eg_item_param.size_of();

    // typedef
    uu_eg_item_t = new();
    uu_eg_item_t.size_of();

    $finish();
  end

endmodule