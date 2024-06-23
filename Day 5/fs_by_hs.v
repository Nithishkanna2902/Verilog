module full_subtractor_tb;
reg a,b,c;
wire dif,bor;
fs_by_hs uut(a,b,c,dif,bor);
initial begin
a=0;b=0;c=0;#30
a=0;b=0;c=1;#30
a=0;b=1;c=0;#30
a=0;b=1;c=1;#30
a=1;b=0;c=0;#30
a=1;b=0;c=1;#30
a=1;b=1;c=0;#30
a=1;b=1;c=1;
end
endmodule