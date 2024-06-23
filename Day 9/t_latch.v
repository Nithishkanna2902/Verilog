`timescale 1ns / 1ps


module t_latch(t,en,q,q_bar);
input wire t,en;
output reg q;
output reg q_bar;
initial begin
q=0;
q_bar=~q;
end
always@(*) begin
if(en)
begin
 if(t)begin
  q=~q;
  end
   q_bar=~q;
end
end
endmodule
/*module t_latch (
    input  wire t,     // T (Toggle) input
    input  wire en,    // Enable input
    output reg  q,     // Output
    output wire q_bar  // Complementary output
);

always @(*) begin
    if (en) begin
        if (t) begin
            q = ~q;  // Toggle q if T is high and enable is active
        end
        // If t is low, q retains its current state implicitly
    end
    // If enable is low, q retains its state implicitly
end

assign q_bar = ~q;  // Complementary output

endmodule*/
