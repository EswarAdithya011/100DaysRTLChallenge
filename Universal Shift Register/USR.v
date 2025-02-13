`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 06.02.2025 13:49:42
// Design Name: 
// Module Name: USR
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


module USR(output [3:0]A, input [3:0]I, input [1:0]s, input clr,clk,SL,SR);
wire [3:0]muxout;
    //Logic
    mux4x1 M0(.y(muxout[0]), .D({I[3],A[2],SR,A[3]}),   .s(s), .en(1'b1));
    mux4x1 M1(.y(muxout[1]), .D({I[2],A[1],A[3],A[2]}), .s(s), .en(1'b1));
    mux4x1 M2(.y(muxout[2]), .D({I[1],A[0],A[2],A[1]}), .s(s), .en(1'b1));
    mux4x1 M3(.y(muxout[3]), .D({I[0],SL,A[1],A[0]}),   .s(s), .en(1'b1));
    
    DFlipFlop D0(.Q(A[3]), .D(muxout[0]), .clk(clk), .clr(clr));
    DFlipFlop D1(.Q(A[2]), .D(muxout[1]), .clk(clk), .clr(clr));
    DFlipFlop D2(.Q(A[1]), .D(muxout[2]), .clk(clk), .clr(clr));
    DFlipFlop D3(.Q(A[0]), .D(muxout[3]), .clk(clk), .clr(clr));
      
endmodule
