`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 01.12.2024 14:35:08
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

BoolFun DUT(.A(A), .B(B), .C(C), .F(F));

    initial begin
        $monitor("Input(A,B,C) = %b%b%b || Output(F) = %b",A,B,C,F);
        
        {A,B,C} = 0;
            repeat(8)   begin
                #10 {A,B,C} = {A,B,C} + 1;
                    end
                $finish;
            end
            
endmodule
