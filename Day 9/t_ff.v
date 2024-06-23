`timescale 1ns / 1ps
module t_ff(t,clk,q,q_bar);
input wire t,clk;
output reg q;
output wire q_bar;
initial begin
q=1'b0;
end 
always@(posedge clk) begin
if(!t)
 q<=q;
else
 q<=~q;
end
assign q_bar=~q;
endmodule
