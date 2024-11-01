`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2024 19:54:52
// Design Name: 
// Module Name: Decoder_2x4_tb
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


module Decoder_2x4_tb();
reg en;
reg [1:0]x;
wire [3:0]y;

Decoder_2x4 DUT(y,en,x);

    initial
        begin
            $monitor("Inputs en = %b, x = %b, Output y = %b",en,x,y);
            
                 en = 1'b0; x = 2'bxx;
        #15      en = 1'b1; x = 2'b00;
         #10     en = 1'b1; x = 2'b01;
         #10     en = 1'b1; x = 2'b10;
         #10     en = 1'b1; x = 2'b11;
         #10 $finish;
        
        end
        
endmodule
