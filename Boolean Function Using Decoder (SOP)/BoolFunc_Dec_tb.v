`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 18.11.2024 22:43:37
// Design Name: 
// Module Name: BoolFunc_Dec_tb
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


module BoolFunc_Dec_tb;
reg A,B,C;
wire F;
integer n;
BoolFunc_Dec DUT(.F(F), .A(A), .B(B), .C(C));

    initial begin
        $monitor("Input A = %b, B = %b, C = %b || Output F = %b",A,B,C,F);
        
        for(n = 0; n < 8; n = n + 1)  begin
            {A,B,C} = n;
                #10;
                end
              $finish;
          end
          
endmodule
