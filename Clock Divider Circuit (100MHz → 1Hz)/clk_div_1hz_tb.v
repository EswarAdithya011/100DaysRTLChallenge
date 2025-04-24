`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2025 23:43:11
// Design Name: 
// Module Name: clk_div_1hz_tb
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


module clk_div_1hz_tb();
reg clk;
wire newclk;

clk_div_1hz x1(clk,newclk);

    always #5 clk=~clk;
    
    initial begin
        clk=0;
        // $monitor("Time = %0t ns || Input clk = %b || Output newclk = %b", $time, clk, newclk);
        # 2000000000 $stop;
    end
     
endmodule
