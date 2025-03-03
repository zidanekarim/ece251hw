///////////////////////////////////////////////////////////////////////////////
//
// NOT module
//
// 
//
// module: not
// hdl: Verilog
// modeling: Behavioral Modeling
//
// author: Zidane Karim <zidane.karim@cooper.edu>
//
///////////////////////////////////////////////////////////////////////////////

`ifndef NOT
`define NOT

module noter #(parameter N = 8)
    (a, out);
    input [N-1:0] a;
    output [N-1:0] out;

    assign out = ~a;


endmodule

`endif 