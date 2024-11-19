`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 19.11.2024 22:22:42
// Design Name: 
// Module Name: FA_Using_Dec_tb
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


module FA_Using_Dec_tb();
reg A,B,C;
wire sum,carry;
integer i;
FA_Using_Dec DUT(.A(A), .B(B), .C(C), .sum(sum), .carry(carry));

        initial begin
            $monitor("Inputs A = %b, B = %b, C = %b || Output sum = %b, carry = %b",A,B,C,sum,carry);
            
            for( i = 1'b0; i < 8; i = i + 1)    begin
                {A,B,C} = i;
                #10;
            end
            $finish;
          end
endmodule
