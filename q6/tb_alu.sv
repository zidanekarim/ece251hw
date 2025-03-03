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
    logic cout; // Carry out (for adder, subtractor, multiplier)
   //
   // ---------------- INSTANTIATE UNIT UNDER TEST (DUT) ----------------
   //
   alu #(.N(N)) dut (
        .a(a), 
        .b(b), 
        .operation(operation), 
        .result(result) 
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
        $monitor ($time, " ns | a=%b b=%b operation=%b result=%b", a, b, operation, result);
    end

    initial begin
        a = 8'b00001111; // Example value
        b = 8'b00000011; // Example value

        for (int op = 0; op < 9; op++) begin
            operation = op[3:0];
            #10; 
        end

        a = 8'b11110000;
        b = 8'b00001111;
        operation = 4'b0000; // Add
        #10;
        
        operation = 4'b0001; // Subtract
        #10;
        
        operation = 4'b0010; // Multiply
        #10;
        
        operation = 4'b0011; // Divide
        #10;
        
        operation = 4'b0100; // AND
        #10;
        
        operation = 4'b0101; // OR
        #10;
        
        operation = 4'b0110; // NOT
        #10;
        
        operation = 4'b0111; // Shift Left
        #10;
        
        operation = 4'b1000; // Shift Right
        #10;
        
      
    end


    

endmodule

