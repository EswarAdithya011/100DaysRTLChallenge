`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 16.11.2024 23:02:03
// Design Name: 
// Module Name: Bin_Decrementer
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


module Bin_Decrementer(output [3:0]S, output cout, input [3:0]A, input cin);
wire [2:0]c;

    //Logic
    full_adder f1(.a(1'b1), .b(A[0]), .c(cin), .sum(S[0]), .carry(c[0]));
    full_adder f2(.a(1'b1), .b(A[1]), .c(c[0]), .sum(S[1]), .carry(c[1]));
    full_adder f3(.a(1'b1), .b(A[2]), .c(c[1]), .sum(S[2]), .carry(c[2]));
    full_adder f4(.a(1'b1), .b(A[3]), .c(c[2]), .sum(S[3]), .carry(cout));
    
endmodule
