module gray_to_binary_tb;
reg [5:0]a;
wire [5:0]b;
gray_to_binary uut(a,b);
initial begin
$monitor("a=%b,b=%b",a,b);
a=6'b110101;#15 
a=6'b111001;#15;
$finish;
end 
endmodule