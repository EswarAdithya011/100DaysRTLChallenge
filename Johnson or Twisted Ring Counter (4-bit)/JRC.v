`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2025 23:47:32
// Design Name: 
// Module Name: JRC
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


module JRC(output Qa, Qb, Qc, Qd, input clk, clr);
wire Qd_bar;

    //Logic
    DFlipFlop D0(.Q(Qa), .D(Qd_bar), .clk(clk), .clr(clr));
    DFlipFlop D1(.Q(Qb), .D(Qa), .clk(clk), .clr(clr));
    DFlipFlop D2(.Q(Qc), .D(Qb), .clk(clk), .clr(clr));
    DFlipFlop D3(.Q(Qd), .Qb(Qd_bar), .D(Qc), .clk(clk), .clr(clr));
    
endmodule
