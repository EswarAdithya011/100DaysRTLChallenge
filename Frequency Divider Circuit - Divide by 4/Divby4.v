`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 26.03.2025 10:35:58
// Design Name: 
// Module Name: Divby4
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


module Divby4(output Qa, Qb, input clk, rst);

    //Logic
    TFlipFlop T0(.Q(Qa), .T(1'b1), .clk(~clk), .rst(rst));
    TFlipFlop T1(.Q(Qb), .T(1'b1), .clk(~Qa), .rst(rst));
    
endmodule
