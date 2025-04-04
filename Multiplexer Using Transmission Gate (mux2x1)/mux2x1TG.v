`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 04.04.2025 23:09:07
// Design Name: 
// Module Name: mux2x1TG
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


module mux2x1TG(output Y, input [1:0] I, input s);
wire s_bar;

    not (s_bar, s);

    cmos TG1(Y, I[0], s_bar, s); // Pass I[0] when s = 0
    cmos TG2(Y, I[1], s, s_bar); // Pass I[1] when s = 1

endmodule

