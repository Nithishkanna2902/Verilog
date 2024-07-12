module moore_fsm_ov_tb;
reg in,clk,rst;
wire out;
moore_fsm_ov uut(in,rst,clk,out);

  initial begin
        // Monitor signals
        clk=0;
        $monitor("Time=%0t | Clk=%b | in=%b | rst=%b | out=%b", $time, clk, in, rst, out);
        in=0;
        // Apply reset
        rst = 1; #15; // Hold reset for a few clock cycles
        rst = 0; #10;
    
        // Apply input sequence to test overlapping detection of 101
        in = 0; #10;
        in = 1; #10;
        in = 0; #10;
        in = 1; #10; // First detection of 101
        in = 0; #10;
        in = 0; #10; // Overlapping detection here
        in = 1; #10;
        in = 0; #10;
        in = 1; #10; // Second detection of 101
        in = 0; #10;
        in = 1; #10;

        #20;
        $finish;
    end
    always #5 clk=~clk;
 endmodule