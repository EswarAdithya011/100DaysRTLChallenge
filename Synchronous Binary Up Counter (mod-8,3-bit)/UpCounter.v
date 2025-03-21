`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 21.03.2025 22:57:51
// Design Name: 
// Module Name: UpCounter
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


module UpCounter(output Qa, Qb, Qc, input clk,clr);
wire w;

    //Logic
    and(w, Qa, Qb);
    
    JKFlipFlop JK0(.Q(Qa), .J(1'b1), .K(1'b1), .clk(~clk), .rst(clr));
    JKFlipFlop JK1(.Q(Qb), .J(Qa), .K(Qa), .clk(~clk), .rst(clr));
    JKFlipFlop JK2(.Q(Qc), .J(w), .K(w), .clk(~clk), .rst(clr));
    
endmodule
