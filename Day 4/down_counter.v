module down_counter_tb;
reg clk,rst,load;
reg [3:0]data;
wire [3:0]count;
down_counter uut(clk,rst,load,data,count);
initial begin
forever#3 clk=~clk;
end
initial begin
data=4'b0000;
clk=1'b0;
rst=1'b0;
load=1'b0;
end
initial begin
rst=1'b1;#20
rst=1'b0;
load=1'b1;
data=4'd5;
load=1'b0;
#150;
$finish;
end
endmodule