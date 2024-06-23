module binary_to_graycode_tb;
reg [5:0]a;
wire [5:0]b;
binary_to_graycode uut(a,b);
initial begin
$monitor("a=%b,b=%b",a,b);
a=6'b100110;#15
a=6'b110110;#15;
end
endmodule