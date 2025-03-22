`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 22.03.2025 21:09:38
// Design Name: 
// Module Name: DownCounter
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


module DownCounter(output Qa, Qb, Qc, Qd, input clk,clr);

    //Logic
    JKFlipFlop F0(.Q(Qa), .J(1'b1), .K(1'b1), .clk(~clk), .rst(clr));
    JKFlipFlop F1(.Q(Qb), .J(~Qa), .K(~Qa), .clk(~clk), .rst(clr));
    JKFlipFlop F2(.Q(Qc), .J(~Qa && ~Qb), .K(~Qa && ~Qb), .clk(~clk), .rst(clr));
    JKFlipFlop F3(.Q(Qd), .J(~Qa && ~Qb && ~Qc), .K(~Qa && ~Qb && ~Qc), .clk(~clk), .rst(clr));
    
endmodule
