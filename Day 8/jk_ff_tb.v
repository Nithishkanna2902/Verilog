`timescale 1ns / 1ps

module jk_ff_tb;
reg j,k,clk;
wire q,q_bar;
jk_ff uut(j,k,clk,q,q_bar);
 reg clk;
 initial begin
 forever begin
  clk <= 1'b0;#5 
  clk<=1'b1;#5;
  end
  end
initial begin
$monitor("j=%b,k=%b,q=%b,q_bar=%b",j,k,q,q_bar);
j=0;k=0;#15
j=1;k=1;#15
j=0;k=1;#15
j=1;k=0;#15
j=0;k=0;#15
$finish;
end
endmodule
