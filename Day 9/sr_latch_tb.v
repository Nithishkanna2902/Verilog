`timescale 1ns / 1ps

module sr_latch_tb;
reg s,r,en;
wire q,q_bar;
sr_latch uut(s,r,en,q,q_bar);
initial begin
$monitor("S=%b,R=%b,Q=%b,Q_bar=%b",s,r,q,q_bar);
en=1;s=1;r=1;#15; 
en=1;s=0;r=1;#15 
en=1;s=1;r=0;#15
en=1;s=0;r=0;#15
 

en=0;s=0;r=0;#15 
en=0;s=0;r=1;#15 
en=0;s=1;r=0;#15 

en=0;s=1;r=1;#15;
$finish;
end
endmodule
