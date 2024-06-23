module full_adder(a,b,c,sum,carry);
input wire a;
input wire b,c;
output wire sum,carry;
assign sum=a^b^c;
assign carry=(a&b)|(c&(a^b));
endmodule
module adder_subtractor_4bit(a,b,cin,s,c);
input wire [3:0]a;
input wire [3:0]b;
input wire cin;
output wire [3:0]s;
output wire c;
wire w0,w1,w2,w3,c1,c2,c3;
xor x1(w0,b[0],cin);
xor x2(w1,b[1],cin);
xor x3(w2,b[2],cin);
xor x4(w3,b[3],cin);
full_adder fa1(a[0],w0,cin,s[0],c1);
full_adder fa2(a[1],w1,c1,s[1],c2);
full_adder fa3(a[2],w2,c2,s[2],c3);
full_adder fa4(a[3],w3,c3,s[3],c);
endmodule/*
module FOURBITADDERSUBRACTOR(input wire a,b,cin, output wire sum,cout );
assign sum = a^b^cin;
assign cout = (a&b)|(cin&(a^b));
endmodule


module ripplecarryaddsub #(parameter SIZE = 4)(input wire [SIZE-1:0] a,b, input wire  ctrl, output wire [SIZE-1:0] sum, output wire cout);

genvar g;
wire [SIZE:0]c;
wire [SIZE-1:0]d;
assign c[0] = ctrl;
assign d[0] = b[0] ^ ctrl;

FOURBITADDERSUBRACTOR addsub1(.a(a[0]),.b(d[0]),.cin(c[0]),.sum(sum[0]),.cout(c[1]));
generate 
for(g=1; g<SIZE; g=g+1)begin
assign d[g]=b[g]^ctrl;
FOURBITADDERSUBRACTOR addsub2 (.a(a[g]),.b(d[g]),.cin(c[g]),.sum(sum[g]),.cout(c[g+1]));
end
endgenerate
assign cout=c[SIZE];
endmodule*/
