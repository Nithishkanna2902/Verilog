`timescale 1ns / 1ps

module binary_to_graycode #(parameter size=6)(a,b);
input wire [size-1:0]a;//the value assigned starts from lsh ,for 100110 a[size-1]is MSB and a[0] is LSB
output wire [size-1:0]b;
genvar g;
assign b[size-1]=a[size-1];
generate  
    for(g = 0; g<size-1; g=g+1) begin 
      assign b[g]=a[g]^a[g+1];
    end 
  endgenerate 
endmodule
/*module binary_to_graycode #(parameter size=6) (
    input wire [size-1:0] a,
    output wire [size-1:0] b
);
    genvar g;
    assign b[0] = a[0];  // The LSB remains the same in Gray code

    generate
        for(g = 1; g < size; g = g + 1) begin : gen_graycode
            assign b[g] = a[g] ^ a[g-1];  // XOR for remaining bits
        end
    endgenerate
endmodule*/
