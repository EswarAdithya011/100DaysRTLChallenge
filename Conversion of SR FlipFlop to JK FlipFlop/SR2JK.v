`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 02.02.2025 22:04:47
// Design Name: 
// Module Name: SR2JK
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


module SR2JK(output Q,Qb, input J,K,clk);
wire [1:0]w;

    //Logic
    and A0(w[0],J,Qb);
    and A1(w[1],K,Q);
    
    SRFlipFlop FF0(.Q(Q), .Qb(Qb), .S(w[0]), .R(w[1]), .clk(clk));

endmodule
