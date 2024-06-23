module mux_3x1_tb;
reg [2:0]a;
reg [1:0]s;
wire y;
mux_3x1 uut(a,s,y);
initial begin
$monitor("y=%b,a=%b,s=%b",y,a,s);
s=2'b00;a=3'b001;#15 
s=2'b01;a=3'b010;#15 
s=2'b10;a=3'b100;#15 
s=2'b11;a=3'b011;#15;
$finish;
end 
endmodule