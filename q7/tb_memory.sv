///////////////////////////////////////////////////////////////////////////////
//
// memory Testbench module
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

`timescale 1ns/100ps
// ensure you note the scale (ns) below in $monitor

`include "./memory.sv"
`include "./configurable_clock.sv"

module tb_memory #(parameter N = 8); // parameterize the number of bits;
    //
    // ---------------- DECLARATIONS OF DATA TYPES ----------------
    //
    

    logic [N-1:0] write, addr, write_copy; // Inputs
    logic we, clk; // Inputs
    wire [N-1:0] result, expected; // Outputs

   //
   // ---------------- INSTANTIATE UNIT UNDER TEST (DUT) ----------------

    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Clock with a period of 10ns (toggle every 5ns)
    end

    register #(.WIDTH(N)) test_reg (
        .clk(clk),
        .rst(1'b0),
        .enable(1'b1),
        .d(write_copy),
        .q(expected)
    );


    memory #(N) dut (
        .we(we),
        .clk(clk),
        .addr(addr),
        .write(write),
        .read(result)
    );
   
   
    //
    // ---------------- INITIALIZE TEST BENCH ----------------
    //
    initial begin : initialize_variables
    end

    initial begin : dump_variables
      $dumpfile("tb_memory.vcd"); // for Makefile, make dump file same as module name
      $dumpvars(0, dut);
    end

    /*
    * display variables
    */
    initial begin: display_vars
        $monitor("write=%b, addr=%b, we=%b, result=%b", write, addr, we, result);
    end

    initial begin: apply_stimulus
        
        we = 1;              // Enable write at the start
        addr = 0;
        write = 0;
        #10;

        for (int i = 0; i < 256; i++) begin
            addr = i;
            write = i;
            #10;   
            we = 0;  
            #10;   
            we = 1;  
            #10;
        end
        we = 0;   

        
      
    end


    

endmodule

