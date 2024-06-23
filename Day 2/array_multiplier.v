`timescale 1ns / 1ps
module full_adder(a,b,c,sum,cout);
input wire a,b,c;
output wire sum,cout;
assign sum=a^b^c;
assign cout=(a&b)|(c&(a^b));
endmodule
module half_adder(a,b,sum,cout);
input wire a,b;
output wire sum,cout;
assign sum=a^b;
assign cout=a&b;
endmodule


module array_multiplier(a,b,y);
input wire [3:0]a;
input wire[3:0]b;
output wire[7:0]y;
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16;
wire s1,s2,s3,s4,s5,s6,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11;
and an1(w1,a[0],b[0]);
and an2(w2,a[1],b[0]);
and an3(w3,a[2],b[0]);
and an4(w4,a[3],b[0]);
and an5(w5,a[0],b[1]);
and an6(w6,a[1],b[1]);
and an7(w7,a[2],b[1]);
and an8(w8,a[3],b[1]);
and an9(w9,a[0],b[2]);
and an10(w10,a[1],b[2]);
and an11(w11,a[2],b[2]);
and an12(w12,a[3],b[2]);
and an13(w13,a[0],b[3]);
and an14(w14,a[1],b[3]);
and an15(w15,a[2],b[3]);
and an16(w16,a[3],b[3]);
assign y[0]=w1;
half_adder ha1(w5,w2,y[1],c1);
half_adder ha2(w9,w6,s1,c2);
full_adder fa3(s1,c1,w3,y[2],c3);
half_adder ha4(w13,w10,s2,c4);
full_adder fa5(s2,c2,w7,s3,c5);
full_adder fa6(s3,c3,w4,y[3],c6);
full_adder fa7(w14,w11,c4,s4,c7);
full_adder fa8(s4,c5,w8,s5,c8);
half_adder ha9(s5,c6,y[4],c9);
full_adder fa10(w15,c7,w12,s6,c10);
full_adder fa11(s6,c8,c9,y[5],c11);
full_adder fa12(w16,c10,c11,y[6],y[7]);



endmodule
