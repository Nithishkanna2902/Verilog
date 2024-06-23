module array_multiplier_tb;
reg [3:0]a;
reg [3:0]b;
wire [7:0]y;
array_multiplier uut(a,b,y);
initial begin
$monitor("a=%b,b=%b,y=%b",a,b,y);
a=4'b0000;b=4'b1001;#15 
a=4'b1101;b=4'b1101;#15;
$finish;
end 
endmodule