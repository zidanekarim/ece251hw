///////////////////////////////////////////////////////////////////////////////
//
// divider module
//
// 
//
// module: adder
// hdl: Verilog
// modeling: Behavioral Modeling
//
// author: Zidane Karim <zidane.karim@cooper.edu>
//
///////////////////////////////////////////////////////////////////////////////

`ifndef DIVIDER
`define DIVIDER

module divider #(parameter N = 8)
    (a, b, quotient, remainder);
    input [N-1:0] a, b;
    output [N-1:0] quotient;
    output [N-1:0] remainder;

    assign quotient = a / b;
    assign remainder = a % b;


endmodule

`endif 