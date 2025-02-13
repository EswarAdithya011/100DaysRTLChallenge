`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 13.02.2025 10:38:37
// Design Name: 
// Module Name: DFlipFlop
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


module DFlipFlop(output reg Q, output Qb, input D, clk, clr);
    always @(posedge clk or posedge clr)  
        if (clr)  
            Q <= 1'b0;  
        else  
            Q <= D;  
    assign Qb = ~Q;
endmodule

