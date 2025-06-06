`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lovely Professional University
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 06.06.2025 20:21:26
// Design Name: Pipelined Logic Unit
// Module Name: Pipelined_Logic_Unit
// Project Name: Pipelined Logic Processing Unit
// Target Devices: XC7A100TCSG324-1 (Nexys 4 Board)
// Tool Versions: Xilinx Vivado 2024.1
// Description: 
// This module implements a pipelined bitwise logic unit that processes a 
// 32-bit input by splitting it into 8-bit segments (a, b, c, d), computing
// intermediate values E and F through multi-stage logic, and counting how
// often E equals F over clock cycles.
// 
// Dependencies: None
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Designed as part of RTL design practice 
// 
//////////////////////////////////////////////////////////////////////////////////


module Pipelined_Processing_Unit(
    input  logic        clk,
    input  logic        rst,
    input  logic [31:0] counter,
    output logic        valid_out,
    output logic [15:0] match_count
);

    // Split the 32-bit counter into 4 parts
    logic [7:0] a, b, c, d;

    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            a <= 0; b <= 0; c <= 0; d <= 0;
        end else begin
            a <= counter[7:0];
            b <= counter[15:8];
            c <= counter[23:16];
            d <= counter[31:24];
        end
    end

    // 2-stage pipeline for E = a | (b & c)
    logic [7:0] bc, e;

    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            bc <= 0;
            e  <= 0;
        end else begin
            bc <= b & c;
            e  <= a | bc;
        end
    end

    // 3-stage pipeline for F = (b & c) ^ (a | d)
    logic [7:0] bc1, ad1, f_temp, f;

    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            bc1     <= 0;
            ad1     <= 0;
            f_temp  <= 0;
            f       <= 0;
        end else begin
            bc1     <= b & c;
            ad1     <= a | d;
            f_temp  <= bc1 ^ ad1;
            f       <= f_temp;
        end
    end

    // Compare E and F, pulse valid_out, count matches
    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            valid_out   <= 0;
            match_count <= 0;
        end else begin
            if (e == f) begin
                valid_out   <= 1;
                match_count <= match_count + 1;
            end else begin
                valid_out <= 0;
                match_count <= match_count;
            end
        end
    end

endmodule

