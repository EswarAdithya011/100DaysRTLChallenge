`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 05.02.2025 10:21:42
// Design Name: 
// Module Name: PISO
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


`timescale 1ns / 1ps

module PISO(output Q, input [3:0] X, input SLbar, clk);
wire [2:0] w; 

DFlipFlop D0 (.Q(w[0]), .D(X[0]), .clk(clk));
DFlipFlop D1 (.Q(w[1]), .D((~SLbar & X[1]) | (SLbar & w[0])), .clk(clk));
DFlipFlop D2 (.Q(w[2]), .D((~SLbar & X[2]) | (SLbar & w[1])), .clk(clk));
DFlipFlop D3 (.Q(Q), .D((~SLbar & X[3]) | (SLbar & w[2])), .clk(clk));

endmodule
