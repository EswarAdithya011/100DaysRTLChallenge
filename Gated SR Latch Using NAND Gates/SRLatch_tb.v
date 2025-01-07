`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 07.01.2025 23:54:44
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
reg S,R,en;
wire Q,Qb;

SRLatch DUT(.S(S), .R(R), .en(en), .Q(Q), .Qb(Qb));

    initial begin
        $monitor("Inputs S = %b, R = %b Enable = %b || Output Q = %b, Qb = %b",S,R,en,Q,Qb);
        
        en = 1'b0;
        S = 1'b0; R = 1'b0; #10;    
        S = 1'b0; R = 1'b1; #10;
        S = 1'b1; R = 1'b0; #10;
        S = 1'b1; R = 1'b1; #10;
        
        en = 1'b1;
        S = 1'b0; R = 1'b0; #10;    
        S = 1'b0; R = 1'b1; #10;
        S = 1'b1; R = 1'b0; #10;
        S = 1'b1; R = 1'b1; #10;
        $finish;
      end
         
endmodule
