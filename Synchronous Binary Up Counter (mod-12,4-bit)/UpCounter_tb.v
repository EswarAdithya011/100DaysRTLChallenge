`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 21.03.2025 23:32:25
// Design Name: 
// Module Name: UpCounter_tb
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


module UpCounter_tb();
reg clk,clr;
wire Qa, Qb, Qc, Qd;

UpCounter DUT(.Qa(Qa), .Qb(Qb), .Qc(Qc), .Qd(Qd), .clk(clk), .clr(clr));

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
      end
      
    initial begin  
        clr = 1'b1; #10
        clr = 1'b0;
      end
      
    initial begin
        $monitor("Time: %0t | Input Clock(clk) = %b, Clear(clr) = %b || Output(Qd,Qc,Qb,Qa) = %b%b%b",$time, clk, clr, Qd, Qc, Qb, Qa);
        #200; $finish;
      end       
      
endmodule

