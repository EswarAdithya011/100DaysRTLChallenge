`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2024 21:28:34
// Design Name: 
// Module Name: comp_1bit_tb
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


module comp_1bit_tb();
reg A0,B0;
wire E0,L0,G0;

comp_1bit DUT(E0,G0,L0,A0,B0);

    initial
        begin
            $monitor("Inputs A0 = %b, B0 = %b, Outputs G0 = %b, E0 = %b, L0 = %b",A0,B0,G0,E0,L0);
           A0 = 1'b0; B0 = 1'b0;
       #10 A0 = 1'b0; B0 = 1'b1;
       #10 A0 = 1'b1; B0 = 1'b0;
       #10 A0 = 1'b1; B0 = 1'b1;
       #10 $finish;
        end
        
endmodule
