`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 28.01.2025 11:32:42
// Design Name: 
// Module Name: JK2T_tb
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


module JK2T_tb();
  reg T, clk;
  wire Q, Qb;

  JK2T DUT(.Q(Q), .Qb(Qb), .T(T), .clk(clk));

  always #5 clk = ~clk;

  initial begin
    $monitor("Input Toggle(T) = %b, Clock(clk) = %b || Output Q = %b, Qb = %b", T, clk, Q, Qb);
    
    clk = 1'b1; #10;
    
    T = 1'b0; #10; 
    T = 1'b1; #10; 
    T = 1'b1; #10; 
    T = 1'b0; #10;
    #10; $finish;
  end
  
endmodule

