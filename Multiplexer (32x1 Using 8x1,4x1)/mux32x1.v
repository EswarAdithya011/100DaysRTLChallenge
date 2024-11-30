`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 30.11.2024 22:22:26
// Design Name: 
// Module Name: mux32x1
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


module mux32x1(output Y, input [31:0]D, input [4:0]s, input en);
wire [3:0]w;

    mux8x1 M1(.Y(w[0]), .A(D[7:0]), .s(s[2:0]), .en(en));
    mux8x1 M2(.Y(w[1]), .A(D[15:8]), .s(s[2:0]), .en(en));
    mux8x1 M3(.Y(w[2]), .A(D[23:16]), .s(s[2:0]), .en(en));
    mux8x1 M4(.Y(w[3]), .A(D[31:24]), .s(s[2:0]), .en(en));
    
    mux4x1 M5(.y(Y), .D(w), .s(s[4:3]), .en(en));

endmodule
