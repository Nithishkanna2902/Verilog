`timescale 1ns / 1ps

module encoder_4to2(en,a,y );
input  [3:0]a;
input en;
output reg [1:0]y;
always@(en,a)
begin
if(en==0)
begin
  if(a==4'b0001)
  y=2'b00;
  else if(a==4'b0010)
  y=2'b01;
  else if(a==4'b0100)
  y=2'b10;
  else if(a==4'b1000)
  y=2'b11;
  else
  y=2'b00;
 end
else
 y=2'bxx;
 end
endmodule
