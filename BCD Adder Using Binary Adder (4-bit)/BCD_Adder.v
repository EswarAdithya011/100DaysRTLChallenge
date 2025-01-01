`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 01.01.2025 22:40:04
// Design Name: 
// Module Name: BCD_Adder
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


module BCD_Adder(output [3:0] S, input [3:0] A, B);
wire [7:0] w;

RCA Add1(.S(w[6:3]), .Cout(w[0]), .A(A), .B(B), .Cin(1'b0));

and G1(w[1], w[5], w[4]);
and G2(w[2], w[6], w[4]);
or G3(w[7], w[2], w[1], w[0]);

RCA Add2(.S(S), .Cout(), .A(w[6:3]), .B({1'b0, {2{w[7]}}, 1'b0}), .Cin(1'b0));

endmodule
