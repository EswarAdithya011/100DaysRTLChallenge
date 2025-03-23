`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 23.03.2025 21:06:50
// Design Name: 
// Module Name: SeqCounter
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


module SeqCounter(output [2:0]Q, input clk, rst);

    //Logic
    TFlipFlop T0(.Q(Q[0]), .T((Q[0] & Q[2]) | (~Q[0] & ~Q[1] & ~Q[2])), .clk(~clk), .rst(rst));
    TFlipFlop T1(.Q(Q[1]), .T((~Q[0] & Q[1]) | (Q[0] & ~Q[1] & ~Q[2])), .clk(~clk), .rst(rst));
    TFlipFlop T2(.Q(Q[2]), .T((Q[1] & Q[2]) | (~Q[0] & Q[2]) | (Q[0] & Q[1] & ~Q[2])), .clk(~clk), .rst(rst));
        
endmodule
