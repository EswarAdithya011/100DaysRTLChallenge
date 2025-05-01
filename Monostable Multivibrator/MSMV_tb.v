`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithys
// 
// Create Date: 01.05.2025 22:26:20
// Design Name: 
// Module Name: MSMV_tb
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


module MSMV_tb();
reg clk, rst, trigger;
wire pulse;

MSMV  #(.pulse_width(10)) DUT(.clk(clk), .rst(rst) , .trigger(trigger), .pulse(pulse));

    always #2 clk = ~clk;
    
    always@ (posedge clk)
     begin
        $display("Input Clock(clk) = %b, Reset(rst) = %b, Trigger = %b || pulse = %b", clk, rst, trigger, pulse);
     end
     
    initial 
     begin
        clk = 1'b0; 
        rst = 1'b1; #3;
        
        rst = 1'b0;
        trigger = 1'b1; #4;
        trigger = 1'b0; #50;
        
        trigger = 1'b1; #20;
        trigger = 1'b0; #50;
        
        trigger = 1'b1; #8;
        trigger = 1'b0; #50;
        #10 $finish;
     end
      
endmodule
