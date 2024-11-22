`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 22.11.2024 22:28:39
// Design Name: 
// Module Name: Octal_Binary_tb
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


module Octal_Binary_tb();
reg [7:0]D;
wire A,B,C;

Octal_Binary DUT(.A(A), .B(B), .C(C), .D(D));

    initial begin
        $monitor("Input D = %b || Output A,B,C = %b",D,A,B,C);
        
       D = 8'b00000001; #10;
       D = 8'b00000010; #10;
       D = 8'b00000100; #10;
       D = 8'b00001000; #10;
       D = 8'b00010000; #10;
       D = 8'b00100000; #10;
       D = 8'b01000000; #10;
       D = 8'b10000000; #10;     
       $finish;  
        end
        
endmodule
