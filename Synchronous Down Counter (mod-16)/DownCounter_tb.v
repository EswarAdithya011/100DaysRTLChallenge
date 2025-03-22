`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 22.03.2025 21:09:52
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


module DownCounter_tb;
reg clk,clr;
wire Qa, Qb, Qc, Qd;

    DownCounter DUT(.Qa(Qa), .Qb(Qb), .Qc(Qc), .Qd(Qd), .clk(clk), .clr(clr));
    
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
      end
      
    initial begin
        $monitor("Input Clock(clk) = %b, Clear(clr) = %b || Output(Qd,Qc,Qb,Qa) = %b",clk,clr,Qd,Qc,Qb,Qa);
        clr = 1'b1; #10;
        clr = 1'b0;
        #200; $finish;
      end

endmodule
