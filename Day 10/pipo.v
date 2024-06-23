`timescale 1ns / 1ps
module pipo#(parameter size =4)(x,clk,y);
input [size-1:0]x;
input clk;
output reg [size-1:0]y;
always@(posedge clk) begin
y=x;
end
endmodule
