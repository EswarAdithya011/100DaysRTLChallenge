`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 03.01.2025 22:55:54
// Design Name: 
// Module Name: BoolFunc_POS_tb
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


module BoolFunc_POS_tb();
reg A,B,C,D;
wire Y;

BoolFunc_POS DUT(.Y(Y), .A(A), .B(B), .C(C), .D(D));

    initial begin
      $monitor("Input Variables A,B,C,D are %b%b%b%b || Output(F) = %b",A,B,C,D,Y);
      
        {A,B,C,D} = 4'b0;
            repeat(16)  begin
                #10;
                {A,B,C,D} = {A,B,C,D} + 1'b1;
              end
              $finish;
          end
 
endmodule
