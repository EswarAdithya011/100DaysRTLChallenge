`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2024 20:39:45
// Design Name: 
// Module Name: AOI_4input
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


module AOI_4input(output y, input a,b,c,d);
wire w1,w2;

//Logic
and A1(w1,a,b);
and A2(w2,c,d);
nor A3(y,w1,w2);

endmodule
