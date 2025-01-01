`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 01.01.2025 22:40:23
// Design Name: 
// Module Name: BCD_Adder_tb
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


module BCD_Adder_tb();
reg [3:0]A,B;
wire [3:0]S;

BCD_Adder DUT(.S(S), .A(A), .B(B));

    initial begin
        A = 4'b0110; B = 4'b1001; #10;
        A = 4'b0100; B = 4'b1011; #10;
        A = 4'b0110; B = 4'b0000; #10;
        A = 4'b0000; B = 4'b0001; #10;
        A = 4'b0111; B = 4'b1001; #10;
        A = 4'b0100; B = 4'b1001; #10;
        A = 4'b0101; B = 4'b1110; #10;
        A = 4'b0011; B = 4'b1000; #10;
            $finish;
         end
     
    initial begin
        $monitor("Input Data A = %b, B = %b, Output Sum(S) = %b", A,B,S);
       end
         
endmodule
