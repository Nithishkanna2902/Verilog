/*odule up_counter_tb;
reg rst,clk,load;
reg [3:0]data;
wire [3:0]count;
up_counter uut(rst,clk,data,load,count);
initial
begin
clk=1'b0;
forever #5
clk=~clk;
end
initial begin
{rst,load}=0;
//count=4'b0000;
data=4'b0000;#15;
end
initial begin
{rst,load}=2'b00;data=4'd3;#15;
{rst,load}=2'b10;data=4'd7;#15;
{rst,load}=2'b01;data=4'd2;#15;
{rst,load}=2'b11;data=4'd1;#15;
{rst,load}=2'b00;data=4'd9;#15;
end
initial begin
$monitor($time,"clk=%d,rst=%d,load=%d,data=%d,count=%d",clk,rst,load,data,count);
end
endmodule*/
`timescale 1ns / 1ps

/*module up_counter_tb;
    reg clk;
    reg rst;
    reg load;
    reg [3:0] data;
    wire [3:0] count;

    // Instantiate the Device Under Test (DUT)
    up_counter uut (
        .clk(clk),
        .rst(rst),
        .load(load),
        .data(data),
        .count(count)
    );

    // Clock generation
    always #5 clk = ~clk;  // Clock period of 10 time units

    initial begin
        // Initialize inputs
        clk = 0;
        rst = 0;
        load = 0;
        data = 4'b0000;

        // Waveform dump
        //$dumpfile("up_counter.vcd");
        //$dumpvars(0, up_counter_tb);

        // Apply test cases

        // Test reset functionality
        rst = 1; #10;
        rst = 0; #10;

        // Test counting
        #50;

        // Test load functionality
        data = 4'b1010;
        load = 1; #10;
        load = 0; #50;

        // Test further counting
        #100;

        // End simulation
        $finish;
    end
endmodule
*/
module up_counter_tb;
reg clk,rst,load;
reg [3:0]data;
wire[3:0]count;
up_counter uut(clk,rst,data,load,count);
initial begin
clk=1'b0;
forever #15
clk=~clk;
end
initial begin
data=4'b0000;
clk=1'b0;
rst=1'b0;
load=1'b0;
end
initial begin
rst=1'b1;#50
rst=1'b0;
load=1'b1;
data=4'd7;#50
load=1'b0;#50;
end
endmodule