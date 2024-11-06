`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 06.11.2024 22:54:03
// Design Name: 
// Module Name: BCD2Ex3
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


module BCD2Ex3(output [3:0] E, input [3:0] B);

    //Logic
   assign E[0] = ~B[0],
          E[1] = ~(B[1] ^ B[0]),
          E[2] = (~B[2] & B[0]) |  (~B[2] & B[1]) | (B[2] & ~B[1] & ~B[0]),
          E[3] = B[3] | (B[2] & B[0]) | (B[2] & B[1]);
    
endmodule
