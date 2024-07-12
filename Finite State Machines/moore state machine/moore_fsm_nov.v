`timescale 1ns / 1ps


module moore_fsm_nov(clk,rst,in,out);
input clk,rst,in;
output reg out;
parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
reg [1:0]cst,nst;
always@(posedge clk or posedge rst)begin
if(rst)
 cst<=s0;
 else
  begin 
  cst<=nst;
  end
  end 
  always@(*) begin 
  out<=1'b0;
  nst<=cst;
  case(cst)
   s0:begin if(in)
       nst<=s1;
      else
       nst<=s0;
       end 
    s1:begin if(in) 
       nst<=s1;
       else
        nst<=s2;
        end 
      s2:begin if(in) 
       nst<=s3;
      else
       nst<=s0;
       end 
       s3:begin out<=1'b1;
       if(in)
        nst<=s1;
        else
        nst<=s0;
        end 
        default: nst<=s0;
       endcase 
       end     
endmodule
