`timescale 1ns / 1ps

module sipo(x,clk,y);
input x,clk;
reg [3:0]a;
output wire [3:0]y;
always@(posedge clk)begin
a[3]<=a[2];
a[2]<=a[1];
a[1]<=a[0];
a[0]<=x;
end 
assign y=a;

endmodule
