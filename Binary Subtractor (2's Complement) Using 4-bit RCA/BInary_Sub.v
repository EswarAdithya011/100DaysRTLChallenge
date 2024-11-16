`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 10.11.2024 12:51:17
// Design Name: 
// Module Name: BInary_Sub
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


module Binary_Sub(output [3:0] S, output cout, input [3:0] A, B, input cin);
    wire [5:0] w; 
    wire [3:0] p, q; 
    wire [3:0] r = 4'b0000;  

    not n1(w[1], B[0]);
    not n2(w[2], B[1]);
    not n3(w[3], B[2]);
    not n4(w[4], B[3]);

  
    RCA R1(.Cout(w[5]), .S(p), .Cin(cin), .A(A), .B({w[4], w[3], w[2], w[1]}));

    not n5(w[0], w[5]);

    xor x1(q[3], p[3], w[0]);
    xor x2(q[2], p[2], w[0]);
    xor x3(q[1], p[1], w[0]);
    xor x4(q[0], p[0], w[0]);

    RCA R2(.Cout(cout), .S(S), .Cin(w[0]), .A(q), .B(r)); 
    
endmodule
