module mux_4to1_tb;
reg [1:0]s;
reg [3:0]a;
wire y;
mux_4to1 uut(a,s,y);
initial begin
s=2'b00;a=4'b0001;#10
s=2'b01;a=4'b0010;#10
s=2'b10;a=4'b0100;#10
s=2'b11;a=4'b1000;#10
$finish;
end
endmodule