`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 19.11.2024 22:22:26
// Design Name: 
// Module Name: FA_Using_Dec
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


module FA_Using_Dec(output sum,carry, input A,B,C);
wire [7:0]y;

Decoder_8x3 D(.y(y), .x({A,B,C}));

or G1(sum,y[1],y[2],y[4],y[7]);
or G2(carry,y[3],y[5],y[6],y[7]);

endmodule
