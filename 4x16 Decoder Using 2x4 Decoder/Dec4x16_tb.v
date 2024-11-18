`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 18.11.2024 21:45:19
// Design Name: 
// Module Name: Dec4x16_tb
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


module Dec4x16_tb;
    reg [3:0]X;
    wire [15:0] Y;
    integer i;

    Dec4x16 DUT(.Y(Y), .X(X));

    initial begin   
        $monitor("Input X = %b || Output Y = %b", X, Y);

        for (i = 0; i < 16; i = i + 1) begin
            X = i;
            #10;
        end
        $finish;
    end
endmodule
