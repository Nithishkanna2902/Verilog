module piso_tb;
reg [3:0]y;
reg clk;
wire x;
piso uut(y,clk,x);
initial begin
clk=1'b0;
forever #5 clk=~clk;
end 
initial begin
$monitor("clk=%d,y=%b,x=%b",clk,y,x);
y=4'b1011;#5;
#50;

$finish;
end 
endmodule