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


module Pipelined_Processing_Unit_tb;

    // Testbench signals
    logic clk;
    logic rst;
    logic [31:0] counter;
    logic valid_out;
    logic [15:0] match_count;

    // Instantiate the DUT
    Pipelined_Processing_Unit ppu_instance (
        .clk(clk),
        .rst(rst),
        .counter(counter),
        .valid_out(valid_out),
        .match_count(match_count)
    );

    // Clock generation: 10ns period
    always #5 clk = ~clk;

    // Task to apply a counter value
    task automatic apply_counter(input [31:0] value);
        begin
            counter = value;
            repeat(4) @(posedge clk);
        end
    endtask

    initial begin
        // Initialize
        clk = 0;
        rst = 1;
        counter = 32'h00000000;

        // Reset pulse
        repeat (2) @(posedge clk);
        rst = 0;

        // Apply test vectors
        apply_counter(32'h11223344); // a=44 b=33 c=22 d=11
        apply_counter(32'hAABBCCDD); // a=DD b=CC c=BB d=AA
        apply_counter(32'h01020304);
        apply_counter(32'hFFFFFFFF); // all 1s
        apply_counter(32'h00000000); // all 0s
        apply_counter(32'h12345678);

        // Let the pipeline settle
        repeat (10) @(posedge clk);

        // Finish simulation
        $display("Final match count: %0d", match_count);
        $finish;
    end

endmodule

