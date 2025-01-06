`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 06.01.2025 23:28:44
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


module SRLatch(output Q,Qb, input S,R);
wire w1,w2;

    //Logic
    nand G1(w1,S,S);
    nand G2(w2,R,R);
    
    nand G3(Q,w1,Qb);
    nand G4(Qb,Q,w2);
        
endmodule
