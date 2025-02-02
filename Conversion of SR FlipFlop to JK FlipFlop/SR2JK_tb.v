`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 02.02.2025 22:05:05
// Design Name: 
// Module Name: SR2JK_tb
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


module SR2JK_tb;
reg J,K,clk;
wire Q,Qb;

SR2JK DUT(.Q(Q), .Qb(Qb), .J(J), .K(K), .clk(clk));

    always #5 clk = ~clk;
    
    initial begin
        $monitor("Input J = %b, K = %b, Clock(clk) = %b || Output Q = %b, Qb = %b",J,K,clk,Q,Qb);
        
        clk = 1'b1; #5;
        J = 1'b0; K = 1'b0; #10;
        J = 1'b0; K = 1'b1; #10;
        J = 1'b1; K = 1'b0; #10;
        J = 1'b1; K = 1'b1; #10;
        #5; $finish;
      end
        
endmodule
