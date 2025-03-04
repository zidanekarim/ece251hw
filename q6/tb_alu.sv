///////////////////////////////////////////////////////////////////////////////
//
// alu Testbench module
//
// 
//
// module: alu
// hdl: Verilog
// modeling: Behavioral Modeling
//
// author: Zidane Karim <zidane.karim@cooper.edu>
//
///////////////////////////////////////////////////////////////////////////////

`timescale 1ns/100ps
// ensure you note the scale (ns) below in $monitor

`include "./alu.sv"

module tb_alu #(parameter N = 8); // parameterize the number of bits;
    //
    // ---------------- DECLARATIONS OF DATA TYPES ----------------
    //

    logic [N-1:0] a, b; // Inputs
    logic [3:0] operation; // Operation selector
    wire [N-1:0] result; // Output result
    logic sign; // signed bit
   //
   // ---------------- INSTANTIATE UNIT UNDER TEST (DUT) ----------------
   //
   alu #(.N(N)) dut (
        .a(a), 
        .b(b), 
        .operation(operation), 
        .result(result),
        .sign(sign) // signed bit
    );
   
   
    //
    // ---------------- INITIALIZE TEST BENCH ----------------
    //
    initial begin : initialize_variables
    end

    initial begin : dump_variables
      $dumpfile("tb_alu.vcd"); // for Makefile, make dump file same as module name
      $dumpvars(0, dut);
    end

    /*
    * display variables
    */
    initial begin: display_vars
        $monitor ($time, " ns | a=%b b=%b operation=%b sign=%b result=%b", a, b, operation, sign, result);
    end

    initial begin
        sign = 1'b0;
        a = 8'b00001111; 
        b = 8'b00000011; 

        for (int op = 0; op < 9; op++) begin
            operation = op[3:0];
            #10; 
        end


        sign = 1'b1;
        a = 8'b10001111;
        b = 4'b0011;
        for (int op = 0; op < 9; op++) begin
            operation = op[3:0];
            #10; 
        end

      
    end


    

endmodule

