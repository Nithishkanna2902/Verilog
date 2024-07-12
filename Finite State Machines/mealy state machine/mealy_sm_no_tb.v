`timescale 1ns / 1ps

module mealy_sm_no_tb;
reg in,clk,rst;
wire out;
mealy_sm_no uut(in,clk,rst,out);
initial begin
clk=0;in=0;rst=0;
#30;
$monitor("Clk=%d,in=%b,rst=%b,out=%d",clk,in,rst,out);
in=0;#10;
in=0;#10;
in=1;#10;
in=0;#10;
in=1;#10;
in=0;#10;
in=1;#10;
in=0;#10;
in=1;#10;
$finish;
end 
always#5 clk=~clk;

 
endmodule
