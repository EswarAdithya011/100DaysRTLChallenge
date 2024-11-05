`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 05.11.2024 23:43:38
// Design Name: 
// Module Name: Gray2Binary_tb
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


module Gray2Binary_tb();
reg [7:0] G;
wire [7:0] B;

Gray2Binary DUT(B,G);

    initial begin
                   
            $monitor("Input Binary = %b | Output = %b",B,G);
            
            // Max value is 255
            G = 0;   #10;
            G = 160; #10;
            G = 255; #10;
            G = 111; #10;
            G = 123; #10;
            G = 10;  #10;
            G = 79;  #10;
            G = 69;  #10;
            G = 212; #10;
            G = 53;  #10;
            G = 38;  #10;
            $finish;
         end
endmodule
