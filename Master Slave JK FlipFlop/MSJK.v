`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 25.01.2025 14:46:14
// Design Name: 
// Module Name: MSJK
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


module MSJK(output Q, output Qb, input J,K,clk);
wire [1:0]w;

    JKFlipFlop Master(.Q(w[0]), .Qb(w[1]), .J(J), .K(K), .clk(clk));
    SRFlipFlop Slave(.Q(Q), .Qb(Qb), .S(w[0]), .R(w[1]), .clk(~clk));
    
endmodule
