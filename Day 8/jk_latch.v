`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2024 18:04:04
// Design Name: 
// Module Name: jk_latch
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module jk_latch(
j,k,en,q,q_bar
    );
    input wire j,k,en;
    output reg q,q_bar;
    always@(*)begin
    if(j&&k)begin
     q=~q;
     q_bar=~q_bar;
     end
     else if(!j&&k) begin
     q=1'b0;
     q_bar=1'b1;
     end
     else if(j&&!k)begin
     q=1'b1;
     q_bar=1'b0;
     end
     end 
     endmodule
     
     
     

