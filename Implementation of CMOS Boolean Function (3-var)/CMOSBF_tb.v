`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 04.04.2025 00:14:38
// Design Name: 
// Module Name: CMOSBF_tb
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


module CMOSBF_tb;
reg A, B, C;
wire Y;
integer i;

CMOSBF DUT(.A(A), .B(B), .C(C), .Y(Y));

    initial begin
        $monitor("Input A = %b, B = %b, C = %b || Output(Y) = %b", A, B, C, Y);
        
        for(i = 3'b0; i < 8; i = i + 1) begin
            {A,B,C} = i;
            #10;
          end
       $finish;
     end
     
endmodule
