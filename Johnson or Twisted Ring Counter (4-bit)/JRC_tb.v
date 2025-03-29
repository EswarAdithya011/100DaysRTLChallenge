`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2025 23:47:41
// Design Name: 
// Module Name: JRC_tb
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


module JRC_tb;
reg clk, clr;
wire Qa, Qb, Qc, Qd;

JRC DUT(.Qa(Qa), .Qb(Qb), .Qc(Qc), .Qd(Qd), .clk(clk), .clr(clr));

    initial begin
        clk = 1'b0;
        forever #2 clk = ~clk;
      end
      
    initial begin
        $monitor("Input Clock(clk) = %b, Clear(clr) = %b || Output(Qa,Qb,Qc,Qd) = %b%b%b%b", clk, clr, Qa, Qb, Qc, Qd);
        
        clr = 1'b1; #5;
        clr = 1'b0;
        
        #40 $finish;
      end
      
endmodule
