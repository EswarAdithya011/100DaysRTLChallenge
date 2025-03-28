`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 27.03.2025 10:45:12
// Design Name: 
// Module Name: Mod6
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


module Mod6(output Qa, Qb, Qc, Qd, Qe, Qf, input clk, clr, pre);

        //Logic
        DFlipFlop D0(.Q(Qa), .D(Qf), .clk(~clk), .clr(clr), .pre(pre));
        DFlipFlop D1(.Q(Qb), .D(Qa), .clk(~clk), .clr(clr), .pre());
        DFlipFlop D2(.Q(Qc), .D(Qb), .clk(~clk), .clr(clr), .pre());
        DFlipFlop D3(.Q(Qd), .D(Qc), .clk(~clk), .clr(clr), .pre());
        DFlipFlop D4(.Q(Qe), .D(Qd), .clk(~clk), .clr(clr), .pre());
        DFlipFlop D5(.Q(Qf), .D(Qe), .clk(~clk), .clr(clr), .pre());
        
endmodule
