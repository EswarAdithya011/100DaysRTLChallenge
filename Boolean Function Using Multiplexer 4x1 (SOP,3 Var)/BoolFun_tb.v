`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 01.12.2024 15:11:01
// Design Name: 
// Module Name: BoolFun_tb
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


module BoolFun_tb();
reg A,B,C;
wire F;
integer i = 0;
BoolFun DUT(.A(A), .B(B), .C(C), .F(F));
    
    initial begin   
        $monitor("Input(A,B,C) = %b%b%b || Output(F) = %b",A,B,C,F);
        
        while(i<8)  begin
             {A,B,C} = i;
             #10;
             i = i + 1'b1;
            end
          $finish;
       end
             
endmodule
