`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 04.04.2025 00:14:23
// Design Name: 
// Module Name: CMOSBF
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


module CMOSBF(output Y, input A, B, C);
wire [6:1]w;
supply1 vdd;
supply0 gnd;

    //Logic
    // Implements the Function F(A,B,C) = AB + BC + CA
    pmos p1(w[6], vdd, A);
    pmos p2(w[6], vdd, B);
    pmos p3(w[5], w[6], B);
    pmos p4(w[5], w[6], C);
    pmos p5(w[1], w[5], C);
    pmos p6(w[1], w[5], A);
    
    nmos n1(w[1], w[2], A);
    nmos n2(w[2], gnd, B);
    nmos n3(w[1], w[3], B);
    nmos n4(w[3], gnd, C);
    nmos n5(w[1], w[4], C);
    nmos n6(w[4], gnd, A);
    
    pmos p7(Y, vdd, w[1]);
    nmos n7(Y, gnd, w[1]);
    
endmodule
