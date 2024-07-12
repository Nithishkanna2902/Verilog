/*`timescale 1ns / 1ps

module tb_mealy_fsm;

    // Inputs
    reg in;
    reg clk;
    reg rst;

    // Outputs
    wire out;

    // Instantiate the FSM
    mealy_fsm uut (
        .in(in),
        .clk(clk),
        .rst(rst),
        .out(out)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Clock period = 10ns
    end

    // Test sequence
    initial begin
        // Initialize inputs
        rst = 1;
        in = 0;
        #15; // Wait for reset to be processed
        rst = 0;

        // Test case 1: No sequence (should produce no output)
        #10 in = 0;
        #10 in = 0;
        #10 in = 0;

        // Test case 2: Input sequence "101" (should detect sequence and set output)
        #10 in = 1;
        #10 in = 0;
        #10 in = 1; // Expect out to be 1 after this input
        #10 in = 0; // Reset input

        // Test case 3: Continuous "0" after reset
        #10 in = 0;
        #10 in = 0;
        #10 in = 0;

        // Test case 4: Another "101" sequence to see if it resets correctly
        #10 in = 1;
        #10 in = 0;
        #10 in = 1; // Expect out to be 1 again
        #10 in = 0; // Reset input

        // Test case 5: Mixed sequence
        #10 in = 1;
        #10 in = 1;
        #10 in = 0;
        #10 in = 1; // No detection here, back to normal operation
        #10 in = 0; // Reset input

        // Test case 6: Reset mid-sequence
        #10 rst = 1;
        #10 rst = 0;
        #10 in = 1;
        #10 in = 0;
        #10 in = 1; // Expect out to be 1 again
        #10 in = 0; // Reset input

        // Test case 7: Edge cases
        #10 in = 0;
        #10 in = 1;
        #10 in = 0;
        #10 in = 1; // Multiple detections

        // End of simulation
        #20;
        $stop;
    end

    // Monitor for debugging
    initial begin
        $monitor("Time: %0t | in: %b | out: %b | rst: %b", $time, in, out, rst);
    end

endmodule*/ 
module mealy_ov_tb;

    reg clk, rst, x;
    wire y;

    mealy_ov uut (
        .clk(clk),
        .rst(rst),
        .x(x),
        .y(y)
    );

    // Clock generation
    always #5 clk = ~clk; // Toggle clock every 5 time units

    // Stimulus generation
    initial begin
        clk = 0;
        rst = 1;
        x = 0;
        #10; // Wait 10 time units
        rst = 0;
        #10; // Wait 10 time units
        x = 1;
        #10; // Wait 10 time units
        x = 0;
        #10; // Wait 10 time units
        x = 1;
        #10; // Wait 10 time units
        x = 1;
        #10; // Wait 10 time units
        x = 1;
        #10; // Wait 10 time units
        x = 0;
        #10; // Wait 10 time units
        x = 1;
        #10; // Wait 10 time units
        x = 0;
        #10; // Wait 10 time units
        x = 1;
        #10; // Wait 10 time units

        // End simulation
        $finish;
    end

    // Dumping simulation data
    initial begin
        $dumpfile("mealy_ov.vcd");
        $dumpvars; // Dump variables from mealy_ov_tb module
    end

endmodule

