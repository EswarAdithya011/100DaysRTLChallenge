`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 11.11.2024 18:21:23
// Design Name: 
// Module Name: AS_4bit
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


module AS_4bit(output [3:0] s, output cout, input [3:0] A, B, input M);
  wire [3:0] p;
  wire c0, c1, c2;

  // Logic
  xor x1(p[3], M, B[3]);
  xor x2(p[2], M, B[2]);
  xor x3(p[1], M, B[1]);
  xor x4(p[0], M, B[0]);

  full_adder FA1(.sum(s[0]), .carry(c0), .a(A[0]), .b(p[0]), .c(M));
  full_adder FA2(.sum(s[1]), .carry(c1), .a(A[1]), .b(p[1]), .c(c0));
  full_adder FA3(.sum(s[2]), .carry(c2), .a(A[2]), .b(p[2]), .c(c1));
  full_adder FA4(.sum(s[3]), .carry(cout), .a(A[3]), .b(p[3]), .c(c2));
  
endmodule