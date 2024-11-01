`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2024 20:42:34
// Design Name: 
// Module Name: Decoder_8x3_tb
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


module Decoder_8x3_tb();
reg [2:0]x;
wire [7:0]y;

Decoder_8x3 DUT(y,x);

    initial
        begin
            $monitor("Inputs x = %b, Outputs y = %b, Time = %t",x,y,$time);
            
            x = 3'b000; #10;
            x = 3'b001; #10;
            x = 3'b010; #10;
            x = 3'b011; #10;
            x = 3'b100; #10;
            x = 3'b101; #10;
            x = 3'b110; #10;
            x = 3'b111; #10;
            $finish;
        end
         
endmodule
