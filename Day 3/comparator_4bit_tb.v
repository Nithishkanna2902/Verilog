module comparator_4bit_tb;
reg [3:0]a;
reg [3:0]b;
wire x,y,z;
comparator_4bit uut(a,b,x,y,z);
initial begin
$monitor("x=%b,y=%b,z=%b",x,y,z);
a=4'b0000;b=4'b0000;#15 
a=4'b0111;b=4'b0100;#15 
a=4'b0010;b=4'b1111;#15;
$finish;
end 
endmodule