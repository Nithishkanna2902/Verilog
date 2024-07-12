`timescale 1ns / 1ps

module mealy_sm_no(in,clk,rst,out);
input in,clk,rst;
output reg out;
reg[1:0]cst,nst;
parameter [1:0]s0=2'b00;
parameter [1:0]s1=2'b01;
parameter [1:0]s2=2'b10;
always@(posedge clk or posedge rst)
begin
 if(rst) begin
  out<=1'b0;
  cst<=s0;
  end
  else 
  begin
   cst<=nst; 
   end
  end 
  always@(*) begin
   nst=cst;
   out=1'b0;
   case(cst)
   s0:if(in)
      begin
      // out=1'b0;
       nst=s1;
       end 
      else begin
       //out=1'b0;
       nst=s0;
       end 
     s1:if(in)
       begin
      //  out=1'b0;
        nst=s1;
       end 
       else begin
      // out=1'b0;
       nst=s2;
       end 
      s2:if(in)
      begin 
       out=1'b1;
       nst=s0;
       end 
       else begin
      //  out=1'b0;
        nst=s0;
        end 
        default:begin 
        nst=s0;
        end
        endcase 
        
        end
endmodule
