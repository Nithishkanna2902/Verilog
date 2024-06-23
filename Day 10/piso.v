/*`timescale 1ns / 1ps
module piso#(parameter size =4)(y,clk,x);
input [size-1:0]y;
input clk;
output reg x;
reg [size-1:0]a;
genvar g;
always@(posedge clk) begin
a[3]<=y[3];
a[2]<=y[2];
a[1]<=y[1];
a[0]<=y[0];
generate 
 for(g=0;g<size;g=g+1)
    x<=a[g];
  endgenerate
end 

`timescale 1ns / 1ps

module piso #(parameter size = 4) (
    input wire [size-1:0] y, // Parallel input
    input wire clk,          // Clock input
    output reg x             // Serial output
);
    reg [size-1:0] shift_reg; // Shift register storage

    integer i; // Loop variable

    always @(posedge clk) begin
        // Load the parallel input into the shift register
        if (i == size) begin
            shift_reg <= y;
            i <= 0;
        end else begin
            // Shift out the MSB (x) and shift the register left
            x <= shift_reg[size-1];
            shift_reg <= shift_reg << 1;
            i <= i + 1;
        end
    end

    initial begin
        i = size; // Initialize i to load data on the first clock edge
    end
endmodule*/
module piso#(parameter size=4)(y,clk,x);
input [size-1:0]y;
input clk;
output reg x;
reg[size-1:0]a;
integer i;
always@(posedge clk) begin
if(i==size)begin
a<=y;
i<=0;
end
else begin
 x<=a[size-1];
 a<=a<<1;
 i<=i+1;
 end
 end 
 initial begin
  i=size;
  end 
  endmodule
 
