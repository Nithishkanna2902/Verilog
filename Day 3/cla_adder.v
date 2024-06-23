`timescale 1ns / 1ps
module cla_adder #(parameter size=4)(a,b,cin,sum,cout);
input wire [size-1:0]a,b;
input wire cin;
output wire [size-1:0]sum;
output wire cout;
genvar r,k;
wire [size-1:0]p,g;
wire [size:0]c;
assign c[0]=cin;

generate begin
 for(r=0;r<size;r=r+1)
 begin 
  assign p[r]= a[r]^b[r];
  assign g[r]=a[r]&b[r];
 end
 end
endgenerate
generate begin 
 for(k=0;k<size;k=k+1) begin 
  assign sum[k]=p[k]^c[k];
  assign c[k+1]=g[k]|(p[k]&c[k]);
  end
  end 
endgenerate

 assign cout=c[size];

 
endmodule
