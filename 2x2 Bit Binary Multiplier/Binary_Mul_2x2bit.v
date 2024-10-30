`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2024 15:50:23
// Design Name: 
// Module Name: Binary_Mul_2x2bit
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


module Binary_Mul_2x2bit(output [3:0] R,input [1:0] A,B);
wire [3:0] P;

 // Logic
 assign R[0] = A[0] & B[0];
 assign P[0] = A[0] & B[1];
 assign P[1] = A[1] & B[0];

 half_adder H1(.a(P[0]),.b(P[1]),.sum(R[1]),.carry(P[3]));
 
 assign P[2] = A[1] & B[1];
 
 half_adder H2(.a(P[3]),.b(P[2]),.carry(R[3]),.sum(R[2]));

endmodule
