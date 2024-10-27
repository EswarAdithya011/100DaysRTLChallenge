`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2024 19:54:45
// Design Name: 
// Module Name: Full_Subtractor
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


module Full_Subtractor(output D,Bout, input A,B,Bin);
wire w1,w2,w3;

//Logic
Half_Subtractor HS1(.A(A),.Bin(B),.D(w1),.Bout(w3));
Half_Subtractor HS2(.A(w1),.Bin(Bin),.D(D),.Bout(w2));

or or1(Bout,w2,w3);

endmodule
