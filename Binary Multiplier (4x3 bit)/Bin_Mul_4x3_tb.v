`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 18.11.2024 10:42:25
// Design Name: 
// Module Name: Bin_Mul_4x3_tb
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


module Bin_Mul_4x3_tb();
reg [2:0]A;
reg [3:0]B;
wire [6:0]C;

Bin_Mul_4x3 DUT(C,A,B);

    initial begin
        $monitor("Input A = %d, B = %d | Output C = %d",A,B,C);
        
        A = 3'b000; B = 4'b0010; #10;
        A = 3'b001; B = 4'b1100; #10;
        A = 3'b010; B = 4'b1010; #10;
        A = 3'b011; B = 4'b0101; #10;
        A = 3'b100; B = 4'b0011; #10;
        A = 3'b101; B = 4'b0111; #10;
        A = 3'b110; B = 4'b1110; #10;
        A = 3'b111; B = 4'b1111; #10;
        $finish;
            end   

endmodule
