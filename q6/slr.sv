///////////////////////////////////////////////////////////////////////////////
//
// shift-logical-right module
//
// 
//
// module: shift-logical-right
// hdl: Verilog
// modeling: Behavioral Modeling
//
// author: Zidane Karim <zidane.karim@cooper.edu>
//
///////////////////////////////////////////////////////////////////////////////

`ifndef SLR
`define SLR

module slr #(parameter N = 8)
    (a, b, out);
    input [N-1:0] a, b;
    output [N-1:0] out;
    
    assign out = a >> b;

endmodule

`endif 