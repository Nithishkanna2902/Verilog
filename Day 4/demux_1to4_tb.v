`timescale 1ns / 1ps
module demux_1to4_tb;
    reg a;
    reg [1:0]s;
    wire [3:0]y;
    demux_1to4 uut(.a(a),.s(s),.y(y));
    initial begin
        a=1'b0;s=2'b00;#15;
        a=1'b1;s=2'b01;#15;
        a=1'b1;s=2'b10;#15;
        a=1'b0;s=2'b11;#15;
        $finish;
    end

endmodule