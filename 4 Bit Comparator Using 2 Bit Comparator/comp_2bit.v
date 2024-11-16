`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2024 21:49:09
// Design Name: 
// Module Name: comp_2bit
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


module comp_2bit(output E2,G2,L2, input [1:0] A,B);
wire E0,E1,G0,G1,L0,L1;
wire w1,w2;

    //Logic
    comp_1bit C1(E0,G0,L0,A[0],B[0]);
    comp_1bit C2(E1,G1,L1,A[1],B[1]);
    and A1(E2,E1,E0);
    and A2(w1,G0,E1);
    or A3(G2,w1,G1);
    and A4(w2,L0,E1);
    or A5(L2,w2,L1);
        
endmodule
