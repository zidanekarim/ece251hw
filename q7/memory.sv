///////////////////////////////////////////////////////////////////////////////
//
// memory module
//
// 
//
// module: memory
// hdl: Verilog
// modeling: Behavioral Modeling
//
// author: Zidane Karim <zidane.karim@cooper.edu>
//
///////////////////////////////////////////////////////////////////////////////

`ifndef MEMORY
`define MEMORY
`include "register.sv"

module memory #(parameter N = 8)
    (we, clk, addr, write, read);
    output logic [N-1:0] read;
    input [N-1:0] write;
    input [N-1:0] addr;
    input logic we, clk;
    logic [N-1:0] mem [0:2**N-1];

    logic rst = 0;


    genvar i;
    generate 
        for (i = 0; i < (2**N); i++) begin : memory
            register #(.WIDTH(N)) new_reg (
                .clk(clk),
                .rst(rst),
                .enable(we ),
                .d(write),
                .q(mem[i])
            );
        end

    endgenerate

    
    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            read <= 0;
        end else if (!we) begin
            read <= mem[addr]; 
        end
    end

    
endmodule: memory

`endif 