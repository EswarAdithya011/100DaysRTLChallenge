`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2025 10:45:27
// Design Name: 
// Module Name: Mod6_tb
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


module Mod6_tb;
reg clk, clr, pre;
wire Qa, Qb, Qc, Qd, Qe, Qf;

Mod6 DUT(.Qa(Qa), .Qb(Qb), .Qc(Qc), .Qd(Qd), .Qe(Qe), .Qf(Qf), .clk(clk), .clr(clr), .pre(pre));

    initial begin
        clk = 1'b0;
        forever #2 clk = ~clk;
      end
      
    initial begin
        $monitor("Input Clock(clk) = %b, Clear(clr) = %b, Preset(pre) = %b || Output(Qf,Qe,Qd,Qc,Qb,Qa) = %b%b%b%b%b%b", clk, clr, pre, Qf, Qe, Qd, Qc, Qb, Qa);
        
        clr = 1'b1; #5;
        clr = 1'b0;
        
        pre = 1'b1; #5;
        pre = 1'b0;
        
        #60 $finish;
      end

endmodule
