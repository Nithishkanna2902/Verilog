module testbench;
    reg a, b, c, d;
    reg s0, s1;
    wire y;

    // Instantiate the 4x1 multiplexer
    mux_4x1_by_2x1 mux (
        .a(a), .b(b), .c(c), .d(d),
        .s0(s0), .s1(s1),
        .y(y)
    );

    initial begin
        // Initialize signals
        a = 0; b = 0; c = 0; d = 0; s0 = 0; s1 = 0;

        // Apply test cases
        #10 a = 1; b = 0; c = 0; d = 0; s0 = 0; s1 = 0;
        #10 a = 0; b = 1; c = 0; d = 0; s0 = 0; s1 = 1;
        #10 a = 0; b = 0; c = 1; d = 0; s0 = 1; s1 = 0;
        #10 a = 0; b = 0; c = 0; d = 1; s0 = 1; s1 = 1;

        // Add more cases if needed
        #10 $stop;
    end
endmodule

