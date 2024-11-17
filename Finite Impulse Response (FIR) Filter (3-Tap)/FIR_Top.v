`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date:
// Design Name: 
// Module Name: Braun_Multiplier
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


module FIR_Top(input clk, input [7:0]Xin, H0,H1,H2,output reg [15:0]Yout);

wire [15:0] M0,M1,M2,add_out1,add_out2;
wire [15:0] Q1,Q2;
       
Braun_Multiplier BM1(.a(Xin), .b(H2), .p(M2));
Braun_Multiplier BM2(.a(Xin), .b(H1), .p(M1));
Braun_Multiplier BM3(.a(Xin), .b(H0), .p(M0));

RCA_16bit RCA1(.sum(add_out1), .a(Q1), .b(M1));
RCA_16bit RCA2(.sum(add_out2), .a(Q2), .b(M0));

d_ff DFF1(.clk(clk), .d(M2), .q(Q1));
d_ff DFF2(.clk(clk), .d(add_out1), .q(Q2));

always@ (posedge clk)
Yout <= add_out2;

endmodule
