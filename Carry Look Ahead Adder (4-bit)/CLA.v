`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 16.11.2024 20:56:02
// Design Name: 
// Module Name: CLA
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


module CLA(output [3:0]s, output cout, input [3:0]A,B);
wire [3:0]P,G,C;

    //Logic
    assign P = A ^ B,
           G = A & B;
    
    assign C[0] = G[0],
           C[1] = G[1]| (G[0] & P[1]),
           C[2] = G[2]| (G[1] | G[0] & P[1]) & P[2],
           C[3] = G[3] | (G[2] | (G[1] | G[0] & P[1]) & P[2]) & P[3];
           
    assign s[0] = P[0],
                  s[1] = P[1] ^ C[0],
                  s[2] = P[2] ^ C[1],
                  s[3] = P[3] ^ C[2];
                  
    assign cout = C[3];       

endmodule
