`timescale 1ns / 1ps


module d_latch(d,en,q,q_bar);
input wire d;
input wire en;
output reg q,q_bar;
always@(*) begin
if(en) begin
 q=d;
 q_bar=~q;
 end
 end
 
endmodule
