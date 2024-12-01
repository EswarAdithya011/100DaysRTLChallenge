`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2024 14:34:36
// Design Name: 
// Module Name: BoolFun
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


module BoolFun(output F, input A,B,C);

    mux8x1 m1(.Y(F), .A(8'b01101010), .s({A,B,C}), .en(1'b1));  // F(A,B,C) = m(1,3,5,6)
    
endmodule
