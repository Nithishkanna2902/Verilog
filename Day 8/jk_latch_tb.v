module jk_latch_tb;
reg j,k,en;
wire q,q_bar;
jk_latch uut(j,k,en,q,q_bar);
initial begin
$monitor("j=%b,k=%b,q=%b,q_bar=%b",j,k,q,q_bar);
en=1;j=0;k=0;#15 
en=1;j=0;k=1;#15 
en=1;j=1;k=0;#15 
en=1;j=1;k=1;#15 
en=1;j=0;k=0;#15 
en=0;j=0;k=1;#15 
en=0;j=1;k=0;#15 
en=0;j=1;k=1;#15;
$finish;
end 
endmodule
