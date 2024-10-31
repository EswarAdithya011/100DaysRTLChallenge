`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2024 13:32:34
// Design Name: 
// Module Name: comp_4bit_tb
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


module comp_4bit_tb();
reg [3:0]A,B;
wire E,G,L;

comp_4bit DUT(E,G,L,A,B);

    initial
        begin
            $monitor("Inputs A = %d, B = %d, Outputs E = %b, G = %b, L = %b",A,B,E,G,L);
                
                    A = 4'b1010; B = 4'b1000;
             #10;   A = 4'b0110; B = 4'b0110;
             #10;   A = 4'b0100; B = 4'b1110;
             #10;   A = 4'b1111; B = 4'b0001;
             #10;   A = 4'b0000; B = 4'b0000;
             #10;   A = 4'b1101; B = 4'b1111;
         #10 $finish;
        end
        
endmodule
