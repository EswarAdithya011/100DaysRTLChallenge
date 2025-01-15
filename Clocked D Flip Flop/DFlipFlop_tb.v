`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 15.01.2025 12:33:06
// Design Name: 
// Module Name: DFlipFlop_tb
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


module DFlipFlop_tb;
reg D,clk;
wire Q,Qb;

DFlipFlop DUT(.Q(Q), .Qb(Qb), .D(D), .clk(clk));

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
       end
    
    initial begin
        D = 1'b0; #20;
        D = 1'b1; #20;
        D = 1'b0; #20;
        D = 1'b1; #20;
        D = 1'b0; #20;
        #4 $finish;
      end
      
      always@ (*)   begin   
        $display("Input Delay(D) = %b, Clock(clk) = %b || Outputs Q = %b, Qb = %b",D,clk,Q,Qb);
      end
        
endmodule
