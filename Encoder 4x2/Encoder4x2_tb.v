`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 22.11.2024 21:30:40
// Design Name: 
// Module Name: Encoder4x2_tb
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


module Encoder4x2_tb();
reg [3:0]Y;
wire [1:0]A;
integer i;
Encoder4x2 DUT(.Y(Y), .A(A));

    initial begin
        $monitor("Input Y = %b | Output A = %b",Y,A);
        
        for(i = 0;i < 16; i = i + 1) begin
            Y = i;
            #10;
            end
        $finish;
       end        
        
endmodule
