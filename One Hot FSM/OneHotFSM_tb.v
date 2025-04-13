`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 13.04.2025 23:52:21
// Design Name: 
// Module Name: OneHotFSM_tb
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


module OneHot_FSM_tb;

reg clk, rst, start;
wire done;
wire [3:0] state;

OneHot_FSM DUT (.clk(clk), .rst(rst), .start(start), .done(done), .state(state));

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    $monitor("Time = %0t | State = %b | Done = %b", $time, state, done);
    
    rst = 1; start = 0;
    #10 rst = 0;

    #10 start = 1; 
    #10 start = 0; 
    
    #50 $finish;
end

endmodule

