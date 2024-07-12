module s_ram_tb;
parameter datawidth=8;
parameter addresswidth=8;
reg clk,rst,we;
reg [datawidth-1:0]data_in;
reg [addresswidth-1:0]addr;
wire [datawidth-1:0]data_out;
s_ram uut(clk,rst,we,data_in,addr,data_out);
initial begin 
clk=1'b0;
forever #5 clk=~clk;
end 
initial begin 
rst=1;
data_in=0;
we=0;
addr=0;
#10;
rst=0;
we=1;
data_in=8'h23;
addr=8'hA0;
#10 
data_in=8'h25;
addr=8'hA5;
#10 
we=0;
addr=8'hA0;
#10 
addr=8'hA5;
#10 
$stop;
end
endmodule