///////////////////////////////////////////////////////////////////////////////
//
// multiplier module
//
// 
//
// module: multiplier
// hdl: Verilog
// modeling: Behavioral Modeling
//
// author: Zidane Karim <zidane.karim@cooper.edu>
//
///////////////////////////////////////////////////////////////////////////////

`ifndef MULTIPLIER
`define MULTIPLIER

module multiplier #(parameter N = 8)
    (a, b, product);
    input [N-1:0] a, b;
    output [(2*N):0] product;

    assign product = a * b;

endmodule

`endif 