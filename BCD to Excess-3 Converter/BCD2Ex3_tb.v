`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 06.11.2024 22:54:22
// Design Name: 
// Module Name: BCD2Ex3_tb
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


module BCD2Ex3_tb();
reg [3:0] B;
wire [3:0] E;

BCD2Ex3 DUT(E,B);

    initial
        begin
            $monitor("Input B = %b, Output E",B,E);
            
            B = 4'b0; #10;
            repeat(9)
                begin
                    B = B + 1'b1;
                    #10;
                end
           $finish;
        end
endmodule
