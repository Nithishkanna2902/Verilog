`timescale 1ns / 1ps
//data flow method
/*
module sr_latch(s,r,q,q_bar);
input wire s,r;
output wire q,q_bar;
assign q=~(r|q_bar);
assign q_bar=~(s|q);
endmodule
/*
//structural level

module sr_latch(s,r,q,q_bar);
input wire s,r;
output wire q,q_bar;
nor n1(q,r,q_bar);
nor n2(q_bar,s,q);
endmodule
*/
module sr_latch (
    input wire s,     // Set input
    input wire r,     // Reset input
    input wire en,    // Enable input
    output reg q,     // Q output
    output reg q_bar  // Q' output
);

    always @(*) begin
        if (en) begin
            if (s && !r) begin
                q = 1'b1;
                q_bar = 1'b0;
            end else if (r && !s) begin
                q = 1'b0;
                q_bar = 1'b1;
            end else if (!s && !r) begin
                // Retain the previous state
                // Explicitly do nothing here
            end else if (s && r) begin
                // Undefined or invalid state
                // Retain previous state or set to known values as per design
                q = 1'bx; // Retain previous state (this is a placeholder)
                q_bar = 1'bx; // Retain previous state (this is a placeholder)
            end
        end
        // If en is low, retain previous values of q and q_bar
    end

endmodule
