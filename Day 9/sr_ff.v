`timescale 1ns / 1ps
module sr_ff(s,r,clk,q,q_bar);
input wire s,r,clk;
output reg q,q_bar;
initial begin
q=1'b0;
q_bar=~q;
end
always@(posedge clk)begin
 if(s&&r)
 begin
 q<=1'bx;
 q_bar<=1'bx;
 end
 else if(!s&&r)begin
 q<=1'b0;
 q_bar<=1'b1;
 end
 else if(s&&!r)begin
 q<=1'b1;
 q_bar<=1'b0;
 end
 else if(!s&&!r)begin
  end
 end
endmodule
