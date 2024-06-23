`timescale 1ns / 1ps
module d_ff(d,clk,q,q_bar);
input wire d,clk;
output reg q;
output wire q_bar;
initial begin
q=1'b0;
end 
always@(posedge clk)begin
 q<=d;
 end
 assign q_bar=~q;
endmodule
