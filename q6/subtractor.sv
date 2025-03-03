///////////////////////////////////////////////////////////////////////////////
//
// subtractor module
//
// 
//
// module: subtractor
// hdl: Verilog
// modeling: Behavioral Modeling
//
// author: Zidane Karim <zidane.karim@cooper.edu>
//
///////////////////////////////////////////////////////////////////////////////

`ifndef SUBTRACTOR
`define SUBTRACTOR

module subtractor #(parameter N = 8)
    (a, b, difference);
    input [N-1:0] a, b;
    output [N-1:0] difference;
    output cout;

    assign difference = a - b;

endmodule

`endif 