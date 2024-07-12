`timescale 1ns / 1ps

module tb_APB_MASTER;

    // Inputs
    reg pclk;
    reg prst;
    reg pread_write;
    reg ptransfer;
    reg pready;
    reg [7:0] apb_write_paddr;
    reg [7:0] apb_read_paddr;
    reg [7:0] apb_write_data;
    reg [7:0] prdata;

    // Outputs
    wire psel;
    wire penable;
    wire pwrite;
    wire [7:0] pwdata;
    wire [7:0] paddr;
    wire [7:0] apb_read_out_data;

    // Instantiate the Unit Under Test (UUT)
    APB_MASTER uut (
        .pclk(pclk),
        .prst(prst),
        .pread_write(pread_write),
        .ptransfer(ptransfer),
        .pready(pready),
        .apb_write_paddr(apb_write_paddr),
        .apb_read_paddr(apb_read_paddr),
        .apb_write_data(apb_write_data),
        .prdata(prdata),
        .psel(psel),
        .penable(penable),
        .pwrite(pwrite),
        .pwdata(pwdata),
        .paddr(paddr),
        .apb_read_out_data(apb_read_out_data)
    );

    // Clock generation
    initial begin
        pclk = 0;
        forever #5 pclk = ~pclk; // 10ns period (100MHz clock)
    end

    // Simulation sequence
    initial begin
        // Initialize inputs
        prst = 1;
        pread_write = 0;
        ptransfer = 0;
        pready = 0;
        apb_write_paddr = 8'hA0;
        apb_read_paddr = 8'hB0;
        apb_write_data = 8'h55;
        prdata = 8'h00;

        // Apply reset
        #10;
        prst = 0;
        apb_write_paddr = 8'hA0;
        apb_read_paddr = 8'hB0;
        apb_write_data = 8'h55;
        prdata = 8'h00;

        // Start write transfer
        #10;
        pread_write = 1; // Write operation
        ptransfer = 1; 
        #10 pready=0;
        #10 pready=1;  // Start transfer
        #10;
       // ptransfer = 0;   // Stop transfer

        // Wait for a few clock cycles
//        #50;

        // Start read transfer
        pread_write = 0; // Read operation
        ptransfer = 1;   // Start transfer
        #10;
        pready = 1;      // Indicate ready for read
       #10  prdata = 8'h45;  // Simulate data returned from slave
        #10;
        ptransfer = 1;   // Stop transfer
        pready = 0;      // Clear ready

        // Wait for a few clock cycles 
        #100;

        // End simulation
        $stop;
    end

    // Monitor signals
    initial begin
        $monitor("Time: %0dns, pclk: %b, prst: %b, pread_write: %b, ptransfer: %b, pready: %b, apb_write_paddr: %h, apb_read_paddr: %h, apb_write_data: %h, prdata: %h, psel: %b, penable: %b, pwrite: %b, pwdata: %h, paddr: %h, apb_read_out_data: %h", 
                  $time, pclk, prst, pread_write, ptransfer, pready, apb_write_paddr, apb_read_paddr, apb_write_data, prdata, psel, penable, pwrite, pwdata, paddr, apb_read_out_data);
    end

endmodule
