/*`timescale 1ns / 1ps

module siso_shift_register(x,clk,y);
input x,clk;
output reg y;
reg [2:0]a;
initial begin
y<=1'b0;
a<=3'b000;
end
always@(posedge clk)begin
a[2]<=x;
a[1]<=a[2];
a[0]<=a[1];
y<=a[0];
end
endmodule
*/
`timescale 1ns / 1ps

module siso_shift_register (
    input wire x,       // Serial input
    input wire clk,     // Clock input
    output reg y        // Serial output
);
    reg [2:0] a; // 3-bit shift register storage

    // Shift register logic
    always @(posedge clk) begin
        a[2] <= a[1]; // Shift right
        a[1] <= a[0];
        a[0] <= x;    // Insert new bit into LSB
    end

    // Output the MSB
    always @(posedge clk) begin
        y <= a[2];
    end
endmodule