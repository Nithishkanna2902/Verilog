`timescale 1ns / 1ps


module gray_to_binary #(parameter size =6)(a,b);
input wire [size-1:0]a;
output wire [size-1:0]b;
genvar g;
assign b[size-1]=a[size-1];
 generate
  for(g=0;g<size-1;g=g+1)
   begin
   assign b[g]=a[g]^b[g+1];
   end  
 endgenerate 
    
   endmodule
