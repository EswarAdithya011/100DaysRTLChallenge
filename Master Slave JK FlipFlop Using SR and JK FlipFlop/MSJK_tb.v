`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 25.01.2025 14:46:29
// Design Name: 
// Module Name: MSJK_tb
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


module MSJK_tb();
reg J,K,clk;
wire Q,Qb;

MSJK DUT(.Q(Q), .Qb(Qb), .J(J), .K(K), .clk(clk));

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
      end
      
    initial begin
        $monitor("Inputs J = %b, K = %b, Clock(clk) || Outputs Q = %b, Qb = %b",J,K,clk,Q,Qb);
        
        J = 0; K = 0; #10;
        J = 0; K = 1; #10;
        J = 1; K = 0; #10;
        J = 1; K = 1; #10;
        #20; $finish;
      end
           
endmodule
