`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
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

full_adder FA1(A[0],B[0],Cin,S[0],c1);
full_adder FA2(A[1],B[1],c1,S[1],c2);
full_adder FA3(A[2],B[2],c2,S[2],c3);
full_adder FA4(A[3],B[3],c3,S[3],Cout);

endmodule
