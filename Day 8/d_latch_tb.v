module d_latch_tb;
reg d,en;
wire q,q_bar;
d_latch uut(d,en,q,q_bar);
initial begin
d=0;en=0;
$monitor("d=%b,q=%b,q_bar=%b",d,q,q_bar);
en=1;d=0;#15 
en=1;d=1;#15 
en=0;d=0;#15 
en=0;d=1;#15;
$finish;
end
endmodule