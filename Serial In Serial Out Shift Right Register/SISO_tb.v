`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 04.02.2025 23:01:47
// Design Name: 
// Module Name: SISO_tb
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


module SISO_tb();
reg Din,clk;
wire Dout;

SISO DUT(.Dout(Dout), .Din(Din), .clk(clk));

    initial begin
        clk = 1'b1;
        forever #5 clk = ~clk;
      end
      
    initial begin
        $monitor("Input Data(Din) = %b, Clock(clk) = %b || Output(Dout) = %b",Din,clk,Dout);
        
        Din = 1'b0; #10;
        Din = 1'b1; #10;
        Din = 1'b1; #10;
        Din = 1'b0; #10;
        #30; $finish;
      end
      
endmodule
