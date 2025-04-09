`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 09.04.2025 21:37:54
// Design Name: 
// Module Name: LFSR_tb
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


module LFSR_tb;
    reg clk, rst;
    wire [3:0] out;

    LFSR DUT (.out(out), .clk(clk), .rst(rst));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1; #15;
        rst = 0;
        #100 $finish;
    end

    always @(posedge clk) begin
        $display("Time = %0t | LFSR Output = %b", $time, out);
    end
    
endmodule

