`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 23.03.2025 21:07:40
// Design Name: 
// Module Name: SeqCounter_tb
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


module SeqCounter_tb;
reg clk, rst;
wire [2:0]Q;

SeqCounter DUT(.Q(Q), .clk(clk), .rst(rst));

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
      end
      
    initial begin
        $monitor("Time = %0t | Input Clock(clk) = %b, Reset(rst) = %b || Output(Q) = %b", $time, clk, rst, Q);
        
        rst = 1'b1; #10;
        rst = 1'b0;
        #150; $finish;
      end

endmodule
