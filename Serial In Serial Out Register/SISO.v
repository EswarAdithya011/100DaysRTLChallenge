`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 03.02.2025 23:45:31
// Design Name: 
// Module Name: SISO
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


module SISO(output Dout, input Din,clk);
wire [2:0]w;

    DFlipFlop D0(.Q(w[0]), .D(Din), .clk(clk));
    DFlipFlop D1(.Q(w[1]), .D(w[0]), .clk(clk));
    DFlipFlop D2(.Q(w[2]), .D(w[1]), .clk(clk));
    DFlipFlop D3(.Q(Dout), .D(w[2]), .clk(clk));
    
endmodule
