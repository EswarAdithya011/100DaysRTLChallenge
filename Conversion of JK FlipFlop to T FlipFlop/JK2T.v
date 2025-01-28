`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 28.01.2025 11:32:19
// Design Name: 
// Module Name: JK2T
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


module JK2T(output Q,Qb, input T,clk);

JKFlipFlop JK0(.Q(Q), .Qb(Qb), .J(T), .K(T), .clk(clk));

endmodule
