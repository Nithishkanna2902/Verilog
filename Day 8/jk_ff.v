`timescale 1ns / 1ps
module jk_ff(j,k,clk,q,q_bar);
input wire j,k,clk;
output reg q;
output reg q_bar;
initial begin
q=1'b0;
q_bar=~q;
end
always@(posedge clk)begin
 if(j&&k)
 begin
 q =~q;
 //q_bar=~q;
 end
 else if(!j&&k)begin
 q =1'b0;
 //q_bar =1'b1;
 end
 else if(j&&!k)begin
 q =1'b1;
 //q_bar =1'b0;
 end
 else if(!j&&!k)begin
  end
  q_bar=~q;
 end
endmodule

