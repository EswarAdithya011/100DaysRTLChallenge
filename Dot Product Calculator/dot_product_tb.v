//////////////////////////////////////////////////////////////////////////////////
// Company: Lovely Professional University (LPU)
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 18.05.2025 18:10:53
// Design Name: Dot Product Computation Unit
// Module Name: dot_product_tb
// Project Name: Vector Dot Product using FSM and Memory
// Target Devices: Xilinx XC7A100TCSG324-1 (Nexys 4 Board)
// Tool Versions: Xilinx Vivado 2024.1
// Description: 
// This testbench simulates the dot product computation logic for two 3-element
// vectors A and B using a finite state machine. The design accepts 8-bit 
// unsigned values via `din`, stores them, and computes the scalar product `dout`.
// The `run` output indicates valid output availability.
// 
// Dependencies: 
// - model.v (main DUT)
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// - Designed for educational and verification purposes.
// - Reset is synchronous active-low.
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns/1ps

module dot_product_tb;

    // Inputs
    reg clk;
    reg resetn;
    reg [7:0] din;

    // Outputs
    wire [17:0] dout;
    wire run;

    // Instantiate DUT
    dot_product dot_product_instance (
        .din(din),
        .clk(clk),
        .resetn(resetn),
        .dout(dout),
        .run(run)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns clock period
    end

    // Stimulus
    initial begin
        // Initialize inputs
        din = 8'dx;    
        resetn = 0;

        // Hold reset low
        #10;
        resetn = 1;

        // Apply inputs a1=1, a2=2, a3=3, b1=4, b2=5, b3=6
            din = 8'd1;  // a1
        #10 din = 8'd2;  // a2
        #10 din = 8'd3;  // a3
        #10 din = 8'd4;  // b1
        #10 din = 8'd5;  // b2
        #10 din = 8'd6;  // b3

        // Apply second test: a1=10, a2=20, a3=30, b1=1, b2=2, b3=3
        #10 din = 8'd10;
        #10 din = 8'd20;
        #10 din = 8'd30;
        #10 din = 8'd1;
        #10 din = 8'd2;
        #10 din = 8'd3;
        
        #10 $stop;
    end

endmodule

