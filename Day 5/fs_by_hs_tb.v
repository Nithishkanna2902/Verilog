`timescale 1ns / 1ps
module hs(input a,b,output dif,bor);
assign dif=a^b;
assign bor=~a&b;
endmodule
module fs_by_hs(input a,b,c,output dif,bor);
hs hs1(a,b,d1,b0);
hs hs2(d1,c,dif,b1);
assign bor=b0|b1;

endmodule
