`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lovely Professional University
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 25.05.2025 17:53:18
// Design Name: IIR Filter Design Using Baugh-Wooley Multiplier
// Module Name: IIR_Filter_tb
// Project Name: Baugh-Wooley Based IIR Filter
// Target Devices: Xilinx Artix-7 (XC7A100TCSG324-1)
// Tool Versions: Vivado 2024.1
// Description: 
// Testbench to verify functionality of IIR_Filter module which uses a 
// Baugh-Wooley Signed Multiplier (BWSM) for recursive filtering.
// The filter updates output y[n] = a*y[n-1] + x[n] where 'a' is a coefficient.
// 
// Dependencies: 
// - IIR_Filter.v
// - BWSM.v
// - half_adder.v
// - full_adder.v
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// - Clock period: 10ns
// - Reset active high
// - 4-bit signed input/output
//
/////////////////////////////////////////////////////////////////////////////////


module IIR_Filter_tb;

    reg clk = 0;
    reg rst;
    reg [3:0] a;
    reg [3:0] x;
    wire [3:0] y;

    IIR_Filter uut (
        .clk(clk),
        .rst(rst),
        .a(a),
        .x(x),
        .y(y)
    );

    // Clock generation: 10 ns period
    initial begin
        clk = 0;    // Initialize clock
        forever #5 clk = ~clk;
    end
    
    initial begin
        $monitor("Time: %0t | Reset: %b | a: %d | x: %d | y: %d", 
                 $time, rst, a, x, y);
    end
    
    initial begin
        // Initialize inputs
        rst = 1;
        a = 4'd2;
        x = 4'd1;

        #10 rst = 0;
        a = 4'd2; x = 4'd1;

        #10 rst = 1'b1;
        a = 4'd7; x = 4'd10;
        
        #10 rst = 1'b0; // Deassert reset
        a = 4'd1; x = 4'd1;
        
        #10 $finish;
    end

endmodule
