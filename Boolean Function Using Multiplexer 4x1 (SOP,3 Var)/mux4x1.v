`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 24.11.2024 01:05:05
// Design Name: 
// Module Name: mux4x1
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


module mux4x1(output y, input [3:0] D, input [1:0] s, input en);
    assign y = en ? (s == 2'b00 ? D[0] :
                     s == 2'b01 ? D[1] :
                     s == 2'b10 ? D[2] :
                     s == 2'b11 ? D[3] : 1'bx) : 1'bx;
                     
endmodule

