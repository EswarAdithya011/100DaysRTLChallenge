`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 06.02.2025 10:36:42
// Design Name: 
// Module Name: PIPO
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


module PIPO(output [3:0]Q, input [3:0]X, input clk);

    DFlipFlop D0(.Q(Q[0]), .D(X[0]), .clk(clk));
    DFlipFlop D1(.Q(Q[1]), .D(X[1]), .clk(clk));
    DFlipFlop D2(.Q(Q[2]), .D(X[2]), .clk(clk));
    DFlipFlop D3(.Q(Q[3]), .D(X[3]), .clk(clk));
    
endmodule
