`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 28.01.2025 18:23:36
// Design Name: 
// Module Name: SR2D
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


module SR2D(output Q,Qb, input D,clk);

    SRFlipFlop SR0(.Q(Q), .Qb(Qb), .S(D), .R(~D), .clk(clk));
    
endmodule
