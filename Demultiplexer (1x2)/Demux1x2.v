`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 05.01.2025 15:05:01
// Design Name: 
// Module Name: Demux1x2
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


module Demux1x2(output [1:0]I, input s,D,en);

    //Logic
    assign I[0] = D & ~s & en,
           I[1] = D & s & en;
           
endmodule
