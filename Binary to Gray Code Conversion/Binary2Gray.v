`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 05.11.2024 22:48:55
// Design Name: 
// Module Name: Binary2Gray
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


module Binary2Gray(output [7:0] G, input [7:0] B);

    //Logic
     assign G[7] = B[7],
            G[6] = B[7] ^ B[6],
            G[5] = B[6] ^ B[5],
            G[4] = B[5] ^ B[4],
            G[3] = B[4] ^ B[3],
            G[2] = B[3] ^ B[2],
            G[1] = B[2] ^ B[1],
            G[0] = B[1] ^ B[0];
    
endmodule
