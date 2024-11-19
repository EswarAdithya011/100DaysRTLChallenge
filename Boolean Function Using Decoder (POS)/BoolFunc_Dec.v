`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 19.11.2024 23:05:26
// Design Name: 
// Module Name: BoolFunc_Dec
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


module BoolFunc_Dec(output F1,F2, input x, y, z);
    wire [7:0] D;

    Decoder_8x3 deco(.y(D), .x({x, y, z}));

    // Logic for F1 and F2
    and A1(F1,~D[0],~D[3],~D[4]);   // F1 = M(0,3,4)
    and A2(F2,~D[2],~D[5]);         // F2 = M(2,5)

endmodule

