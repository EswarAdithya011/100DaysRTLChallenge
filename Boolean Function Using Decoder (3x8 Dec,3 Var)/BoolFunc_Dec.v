`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 18.11.2024 22:38:30
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


module BoolFunc_Dec(output F, input A,B,C);
wire [2:0]w;
wire [7:0]y;

    //Logic
    Decoder_8x3 D(.y(y), .x({A,B,C}));
    
    or o(F,y[1],y[3],y[5]);
    
endmodule
