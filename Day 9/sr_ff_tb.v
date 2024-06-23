`timescale 1ns / 1ps

module sr_ff_tb;
reg s,r,clk;
wire q,q_bar;
sr_ff uut(s,r,clk,q,q_bar);
 reg clk;
 initial begin
 forever begin
  clk <= 1'b0;#3 
  clk<=1'b1;#3;
  end
  end
initial begin
$monitor("s=%b,r=%b,q=%b,q_bar=%b",s,r,q,q_bar);
s=0;r=0;#15
s=1;r=1;#15
s=0;r=1;#15
s=1;r=0;#15
s=0;r=0;#15
$finish;
end
endmodule
