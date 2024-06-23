module half_subtractor_tb;
reg a,b;
wire dif,bor;
half_subtractor uut(a,b,dif,bor);
initial  begin
a=0;b=0;#10
a=0;b=1;#10
a=1;b=0;#10
a=1;b=1;
end

endmodule