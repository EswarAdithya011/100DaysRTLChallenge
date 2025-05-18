`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 18.05.2025 18:10:53
// Design Name: 
// Module Name: CSA
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


module CSA(output [3:0]sum, output cout, input [3:0]A, B, input cin);
    wire [9:0]w;

    RCA R0(.S(w[3:0]), .Cout(w[8]), .A(A), .B(B), .Cin(1'b0));
    RCA R1(.S(w[7:4]), .Cout(w[9]), .A(A), .B(B), .Cin(1'b1));

    mux2x1 M0(.y(sum[0]), .x({w[4], w[0]}), .s(cin), .en(1'b1));
    mux2x1 M1(.y(sum[1]), .x({w[5], w[1]}), .s(cin), .en(1'b1));
    mux2x1 M2(.y(sum[2]), .x({w[6], w[2]}), .s(cin), .en(1'b1));
    mux2x1 M3(.y(sum[3]), .x({w[7], w[3]}), .s(cin), .en(1'b1));
    mux2x1 M4(.y(cout),   .x({w[9], w[8]}), .s(cin), .en(1'b1));

endmodule

