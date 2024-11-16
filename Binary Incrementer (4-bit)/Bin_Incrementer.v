`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 16.11.2024 22:30:06
// Design Name: 
// Module Name: Bin_Incrementer
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


module Bin_Incrementer(output [3:0]S, output cout, input [3:0]A);
wire [2:0]c;

    //Logic
    half_adder h1(.a(1'b1), .b(A[0]), .sum(S[0]), .carry(c[0]));
    half_adder h2(.a(c[0]), .b(A[1]), .sum(S[1]), .carry(c[1]));
    half_adder h3(.a(c[1]), .b(A[2]), .sum(S[2]), .carry(c[2]));
    half_adder h4(.a(c[2]), .b(A[3]), .sum(S[3]), .carry(cout));
    
endmodule
