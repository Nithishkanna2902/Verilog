module full_adder_tb;
reg a,b,c;
wire sum,carry;
fa_by_ha uut(a,b,c,sum,carry);
initial begin
a=0;b=0;c=0;#30
a=0;b=0;c=1;#30
a=0;b=1;c=0;#30
a=0;b=1;c=1;#30
a=1;b=0;c=0;#30
a=1;b=0;c=1;#30
a=1;b=1;c=0;#30
a=1;b=1;c=1;
end
endmodule