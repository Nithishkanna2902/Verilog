`timescale 1ns / 1ps
module s_ram #(parameter datawidth=8,addresswidth=8)(
   input clk,rst,we,
   input [datawidth-1:0]data_in,
   input [addresswidth-1:0]addr,
   output reg [datawidth-1:0]data_out
    );
    reg [datawidth-1:0]simple_ram[0:2**addresswidth-1];
    always@(posedge clk) begin 
    if(rst) 
     data_out<=0;
    else begin 
    if(we) 
     simple_ram[addr]<=data_in;
    else
     data_out<=simple_ram[addr];
     end 
     end
endmodule
