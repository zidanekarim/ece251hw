///////////////////////////////////////////////////////////////////////////////
//
// ALU module
//
// 
//
// module: alu
// hdl: Verilog
// modeling: Behavioral Modeling
//
// author: Zidane Karim <zidane.karim@cooper.edu>
//
///////////////////////////////////////////////////////////////////////////////

`ifndef ALU
`define ALU

`include "adder.sv"
`include "subtractor.sv"
`include "multiplier.sv"
`include "divider.sv"
`include "and.sv"
`include "or.sv"
`include "not.sv"
`include "sll.sv"
`include "slr.sv"


module alu #(parameter N = 8)
    (a, b, operation, result);
    input [N-1:0] a, b;
    input [3:0] operation;
    output reg [N-1:0] result;

    wire [N-1:0] subtractor_result, divider_result, and_result, or_result, not_result, sll_result, srl_result;
    wire [2*N:0] multiplier_result;
    wire [N:0] adder_result;
    wire [N-1:0] remainder;


    adder #(.N(N)) adder_unit(a, b, adder_result);
    subtractor #(.N(N)) subtractor_unit(a, b, subtractor_result);
    multiplier #(.N(N)) multiplier_unit(a, b, multiplier_result);
    divider #(.N(N)) divider_unit(a, b, divider_result, remainder);
    ander #(.N(N)) and_unit(a, b, and_result);
    orer #(.N(N)) or_unit(a, b, or_result);
    noter #(.N(N)) not_unit(a, not_result);
    sll #(.N(N)) sll_unit(a, b, sll_result);
    sll #(.N(N)) slr_unit(a, b, srl_result);

    always @(*)
    begin
        case(operation)
            4'b0000: result = adder_result;
            4'b0001: result = subtractor_result;
            4'b0010: result = multiplier_result;
            4'b0011: result = divider_result;
            4'b0100: result = and_result;
            4'b0101: result = or_result;
            4'b0110: result = not_result;
            4'b0111: result = sll_result;
            4'b1000: result = srl_result;
            default: result = {N{1'b0}};
        endcase
    end

endmodule

`endif    