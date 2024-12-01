`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 01.12.2024 15:10:49
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

    mux4x1 m(.y(F), .D({~C,C,C,C}), .s({A,B}), .en(1'b1));           // F(A,B,C) = m(1,3,5,6) Considering C as Data I/P and B,C as Select Lines
    
endmodule
