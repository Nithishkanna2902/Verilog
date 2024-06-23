module pipo_tb;
reg [3:0]x;
reg clk;
wire [3:0]y;
pipo uut(x,clk,y);
initial begin 
clk=1'b0;
forever #5 clk=~clk;
end 
initial begin
$monitor("x=%b,y=%b",x,y);
x=4'b1100;#10;
x=4'b1001;#10;
#80;
$finish;
end 
endmodule