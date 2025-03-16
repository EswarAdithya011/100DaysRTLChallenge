`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 16.03.2025 23:26:00
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


module UpCounter(output Qc, Qb, Qa, input clk, rst);
wire [1:0] w;

    TFlipFlop T0(.Q(Qa), .Qb(w[0]), .T(1'b1), .clk(clk), .rst(rst));
    TFlipFlop T1(.Q(Qb), .Qb(w[1]), .T(1'b1), .clk(w[0]), .rst(rst));
    TFlipFlop T2(.Q(Qc), .Qb(), .T(1'b1), .clk(w[1]), .rst(rst));

endmodule

