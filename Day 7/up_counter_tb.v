/*`timescale 1ns / 1ps
module up_counter(clk,rst,data,load,count);
input clk,rst,load;
input [3:0]data;
output reg [3:0]count;
always@(posedge clk)
begin
 if(rst)
  count<=0;
 else if(load)
  count<=data;
 else
  count=count+1;
 end
endmodule*/
`timescale 1ns / 1ps
/*module up_counter(
    input wire clk,    // Clock signal
    input wire rst,    // Asynchronous reset
    input wire load,   // Load control signal
    input wire [3:0] data,  // Data input for loading
    output reg [3:0] count  // 4-bit counter output
);

    always @(posedge clk or posedge rst) begin
        if (rst)
            count <= 4'b0000;  // Reset the counter to 0
        else if (load)
            count <= data;     // Load the counter with input data
        else
            count <= count + 1;  // Increment the counter
    end
endmodule
*/
module up_counter(clk,rst,data,load,count);
input clk,rst,load;
input [3:0]data;
output reg [3:0]count;
always@(posedge clk or posedge rst)
begin
 if(rst)
  count<=4'b0000;
 else if(load)
  count<=data;
 else
  count<=count+1;
 end 
 endmodule