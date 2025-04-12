`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 12.04.2025 16:52:48
// Design Name: 
// Module Name: ROM16x16
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


module ROM16x16(output reg [15:0] Data, input [3:0] Addr);
reg [15:0] ROM [15:0];

    //Logic
    initial begin
        ROM[0]  = 16'h0001;
        ROM[1]  = 16'h0002;
        ROM[2]  = 16'h0004;
        ROM[3]  = 16'h0008;
        ROM[4]  = 16'h0010;
        ROM[5]  = 16'h0020;
        ROM[6]  = 16'h0040;
        ROM[7]  = 16'h0080;
        ROM[8]  = 16'h0100;
        ROM[9]  = 16'h0200;
        ROM[10] = 16'h0400;
        ROM[11] = 16'h0800;
        ROM[12] = 16'h1000;
        ROM[13] = 16'h2000;
        ROM[14] = 16'h4000;
        ROM[15] = 16'h8000;
    end
    
    always@ (Addr)  begin
        Data <= ROM[Addr];
    end
    
endmodule
