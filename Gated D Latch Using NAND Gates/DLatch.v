`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 08.01.2025 00:23:59
// Design Name: 
// Module Name: DLatch
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


module DLatch(output Q,Qb, input D,en);
wire [2:0]w;

    //Logic
    nand G0(w[0],D,D);
    
    nand G1(w[1],D,en);
    nand G2(w[2],en,w[0]);
    
    nand G3(Q,w[1],Qb);
    nand G4(Qb,Q,w[2]);
    
endmodule
