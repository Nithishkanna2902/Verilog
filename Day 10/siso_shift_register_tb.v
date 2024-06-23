`timescale 1ns / 1ps


module siso_shift_register_tb;
reg x,clk;
wire y;
siso_shift_register uut(x,clk,y);
initial begin
clk=1'b0;
 forever#5 clk=~clk;
  
  end 
  initial begin
  $monitor("clk=%d,x=%b,y=%b",clk,x,y);
   x=1;#10 
  // $display("x=%b,y=%b",x,y);
   x=0;#10
   //$display("x=%b,y=%b",x,y);
   x=0;#10 
   //$display("x=%b,y=%b",x,y);
   x=1;#10 ;
   //$display("x=%b,y=%b",x,y);
  #80;
  $finish;
  
  end
endmodule
