`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 25.01.2025 10:51:39
// Design Name: 
// Module Name: JKFlipFlop_tb
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


module JKFlipFlop_tb;
reg J,K,clk;
wire Q,Qb;

JKFlipFlop DUT(.J(J), .K(K), .clk(clk), .Q(Q), .Qb(Qb));

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
       end
       
    initial begin
        J = 1'b0; K = 1'b0; #10;
        J = 1'b0; K = 1'b1; #10;
        J = 1'b1; K = 1'b0; #10;
        J = 1'b1; K = 1'b1; #10;
        J = 1'b0; K = 1'b0; #10;
        J = 1'b1; K = 1'b0; #10;
        #10; $finish;
       end
       
     always@ (clk or J or K)    begin
        $display("Inputs J = %b, K = %b, Clock(clk) = %b || Outputs Q = %b, Qb = %b",J,K,clk,Q,Qb);
      end
            
endmodule
