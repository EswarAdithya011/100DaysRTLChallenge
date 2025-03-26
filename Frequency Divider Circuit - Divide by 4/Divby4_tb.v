`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 26.03.2025 10:36:13
// Design Name: 
// Module Name: Divby4_tb
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


module Divby4_tb;
reg clk, rst;
wire Qa, Qb;

Divby4 DUT(.Qa(Qa), .Qb(Qb), .clk(clk), .rst(rst));

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
      end
      
    initial begin
        $monitor("Time = %0t | Input Clock(clk) = %b, Reset(rst) = %b || Output Qa = %b, Qb = %b", $time, clk, rst, Qa, Qb);
        
        rst = 1'b1; #10;
        rst = 1'b0;
        #100; $finish;
      end
     
endmodule
