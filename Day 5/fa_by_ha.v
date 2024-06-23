`timescale 1ns / 1ps
module half_adder(input a1,b1,output s1,c1);
assign s1=a1^b1;
assign c1=a1&b1;
endmodule

module fa_by_ha(input a,b,c,output sum,carry);
wire s,ca,c1;
half_adder ha1(a,b,s,ca);
half_adder ha2(c,s,sum,c1);
assign carry=ca|c1;
endmodule

