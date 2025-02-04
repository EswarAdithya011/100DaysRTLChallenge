`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 04.02.2025 23:22:36
// Design Name: 
// Module Name: SIPO
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SIPO(output [3:0]Q, input Din,clk);
wire [2:0]w;

    DFlipFlop D0(.Q(w[0]), .D(Din), .clk(clk));
    DFlipFlop D1(.Q(w[1]), .D(w[0]), .clk(clk));
    DFlipFlop D2(.Q(w[2]), .D(w[1]), .clk(clk));
    DFlipFlop D3(.Q(Q[3]), .D(w[2]), .clk(clk));
    
    assign Q[0] = w[0];
    assign Q[1] = w[1];
    assign Q[2] = w[2];
    
endmodule
