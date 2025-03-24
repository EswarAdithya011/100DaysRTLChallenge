`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 25.03.2025 00:00:50
// Design Name: 
// Module Name: UpDownCounter_tb
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


module UpDownCounter_tb;
reg M, clk, rst;
wire Qa, Qb, Qc;

UpDownCounter DUT(.Qa(Qa), .Qb(Qb), .Qc(Qc), .M(M), .clk(clk), .rst(rst));

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
      end
      
    initial begin
        rst = 1'b1; #10;
        rst = 1'b0;
        
        M = 1; #80;
        
        M = 0; #80;
        $finish;
      end
      
    initial begin
        $monitor("Time: %0t, Input Clock(clk) = %b, Reset(rst) = %b Mode Select(M) = %b || Output(Qc, Qb, Qa) = %b%b%b", $time, clk, rst, M, Qc, Qb, Qa);
      end
       
endmodule
