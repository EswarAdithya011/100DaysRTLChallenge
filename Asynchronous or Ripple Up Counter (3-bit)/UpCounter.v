`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 15.03.2025 22:13:49
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

  JKFlipFlop JK0(.J(1'b1), .K(1'b1), .Q(Qa), .clk(clk), .rst(rst));
  JKFlipFlop JK1(.J(1'b1), .K(1'b1), .Q(Qb), .clk(Qa), .rst(rst));
  JKFlipFlop JK2(.J(1'b1), .K(1'b1), .Q(Qc), .clk(Qb), .rst(rst));

endmodule

