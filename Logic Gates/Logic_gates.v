`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2024 21:48:11
// Design Name: 
// Module Name: Logic_gates
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


module Logic_gates(A,B,Y);
input A,B;
output [7:0]Y;

//Logic (Gate Level Modelling)

and G1(Y[0],A,B);
or G2(Y[1],A,B);
not G3(Y[2],A);
not G4(Y[3],B);
nand G5(Y[4],A,B);
nor G6(Y[5],A,B);
xor G7(Y[6],A,B);
xnor G8(Y[7],A,B);

endmodule
