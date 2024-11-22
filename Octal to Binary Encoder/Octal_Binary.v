`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 22.11.2024 22:28:25
// Design Name: 
// Module Name: Octal_Binary
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


module Octal_Binary(output A,B,C, input [7:0]D);

    //Logic
    assign A = D[4] | D[5] | D[6] | D[7];
    assign B = D[2] | D[3] | D[6] | D[7];
    assign C = D[1] | D[3] | D[5] | D[7];
    

endmodule
