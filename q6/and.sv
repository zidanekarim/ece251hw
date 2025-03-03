///////////////////////////////////////////////////////////////////////////////
//
// and module
//
// 
//
// module: and
// hdl: Verilog
// modeling: Behavioral Modeling
//
// author: Zidane Karim <zidane.karim@cooper.edu>
//
///////////////////////////////////////////////////////////////////////////////

`ifndef AND
`define AND

module ander #(parameter N = 8)
    (a, b, out);
    input [N-1:0] a, b;
    output [N-1:0] out;

    assign out = a & b;

endmodule

`endif 