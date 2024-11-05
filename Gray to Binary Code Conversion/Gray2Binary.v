`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 05.11.2024 23:43:21
// Design Name: 
// Module Name: Gray2Binary
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


module Gray2Binary(output [7:0] B, input [7:0] G);

    //Logic
    assign B[7] = G[7],
           B[6] = B[7] ^ G[6],
           B[5] = B[6] ^ G[5],
           B[4] = B[5] ^ G[4],
           B[3] = B[4] ^ G[3],
           B[2] = B[3] ^ G[2],
           B[1] = B[2] ^ G[1],
           B[0] = B[1] ^ G[0];
           
endmodule
