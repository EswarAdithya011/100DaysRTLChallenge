`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 22.11.2024 21:30:27
// Design Name: 
// Module Name: Encoder4x2
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


module Encoder4x2(output [1:0] A, input [3:0] Y);

    //Logic
    assign A[1] = Y[2] | Y[3];
    assign A[0] = Y[1] | Y[3];

endmodule
