`timescale 1ns / 1ps

module universal_shift_register_tb;
reg clr,clk,left_in,right_in;
reg [1:0]sel;
reg [3:0]parallel_in;
wire [3:0]out;
universal_shift_register  uut(clk,clr,left_in,right_in,parallel_in,sel,out);
initial begin
clk=1'b0;
forever #5 clk=~clk;
end 
initial begin
clr=1'b0;
left_in=1'b0;right_in=1'b0;
sel=2'b00;parallel_in=4'b0000;

end
initial begin
$monitor("clr=%b,sel=%b,left_in=%b,right_in=%b,parallel_in=%b,out=%b",clr,sel,left_in,right_in,parallel_in,out);
clr=0;sel=01;left_in=1;right_in=1;parallel_in=4'b1011;#40
clr=0;sel=11;left_in=0;right_in=0;parallel_in=4'b1011;#15 
clr=0;sel=10;left_in=1;right_in=1;parallel_in=4'b1011;#50
clr=0;sel=00;left_in=1;right_in=1;parallel_in=4'b1011;#15 
clr=1;sel=01;left_in=1;right_in=0;parallel_in=4'b1011;#15;
#100;
$finish;
end
endmodule
