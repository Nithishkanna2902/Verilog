module sipo_tb;
reg x,clk;
wire [3:0]y;
sipo uut(x,clk,y);
initial begin
 clk=1'b0;
 forever #5 clk=~clk;
 end
 initial begin
 $monitor ("x=%b,y=%b",x,y);
 x=1;#10;
 x=0;#10;
 x=0;#10;
 x=1;#10;
 #40;
 $finish;
 end
 endmodule