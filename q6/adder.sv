///////////////////////////////////////////////////////////////////////////////
//
// adder module
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

`ifndef ADDER
`define ADDER

module adder #(parameter N = 8)
    (a, b, sum);
    input [N-1:0] a, b;
    output [N:0] sum;

    assign sum = a + b;

endmodule

`endif 