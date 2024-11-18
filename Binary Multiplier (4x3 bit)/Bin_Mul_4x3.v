`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 18.11.2024 10:42:04
// Design Name: 
// Module Name: Bin_Mul_4x3
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


module Bin_Mul_4x3(output [6:0]C, input [2:0]A, input [3:0]B);
wire [14:0]w;

    //Logic
    and a0(C[0],A[0],B[0]);
    and a1(w[0],A[0],B[1]);
    and a2(w[1],A[0],B[2]);
    and a3(w[2],A[0],B[3]);
    
    and a4(w[3],A[1],B[0]);
    and a5(w[4],A[1],B[1]);
    and a6(w[5],A[1],B[2]);
    and a7(w[6],A[1],B[3]);
    
    and a8(w[11],A[2],B[0]);
    and a9(w[12],A[2],B[1]);
    and a10(w[13],A[2],B[2]);
    and a11(w[14],A[2],B[3]);
    
    RCA R1(.Cout(w[10]), .S({w[9:7],C[1]}), .A({1'b0,w[2:0]}), .B(w[6:3]), .Cin(1'b0));
    RCA R2(.Cout(C[6]), .S(C[5:2]), .A(w[10:7]), .B(w[14:11]), .Cin(1'b0));
    
endmodule
