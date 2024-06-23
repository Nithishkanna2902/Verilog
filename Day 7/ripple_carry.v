module ripple_carry_tb;
reg [3:0]a;
reg[3:0]b;
reg c;
wire [3:0]sum;
wire carry;
ripple_carry uut(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
initial begin
$monitor($time,"sum=%b,carry=%b",sum,carry);
a=4'b1100;b=4'b1110;c=1'b0;#15;
a=4'b1111;b=4'b1111;c=1'b0;#15;
end

endmodule
