`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 24.11.2024 00:14:13
// Design Name: 
// Module Name: priority_encoder
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


module priority_encoder(output [1:0]Y, output V, input [3:0]D);

    //Logic
    assign Y[0] = D[3] | (D[1] & ~D[2]);
    assign Y[1] = D[2] | D[3];
    assign V = D[0] | D[1] | D[2] | D[3];
    
endmodule
