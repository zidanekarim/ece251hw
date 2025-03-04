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


module alu #(parameter N = 8)
    (a, b, operation, result, signed);
    input [N-1:0] a, b;
    input logic signed;
    input [3:0] operation;
    output reg [N-1:0] result;

    

    always @(*)
    begin
        if (signed) begin 
            case(operation)
                4'b0000: result = $signed(a) + $signed(b);
                4'b0001: result = $signed(a) - $signed(b);
                4'b0010: result = $signed(a) * $signed(b);
                4'b0011: result = $signed(a) / $signed(b);
                4'b0100: result = a & b;
                4'b0101: result = a | b;
                4'b0110: result = ~a;
                4'b0111: result = a << b;
                4'b1000: result = a >> b;
                default: result = {N{1'b0}};
            endcase


        end
        else begin
            case(operation)
                4'b0000: result = a + b;
                4'b0001: result = a - b;
                4'b0010: result = a * b;
                4'b0011: result = a / b;
                4'b0100: result = a & b;
                4'b0101: result = a | b;
                4'b0110: result = ~a;
                4'b0111: result = a << b;
                4'b1000: result = a >> b;
                default: result = {N{1'b0}};
            endcase
        end 

    end

endmodule: alu

`endif    