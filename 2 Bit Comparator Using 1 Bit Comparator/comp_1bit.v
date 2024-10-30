`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2024 21:27:25
// Design Name: 
// Module Name: comp_1bit
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


module comp_1bit(output E0,G0,L0, input A0,B0);
wire w1,w2;

//Logic
xnor x(E0,A0,B0);
not n1(w1,B0);
and a1(G0,A0,w1);
not n2(w2,A0);
and a2(L0,w2,B0);

endmodule
