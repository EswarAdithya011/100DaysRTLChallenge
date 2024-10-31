`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2024 13:32:16
// Design Name: 
// Module Name: comp_4bit
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


module comp_4bit(output E,G,L, input [3:0]A,B);
wire w1,w2;
wire E1,E2,G1,G2,L1,L2;

    // Logic
    comp_2bit Com1(E1,G1,L1,A[1:0],B[1:0]);
    comp_2bit Com2(E2,G2,L2,A[3:2],B[3:2]);

    assign G = (G2)|(E2&G1);
    assign L = (L2)|(E2&L1);
    assign E = E1&E2; 
    
endmodule
