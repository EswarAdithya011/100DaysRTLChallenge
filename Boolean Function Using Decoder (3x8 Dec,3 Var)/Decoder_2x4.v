`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2024 19:54:33
// Design Name: 
// Module Name: Decoder_2x4
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


module Decoder_2x4(output [3:0] y, input en, input [1:0] x);

    // Logic
    assign y[0] = (en & ~x[1] & ~x[0]);
    assign y[1] = (en & ~x[1] & x[0]);
    assign y[2] = (en & x[1] & ~x[0]);
    assign y[3] = (en & x[1] & x[0]);

endmodule
