`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 07.01.2025 23:54:29
// Design Name: 
// Module Name: SRLatch
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


module SRLatch(output Q,Qb, input S,R,en);
wire w1,w2;

    //Logic
    nand G0(w1,S,en);
    nand G1(w2,en,R);
    
    nand G2(Q,w1,Qb);
    nand G3(Qb,Q,w2);
    
endmodule
