`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 18.03.2025 12:22:15
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


module DownCounter(output Qc, Qb, Qa, input clk, rst);
wire [1:0]w;

    TFlipFlop TF0(.Q(Qa), .Qb(w[0]), .T(1'b1), .clk(~clk), .rst(rst));
    TFlipFlop TF1(.Q(Qb), .Qb(w[1]), .T(1'b1), .clk(~w[0]), .rst(rst));
    TFlipFlop TF2(.Q(Qc), .Qb(), .T(1'b1), .clk(~w[1]), .rst(rst));
    
endmodule
