`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 05.11.2024 22:48:29
// Design Name: 
// Module Name: Binary2Gray_tb
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


module Binary2Gray_tb();
reg [7:0] B;
wire [7:0] G;

Binary2Gray DUT(G,B);

    initial begin
    
         $monitor("Input B = %b, Output G = %b",B,G); 
         
           B = 0; #15;
           
            repeat(10) begin
                B = B + 25;
                #10;
                end
           $finish;
    end    
endmodule
