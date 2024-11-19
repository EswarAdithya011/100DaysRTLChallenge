`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2024 20:42:17
// Design Name: 
// Module Name: Decoder_8x3
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


module Decoder_8x3(output [7:0]y, input [2:0]x);
wire w;

    //Logic
    not n(w,x[2]);
    Decoder_2x4 D1(y[3:0],w,x[1:0]);
    Decoder_2x4 D2(y[7:4],x[2],x[1:0]);
    
endmodule
