`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 09.04.2025 21:37:44
// Design Name: 
// Module Name: LFSR
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


module LFSR(output [3:0] out, input clk, rst);
    wire feedback;
    wire [3:0] q;

    assign feedback = q[3] ^ q[2];

    DFlipFlop DFF0 (.Q(q[0]), .D(feedback), .clk(clk), .clr(rst));
    DFlipFlop DFF1 (.Q(q[1]), .D(q[0]),     .clk(clk), .clr(rst));
    DFlipFlop DFF2 (.Q(q[2]), .D(q[1]),     .clk(clk), .clr(rst));
    DFlipFlop DFF3 (.Q(q[3]), .D(q[2]),     .clk(clk), .clr(rst));

    assign out = q;

endmodule


