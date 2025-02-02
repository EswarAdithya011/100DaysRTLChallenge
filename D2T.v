`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 28.01.2025 18:43:34
// Design Name: 
// Module Name: D2T
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


module D2T(output Q, Qb, input T, clk);
    wire w;
    
    assign w = Q ^ T; 
    
    DFlipFlop D0(.Q(Q), .Qb(Qb), .D(w), .clk(clk));
    
endmodule

