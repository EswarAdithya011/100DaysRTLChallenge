`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 05.01.2025 23:30:04
// Design Name: 
// Module Name: Demux1x4
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


module Demux1x4(output [3:0]Y, input D, input [1:0]s);

    //Logic
    Demux1x2 m1(.I(Y[1:0]), .D(D), .s(s[0]), .en(~s[1]));
    Demux1x2 m2(.I(Y[3:2]), .D(D), .s(s[0]), .en(s[1]));
    
endmodule
