`timescale 1ns / 1ps


module mux_3x1(a,s,y);
input wire [2:0]a;
input wire [1:0]s;
output reg y;
always@(*) begin
case(s)
 2'b00:y=a[0];
 2'b01:y=a[1];
 2'b10:y=a[2];
 2'b11:y=a[2];
 endcase
 end
 
endmodule
