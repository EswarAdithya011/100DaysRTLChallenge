`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 21.03.2025 23:32:11
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



module UpCounter(output Qa, Qb, Qc, Qd, input clk,clr);
wire w1,w2;

    //Logic
    and A0(w1, Qa, Qb);
    and A1(w2, w1, Qc);
    
    JKFlipFlop JK0(.Q(Qa), .J(1'b1), .K(1'b1), .clk(~clk), .rst(clr));
    JKFlipFlop JK1(.Q(Qb), .J(Qa), .K(Qa), .clk(~clk), .rst(clr));
    JKFlipFlop JK2(.Q(Qc), .J(w1), .K(w2), .clk(~clk), .rst(clr));
    JKFlipFlop JK3(.Q(Qd), .J(w2), .K(w2), .clk(~clk), .rst(clr));    
    
endmodule
