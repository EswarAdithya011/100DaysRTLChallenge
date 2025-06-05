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


module Digital_Clock_12hr(
    input clk,
    input reset,
    input ena,
    output reg pm,
    output reg [7:0] ss,
    output reg [7:0] mm,
    output reg [7:0] hh
);

    wire one_min = (ss == 8'h59);
    wire one_hour = (mm == 8'h59) && one_min;

    always @(posedge clk) begin
        if (reset) begin
            ss <= 8'h00;
            mm <= 8'h00;
            hh <= 8'h12;
            pm <= 1'b0;
        end
        else if (ena) begin
            // Seconds increment logic
            if (ss[3:0] == 4'd9) begin
                ss[3:0] <= 4'd0;
                if (ss[7:4] == 4'd5)
                    ss[7:4] <= 4'd0;
                else
                    ss[7:4] <= ss[7:4] + 4'd1;
            end
            else
                ss[3:0] <= ss[3:0] + 4'd1;

            // Minutes increment on rollover
            if (one_min) begin
                if (mm[3:0] == 4'd9) begin
                    mm[3:0] <= 4'd0;
                    if (mm[7:4] == 4'd5)
                        mm[7:4] <= 4'd0;
                    else
                        mm[7:4] <= mm[7:4] + 4'd1;
                end
                else
                    mm[3:0] <= mm[3:0] + 4'd1;
            end
			
            // Hours increment on rollover
            if (one_hour) begin	
                if (hh == 8'h12)
                    hh <= 8'h01;				// 12 rolls to 01
                else if (hh[3:0] == 4'd9) begin
                    hh[3:0] <= 4'd0;
                    hh[7:4] <= hh[7:4] + 4'd1;
                end
                else
                    hh[3:0] <= hh[3:0] + 4'd1;
            end
			
            // Toggle AM/PM when clock transitions from 11:59:59
            if (hh == 8'h11 && mm == 8'h59 && ss == 8'h59)
                pm <= ~pm;
        end
    end
endmodule