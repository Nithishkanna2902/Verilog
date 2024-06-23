`timescale 1ns / 1ps
module decoder24_behaviour(en,a,b,y);
   input en,a,b;
   output reg[3:0]y;
   always@(en,a,b)
   begin
    if(en==0)
    begin
     if(a==1'b0 & b==1'b0)
      y=4'b0001;
     else if(a==1'b0 & b==1'b1)
      y=4'b0010;
     else if(a==1'b1 & b==1'b0)
      y=4'b0100;
     else if(a==1'b1 & b==1'b1)
      y=4'b1000;
      else
      y=4'bxxxx;
      end
     else
      y=4'b1111;
     end
     
endmodule