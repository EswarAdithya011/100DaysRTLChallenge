`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2025 13:39:48
// Design Name: 
// Module Name: BCD_7Segment_top
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


module BCD_7Segment_top(seg, an, sw);
output [6:0]seg;
output reg an = 8'b00000000;
input [3:0]sw;
 
 BCD_7Segment UUT(
        .a(seg[0]), 
        .b(seg[1]), 
        .c(seg[2]), 
        .d(seg[3]), 
        .e(seg[4]), 
        .f(seg[5]), 
        .g(seg[6]), 
        .B(sw)
    );

endmodule
