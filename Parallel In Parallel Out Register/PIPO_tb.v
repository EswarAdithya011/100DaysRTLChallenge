`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 06.02.2025 10:36:58
// Design Name: 
// Module Name: PIPO_tb
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


module PIPO_tb();
reg [3:0]X;
reg clk;
wire [3:0]Q;

PIPO DUT(.Q(Q), .X(X), .clk(clk));

    always #5 clk = ~clk;
    
    initial begin
        $monitor("Input Data(X) = %b, Clock(clk) = %b || Output Data(Q) = %b",X,clk,Q);
        
        clk = 1'b1;
        
        X = 4'b0101; #10;
        X = 4'b0111; #10;
        X = 4'b1100; #10;
        $finish;
      end
        
endmodule
