`timescale 1ns / 1ps


module down_counter(clk,rst,load,data,count);
input clk,rst,load;
input [3:0]data;
output reg [3:0]count;
always@(posedge clk or posedge rst)
begin
 if(rst)
  count=4'b0000;
 else if(load)
  count=data;
 else
  count=count-1;
end
endmodule
