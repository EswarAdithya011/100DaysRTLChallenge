`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 28.01.2025 18:23:48
// Design Name: 
// Module Name: SR2D_tb
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


module SR2D_tb();
reg D,clk;
wire Q,Qb;

SR2D DUT(.Q(Q), .Qb(Qb), .D(D), .clk(clk));

    initial begin
        clk = 1'b1;
        forever #5 clk = ~clk;
      end
      
    initial begin
        $monitor("Input Data(D) = %b, Clock(clk) = %b || Output Q = %b, Qb = %b",D,clk,Q,Qb);
        
        D = 1'b0; #10;
        D = 1'b1; #10;
        D = 1'b0; #10;
        D = 1'b1; #10;
        D = 1'b1; #10;
        $finish;
      end
        
endmodule
