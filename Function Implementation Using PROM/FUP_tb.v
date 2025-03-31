`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2025 22:48:23
// Design Name: 
// Module Name: FUP_tb
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


module FUP_tb;
reg [1:0]A, en;
wire F1, F2;

FUP DUT(.F1(F1), .F2(F2), .en(en), .A(A));

    initial begin
        $monitor("Input Enable(en) = %b, Input(A) = %b || Output F1 = %b, F2 = %b",en, A, F1, F2);
        
        en = 1'b0; #2;
        en = 1'b1;
        
        A = 2'b00;
        repeat(4)   begin
           #4  A = A + 1'b1;
         end
         $finish;
       end
            
endmodule
