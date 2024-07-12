/*`timescale 1ns / 1ps

module mealy_fsm (
    input wire in,
    input wire clk,
    input wire rst,
    output reg out
);

    reg [1:0] cst, nst;

    // State encoding
    parameter [1:0] s0 = 2'b00;
    parameter [1:0] s1 = 2'b01;
    parameter [1:0] s2 = 2'b10;

    // Sequential logic for state and output update
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            cst = s0;
            out = 1'b0;
        end else begin
            cst = nst;
            case (cst)
                s0: begin
                    out = 1'b0;
                    if (in) nst = s1;
                    else nst = s0;
                end
                s1: begin
                    out = 1'b0;
                    if (!in) nst = s2;
                    else nst = s1;
                end
                s2: begin
                    if (in) begin
                        out = 1'b1; // Sequence 101 detected
                        nst = s1;
                    end else begin
                        out = 1'b0; // No sequence
                        nst = s0;
                    end
                end
                default: begin
                    nst = s0;
                    out = 1'b0;
                end
            endcase
        end
    end
endmodule*/
/*module mealy_ov (
    input clk, rst, x,
    output reg y
);

    reg [1:0] state;
    parameter s0 = 2'b00, s1 = 2'b01, s2 = 2'b10;

    always @(posedge clk) begin
        if (rst) begin
            y <= 1'b0;
            state <= s0;
        end else begin
            case (state)
                s0: begin
                    state <= x ? s1 : s0;
                    y <= 1'b0;
                end
                s1: begin
                    state <= x ? s1 : s2;
                    y <= 1'b0;
                end
                s2: begin
                    state <= x ? s1 : s0;
                    y <= x ? 1'b1 : 1'b0;
                end
                default: begin
                    state <= s0;
                    y <= 1'b0;
                end
            endcase
        end
    end

endmodule*/

module mealy_ov(clk,rst,x,y);
  input clk,rst,x;
  output reg y;
  reg [1:0]state;
  parameter s0=2'b00,s1=2'b01,s2=2'b10;
  always@(posedge clk) begin
    if(rst) begin
       y<=1'b0;
      state<=s0;
    end
    else begin 
      case(state) 
        s0:begin
          state<=x?s1:s0;
          y<=1'b0;
        end
        s1:begin 
          state<=x?s1:s2;
          y<=1'b0;
        end
        s2:begin 
          state<=x?s1:s0;
          y<=x?1'b1:1'b0;
        end
        default:begin 
          state<=s0;
          y<=1'b0;
        end
      endcase
    end
  end
endmodule
