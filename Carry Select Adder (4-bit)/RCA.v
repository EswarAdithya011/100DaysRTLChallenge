`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 27.10.2024 23:13:16
// Design Name: 
// Module Name: RCA
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


module RCA(output Cout,output [3:0]S,input Cin,input [3:0]A,B);
wire c1,c2,c3;

full_adder FA1(.a(A[0]),.b(B[0]),.c(Cin),.sum(S[0]),.carry(c1));
full_adder FA2(.a(A[1]),.b(B[1]),.c(c1),.sum(S[1]),.carry(c2));
full_adder FA3(.a(A[2]),.b(B[2]),.c(c2),.sum(S[2]),.carry(c3));
full_adder FA4(.a(A[3]),.b(B[3]),.c(c3),.sum(S[3]),.carry(Cout));

endmodule
