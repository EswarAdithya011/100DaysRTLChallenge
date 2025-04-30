`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.04.2025 23:42:58
// Design Name: 
// Module Name: SWG_tb
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


module SWG_tb;

    parameter PHASE_WIDTH = 10;
    parameter DATA_WIDTH = 8;

    reg clk;
    reg reset;
    reg [PHASE_WIDTH-1:0] freq_control;
    wire [DATA_WIDTH-1:0] sine_out;

    
    SWG #(.PHASE_WIDTH(PHASE_WIDTH), .DATA_WIDTH(DATA_WIDTH)) DUT (
        .clk(clk),
        .reset(reset),
        .freq_control(freq_control),
        .sine_out(sine_out)
    );

    always #5 clk = ~clk;

    initial begin
        
        clk = 0;
        reset = 1;
        freq_control = 0;
       
        #10 reset = 0;
        
        #10 freq_control = 10;

        #100000000 $stop;
    end

    initial begin
        $monitor("Time=%0t | freq_control=%d | sine_out=%d", $time, freq_control, sine_out);
    end

endmodule
