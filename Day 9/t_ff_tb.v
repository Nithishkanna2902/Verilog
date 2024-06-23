`timescale 1ns / 1ps

module t_ff_tb;
reg t,clk;
wire q,q_bar;
t_ff uut(t,clk,q,q_bar);
initial begin
forever begin
 clk<=1'b0;#5 
 clk<=1'b1;#5; 
 end
 end 
 initial  begin
  t=0;
 $monitor("t=%b,q=%b,q_bar=%b",t,q,q_bar);
  t=0;#29; 
  t=1;#24;
  t=0;#24;
  $finish;
  end
endmodule
