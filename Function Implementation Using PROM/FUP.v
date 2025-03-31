`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2025 22:48:02
// Design Name: 
// Module Name: FUP
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


module FUP(output F1, F2, input [1:0]A, input en);
wire [3:0]y;

    //Logic
    
    Decoder_2x4 D0(.y(y), .en(en), .x(A));
    
    assign F1 = y[1] | y[2],
           F2 = y[0] | y[1] | y[3];
           
endmodule
