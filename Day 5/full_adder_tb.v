module full_adder_tb;
reg a,b,c;
wire sum,carry;
full_adder uut(a,b,c,sum,carry);
initial begin
$monitor("a=%d,b=%d,c=%d,sum=%d,carry=%d",a,b,c,sum,carry);
a=0;b=0;c=0;#30
a=0;b=0;c=1;#30
a=0;b=1;c=0;#30
a=0;b=1;c=1;#30
a=1;b=0;c=0;#30
a=1;b=0;c=1;#30
a=1;b=1;c=0;#30
a=1;b=1;c=1;
//$monitor("a=%d,b=%d,c=%d,sum=%d,carry=%d",a,b,c,sum,carry);
end
endmodule