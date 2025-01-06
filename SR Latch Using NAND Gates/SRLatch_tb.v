`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 06.01.2025 23:28:59
// Design Name: 
// Module Name: SRLatch_tb
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


module SRLatch_tb();
reg S,R;
wire Q,Qb;

SRLatch DUT(.S(S), .R(R), .Q(Q), .Qb(Qb));

    initial begin
        $monitor("Inputs S = %b, R = %b || Outputs Q = %b, Qb = %b",S,R,Q,Qb);
        
        S = 1'b0; R = 1'b0; #10;
        S = 1'b0; R = 1'b1; #10;
        S = 1'b1; R = 1'b0; #10;
        S = 1'b1; R = 1'b1; #10;
        $finish;
      end
      
endmodule
