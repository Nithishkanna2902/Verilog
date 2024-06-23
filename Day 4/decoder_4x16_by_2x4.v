`timescale 1ns / 1ps
/*module decoder_2x4(s0,s1,e,y0,y1,y2,y3);
input wire s0,s1,e;
output reg y0,y1,y2,y3;
always@(*)
begin
 if(e)
 begin
 case({s0,s1})
 2'b00:{y0,y1,y2,y3}=4'b1000;
 2'b01:{y0,y1,y2,y3}=4'b0100;
 2'b10:{y0,y1,y2,y3}=4'b0010;
 2'b11:{y0,y1,y2,y3}=4'b0001;
 default:{y0,y1,y2,y3}=4'bxxxx;
 endcase
 end
 else
 {y0,y1,y2,y3}=4'b0000;
 end
 endmodule

module decoder_4x16_by_2x4(s0,s1,s2,s3,e1,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15);
input wire s0,s1,s2,s3,e1;
wire e2,e3,e4,e5;
output reg y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15;
decoder_2x4 d1(s0,s1,e1,e2,e3,e4,e5);
decoder_2x4 d2(s2,s3,e2,y0,y1,y2,y3);
decoder_2x4 d3(s2,s3,e3,y4,y5,y6,y7);
decoder_2x4 d4(s2,s3,e4,y8,y9,y10,y11);
decoder_2x4 d5(s2,s3,e5,y12,y13,y14,y15);

endmodule*/
module decoder_2x4 (
    input [1:0] in,    // 2-bit input
    input en,          // Enable signal
    output [3:0] out   // 4-bit output
);
    assign out = en ? (1 << in) : 4'b0000;
endmodule
module decoder_4x16 (
    input [3:0] in,     // 4-bit input
    output [15:0] out   // 16-bit output
);
    wire [3:0] enable;  // Enable signals for the 2x4 decoders
    wire [3:0] lower_out[3:0];  // Outputs from each 2x4 decoder
    
    // Generate the enable signals based on the upper 2 bits of input
    assign enable = 4'b0001 << in[3:2];
    
    // Instantiate four 2x4 decoders
    decoder_2x4 d0 (
        .in(in[1:0]),
        .en(enable[0]),
        .out(lower_out[0])
    );
    
    decoder_2x4 d1 (
        .in(in[1:0]),
        .en(enable[1]),
        .out(lower_out[1])
    );
    
    decoder_2x4 d2 (
        .in(in[1:0]),
        .en(enable[2]),
        .out(lower_out[2])
    );
    
    decoder_2x4 d3 (
        .in(in[1:0]),
        .en(enable[3]),
        .out(lower_out[3])
    );
    
    // Combine the outputs from the four 2x4 decoders
    assign out = {lower_out[3], lower_out[2], lower_out[1], lower_out[0]};
endmodule

