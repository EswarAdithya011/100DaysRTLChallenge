`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 18.03.2025 12:22:30
// Design Name: 
// Module Name: DownCounter_tb
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


module DownCounter_tb();
reg clk, rst;
wire Qc, Qb, Qa;

DownCounter DUT(.Qa(Qa), .Qb(Qb), .Qc(Qc), .clk(clk), .rst(rst));

    always #5 clk = ~clk;
    
    initial begin   
        clk = 1'b0;
        rst = 1'b1; #10;
        rst = 1'b0;
      end
      
    initial begin
        $monitor("Input Reset(rst) = %b, Clock(clk) = %b, Output(Qc, Qb, Qa) = %b%b%b",rst,clk,Qc,Qb,Qa);
        #90; $finish;
      end
      
endmodule
