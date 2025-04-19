`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 19.04.2025 13:30:10
// Design Name: 
// Module Name: clockcounters_tb
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


module clockcounters_tb;
    reg clk, rst;
    wire [5:0] hours, mins, secs;

    clockcounters DUT (
        .hours(hours),
        .mins(mins),
        .secs(secs),
        .clk(clk),
        .rst(rst)
    );

    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end

    initial begin
        $monitor("Time = %0t | hrs = %0d, mins = %0d, secs = %0d", $time, hours, mins, secs);

        rst = 1'b1; #5;
        rst = 1'b0; #200000; 
        rst = 1'b1; #5;
        $finish;
    end
endmodule
