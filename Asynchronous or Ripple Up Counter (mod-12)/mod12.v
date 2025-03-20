`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 20.03.2025 10:38:02
// Design Name: 
// Module Name: mod12
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


module mod12(output reg [3:0] Q, input clk, clr);

    //Logic
    always @(posedge clk or posedge clr) begin
        if (clr)
            Q <= 4'b0000;
        else if (Q == 4'b1011)
            Q <= 4'b0000;
        else
            Q <= Q + 1;
    end
    
endmodule



