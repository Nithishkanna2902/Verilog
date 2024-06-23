`timescale 1ns / 1ps


module comparator_4bit(a,b,x,y,z);
input wire[3:0]a;
input wire [3:0]b;
output reg x,y,z;
always@(*)begin
x=0;y=0;z=0;
if(a>b)
 x=1;
else if(a==b)
 y=1;
else 
 z=1;
end
endmodule
