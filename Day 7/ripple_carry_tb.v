`timescale 1ns / 1ps
module full_adder(a,b,cin,sum,carry);
input wire a;
input wire b;
input wire cin;
output wire sum;
output wire carry;
assign sum=a^b^cin;
assign carry=(a&b)|(cin&(a^b));
endmodule
module ripple_carry(a,b,c,sum,carry);
input wire [3:0]a;
input wire [3:0]b;
input wire c;
output wire [3:0]sum;
output wire carry;
wire c1,c2,c3;
full_adder fa1(a[0],b[0],c,sum[0],c1);
full_adder fa2(a[1],b[1],c1,sum[1],c2);
full_adder fa3(a[2],b[2],c2,sum[2],c3);
full_adder fa4(a[3],b[3],c3,sum[3],carry);
endmodule

