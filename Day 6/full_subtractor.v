`timescale 1ns / 1ps

module full_subtractor(input a,b,c,output dif,bor
    );
wire w1,w2,w3,w4,w5;
xor x1(w1,a,b);
xor x2(dif,w1,c);
not n1(w2,a);
and an1(w3,b,w2);
not n2(w4,w1);
and an2(w5,w4,c);
or o1(bor,w3,w5);
endmodule
