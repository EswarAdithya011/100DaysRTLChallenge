`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 24.11.2024 23:32:09
// Design Name: 
// Module Name: mux8x1
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


module mux8x1(output Y, input [7:0]A, input [2:0]s, input en);
wire [1:0]w;

    //Logic
    mux4x1 m1(.y(w[0]), .en(en), .D(A[7:4]), .s(s[1:0]));
    mux4x1 m2(.y(w[1]), .en(en), .D(A[3:0]), .s(s[1:0]));
    
    mux2x1 m3(.y(Y), .en(en), .x(w), .s(s[2]));

endmodule
