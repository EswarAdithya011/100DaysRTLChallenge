`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 26.11.2024 23:25:56
// Design Name: 
// Module Name: mux16x1
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


module mux16x1(output Y, input [15:0] D, input [3:0] s, input en);
    wire w1, w2;

    // Logic
    mux8x1 m1(.Y(w1), .A(D[7:0]), .s(s[2:0]), .en(en)); 
    mux8x1 m2(.Y(w2), .A(D[15:8]), .s(s[2:0]), .en(en)); 

    mux2x1 m3(.y(Y), .x({w2, w1}), .s(s[3]), .en(en)); 
endmodule

