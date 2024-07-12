`timescale 1ns / 1ps

module moore_fsm_ov(in,rst,clk,out);
input in,rst,clk;
output reg out;
parameter s0=2'b00;
parameter s1=2'b01;
parameter s2=2'b10;
parameter s3=2'b11;
reg [1:0]cst,nst;
always@(posedge clk or posedge rst)begin
if(rst) begin
 //out<=0;
 cst<=s0;
 end
else begin
 cst<=nst;
 end
 end 
 always@(*) begin
 out<=1'b0;
 nst<=cst;
 case(cst)
 s0:if(in)
     nst<=s1;
     else
      nst<=s0;
   s1:if(in)
      nst<=s1;
     else
      nst<=s2;
    s2:if(in)
     nst<=s3;
     else
      nst<=s0;
     s3:begin
      out<=1'b1;
     if(in) begin
       nst<=s1;
       //out<=1'b1;
       end
      else begin
       nst<=s2;
       //out<=1'b1;
       end 
       end
       default:nst<=s0;
       endcase 
       end
     
 
endmodule
