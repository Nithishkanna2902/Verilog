`timescale 1ns / 1ps


module cla_adder_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
cla_adder uut(a,b,cin,sum,cout);
initial begin
$monitor("a=%b,b=%b,cin=%b,sum=%b,carry=%b",a,b,cin,sum,cout);
cin=1'b0; a=4'b1101;b=4'b1110;#15 
cin=1'b0; a=4'b1001;b=4'b0110;#15 
cin=1'b1; a=4'b1010;b=4'b1110;#15 
cin=1'b1; a=4'b1011;b=4'b1110;#15 ;
$finish;
end


endmodule
