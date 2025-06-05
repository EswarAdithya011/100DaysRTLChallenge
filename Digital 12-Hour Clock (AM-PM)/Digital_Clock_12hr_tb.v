`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lovely Professional University
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 05.06.2025 14:02:39
// Design Name: Digital 12-Hour BCD Clock
// Module Name: Digital_Clock_12hr
// Project Name: 12-Hour BCD Digital Clock on Nexys-4 FPGA
// Target Devices: Digilent Nexys-4 FPGA Board (Xilinx Artix-7 FPGA)
// Tool Versions: Xilinx Vivado 2024.1
// Description: 
//      This project implements a 12-hour digital clock using BCD representation for hours, 
//      minutes, and seconds with AM/PM indicator. The clock counts time in BCD format 
//      and toggles the PM flag every 12 hours. Designed for Nexys-4 FPGA with 
//      synchronous reset and enable signal.
//
// Dependencies: None (Self-contained Verilog modules)
//
// Revision:
//      Revision 0.01 - Initial creation and testing on Nexys-4 FPGA
//
// Additional Comments:
//      The clock uses separate counters for seconds, minutes, and hours with proper BCD 
//      increment and rollover. The design supports enabling/disabling counting through ena input.
//
//////////////////////////////////////////////////////////////////////////////////


module Digital_Clock_12hr_tb;
    reg clk;
    reg reset;
    reg ena;
    wire pm;
    wire [7:0] ss, mm, hh;

    Digital_Clock_12hr clock_instance (
        .clk(clk),
        .reset(reset),
        .ena(ena),
        .pm(pm),
        .ss(ss),
        .mm(mm),
        .hh(hh)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1;
        ena = 0;
        #10;
        reset = 0;
        ena = 1;

        #500000;
        $finish;
    end
    
    initial begin
    $monitor("Time = %0d%0d:%0d%0d:%0d%0d %s",
             hh[7:4], hh[3:0],
             mm[7:4], mm[3:0],
             ss[7:4], ss[3:0],
             pm ? "PM" : "AM");
    end

endmodule
