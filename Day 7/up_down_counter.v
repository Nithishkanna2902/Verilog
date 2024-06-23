`timescale 1ns / 1ps

module up_down_counter(clk,rst,up_down,load,data,count);
input clk,rst,load,up_down;
input [3:0]data;
output reg [3:0]count;
always@(posedge clk or posedge rst)
begin
 if(rst)
  count=4'b0000;
 else if(load)
  count=data;
 else if(up_down==1)
  count=count+1;
 else if (up_down==0)
  count=count-1;
end
endmodule
