`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya 
// 
// Create Date: 18.11.2024 21:44:56
// Design Name: 
// Module Name: Dec4x16
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


module Dec4x16(output [15:0] Y, input [3:0]X);
    wire [3:0] w;

    // Logic
    Decoder_2x4 D0(.y(w[3:0]), .en(1'b1), .x({X[3:2]})); 
    Decoder_2x4 D1(.y(Y[3:0]), .en(w[0]), .x({X[1:0]}));
    Decoder_2x4 D2(.y(Y[7:4]), .en(w[1]), .x(X[1:0]));
    Decoder_2x4 D3(.y(Y[11:8]), .en(w[2]), .x(X[1:0]));
    Decoder_2x4 D4(.y(Y[15:12]), .en(w[3]), .x(X[1:0]));

endmodule

