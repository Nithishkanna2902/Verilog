`timescale 1ns / 1ps/*
// 2x1 Multiplexer Module
module mux_2x1 (
    input wire a, b, s,
    output wire y
);
    assign y = (s) ? b : a;
endmodule

// 4x1 Multiplexer Using Two 2x1 Multiplexers
module mux_4x1_by_2x1 (
    input wire a, b, c, d,
    input wire s0, s1,
    output wire y
);
    wire w1, w2;

    // Instantiate 2x1 multiplexers
    mux_2x1 m1 (.a(a), .b(b), .s(s1), .y(w1));
    mux_2x1 m2 (.a(c), .b(d), .s(s1), .y(w2));
    mux_2x1 m3 (.a(w1), .b(w2), .s(s0), .y(y));

endmodule*/
module mux_2x1(a,b,s,y);
input wire a,b,s;
output wire y;
assign y=(s)?b:a;

endmodule

module mux_4x1_by_2x1(a,b,c,d,s0,s1,y);
input wire a,b,c,d;
input s0,s1;
wire w1,w2;
output wire y;
mux_2x1 m1(a,b,s1,w1);
mux_2x1 m2(c,d,s1,w2);
mux_2x1 m3(w1,w2,s0,y);

endmodule



