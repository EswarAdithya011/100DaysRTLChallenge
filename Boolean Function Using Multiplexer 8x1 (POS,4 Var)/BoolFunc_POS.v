`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 03.01.2025 22:55:37
// Design Name: 
// Module Name: BoolFunc_POS
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


module BoolFunc_POS(output Y, input A,B,C,D);

    //Logic
    mux8x1 M(.Y(Y), .A({5'b10101,A,1'b0,A}), .s({B,C,D}), .en(1'b1));   // F = M(0,1,2,4,6,9,12,14) = m(3,5,7,8,10,11,13,15)
    
endmodule
