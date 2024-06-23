`timescale 1ns / 1ps

module d_ff_tb;
reg d,clk;
wire q,q_bar;
d_ff uut(d,clk,q,q_bar);
initial begin
forever begin
 clk<=1'b0;#5 
 clk<=1'b1;#5; 
 end
 end 
 initial  begin
 $monitor("d=%b,q=%b,q_bar=%b",d,q,q_bar);
  d=0;#29; 
  d=1;#24;
  $finish;
  end
endmodule
