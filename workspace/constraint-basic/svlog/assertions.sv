/**
 * Assertions
 *
 * @version: 0.1
 * @author : Gabriel Villanova N. M.
 */

module assertions #(
    // parameters
) (
    // port_list
    input logic clk,
    input logic i_valid,
    input logic i_enable
);
    localparam LATENCY = 4;

    // i_valid should be =0 by LATENCY clock cycles after i_valid=1.
    property i_valid_property;
        @(posedge clk) (i_valid) |-> ##1 !i_valid[*(LATENCY-1)];
    endproperty

    i_valid_assert: assert property (i_valid_property);

endmodule