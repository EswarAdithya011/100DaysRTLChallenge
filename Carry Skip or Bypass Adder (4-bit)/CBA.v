`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2025 14:48:10
// Design Name: 
// Module Name: CBA
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


module CBA (
    input [3:0] A, B,
    input Cin,
    output [3:0] Sum,
    output Cout
);
    wire [3:0] P;
    wire c_temp;
    wire skip;

    RCA rca (.A(A), .B(B), .Cin(Cin), .S(Sum), .Cout(c_temp));

    assign P = A ^ B;
    assign skip = &P; // P[0] & P[1] & P[2] & P[3]

    assign Cout = skip ? Cin : c_temp;
endmodule

