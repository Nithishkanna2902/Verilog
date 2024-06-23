`timescale 1ns / 1ps
module full_subtractor_tb;
reg a,b,c;
wire dif,bor;
full_subtractor dut(a,b,c,dif,bor);
initial begin
a=0;b=0;c=0;#10
a=0;b=0;c=1;#10
a=0;b=1;c=0;#10
a=0;b=1;c=1;#10
a=1;b=0;c=0;#10
a=1;b=0;c=1;#10
a=1;b=1;c=0;#10
a=1;b=1;c=1;
end
endmodule
