`timescale 1ns / 1ps

module universal_shift_register(clk,clr,left_in,right_in,parallel_in,sel,out);
input clk,clr,left_in,right_in;
input [3:0]parallel_in;
input [1:0]sel;
output reg [3:0]out;
always@(posedge clk) begin
if(clr)
 out<=4'b0000;
else begin
 case(sel)
  2'b00:out<=out;
  2'b01:out<={right_in,out[3:1]};
  2'b10:out<={out[2:0],left_in};
  2'b11:out<=parallel_in;
  endcase
  end
  end
 
endmodule
