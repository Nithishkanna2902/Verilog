module encoder_4to2_tb;
reg [3:0]a;
reg en;
wire [1:0]y;
encoder_4to2 uut(en,a,y);
initial
begin
$monitor("en=%b,a=%b,y=%b",en,a,y);
en=1;a=4'b0000;#10
en=0;a=4'b0001;#10
en=0;a=4'b0010;#10
en=0;a=4'b0100;#10
en=0;a=4'b1000;#10
$finish;
end
endmodule