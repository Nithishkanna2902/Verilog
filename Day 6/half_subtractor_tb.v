`timescale 1ns / 1ps


module half_subtractor(input a,b,output dif,bor );
assign dif=a^b;
assign bor=~a&b;
endmodule
