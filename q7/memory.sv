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

module memory #(parameter N = 8)
    (we, clk, addr, write, read);
    output reg [N-1:0] read;
    input [N-1:0] write;
    input [N-1:0] addr;
    input we, clk;
    reg [N-1:0] mem [0:2**N-1];

    initial begin
        for (int i = 0; i < (2**N); i++) begin
            mem[i] = 0;
        end
    end

    always_ff @(posedge clk) begin
        if (we) begin
            mem[addr] <= write;
        end
    end

    always_ff @(posedge clk) begin
        if (!we) begin
            read = mem[addr];
        end
    end

    
endmodule

`endif 