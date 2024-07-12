module moore_fsm_nov_tb;
reg clk,rst,in;
wire out;
moore_fsm_nov uut(clk,rst,in,out);
initial begin 
$monitor("in=%d,clk=%d,out%d",in,clk,out);
clk=1'b0; in=1'b0;
rst=1;#15; 
rst=0;#10;
in=0;#10 
in=1;#10 
in=0;#10 
in=1;#10 
in=0;#10 
in=1;#10 
in=0;#10 
in=1;#10;
#30;
$finish;
end 
always #5 clk=~clk;
endmodule