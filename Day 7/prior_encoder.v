`timescale 1ns / 1ps

module prior_encoder(en,in,y);
input en;
input [3:0]in;
output reg [1:0]y;
always@(in,en)
begin
if(en)
 if(in[3])
  y=2'b00;
 else if(in[2])
  y=2'b01;
 else if(in[1])
  y=2'b10;
 else if(in[0])
  y=2'b11;
 else
  y=2'bxx;
 end
endmodule
