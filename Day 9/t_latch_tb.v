module t_latch_tb;
reg t,en;
wire q,q_bar;
t_latch uut(t,en,q,q_bar);
initial begin
t=0;en=0;
$monitor("T=%b,q=%b,q_bar=%b",t,q,q_bar);
en=1;t=0;#15 
en=1;t=1;#15 
en=1;t=0;#15 
en=1;t=1;#15;
$finish;
end 
endmodule