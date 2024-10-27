`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2024 22:15:30
// Design Name: 
// Module Name: Squarer_ckt
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


module Squarer_ckt(output y0,y1,y2,y3,y4,y5,input a0,a1,a2);
wire w1,w2;
wire a0_b,a1_b,a2_b;

//Logic
    buf D0(y0,a0);
    and D1(y1,a2,0);
    not D2(a0_b,a0);
    not D3(a1_b,a1);
    not D4(a2_b,a2);
    and D5(y2,a0_b,a1);
    xor D6(w1,a1,a2);
    and D7(y3,w1,a0);
    or D8(w2,a1_b,a0);
    and D9(y4,w2,a2);
    and D10(y5,a2,a1);
    
endmodule
