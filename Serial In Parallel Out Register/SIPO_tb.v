`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 04.02.2025 23:22:55
// Design Name: 
// Module Name: SIPO_tb
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


module SIPO_tb();
reg Din,clk;
wire [3:0]Q;

SIPO DUT(.Q(Q), .Din(Din), .clk(clk));

    initial begin
        clk = 1'b1;
        forever #5 clk = ~clk;
      end
      
    initial begin
        $monitor("Input(Din) = %b, Clock(clk) = %b || Output(Q) = %b",Din,clk,Q);
        
        Din = 1'b0; #10;
        Din = 1'b1; #10;
        Din = 1'b1; #10;
        Din = 1'b1; #10;
        Din = 1'b0; #10;
        $finish;
      end
      
endmodule
