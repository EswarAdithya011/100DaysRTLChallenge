`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Sure Trust
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 01.06.2025 21:33:10
// Design Name: Parameterized PWM Generator
// Module Name: PWM
// Project Name: PWM Signal Generation using Verilog HDL
// Target Devices: XC7A100TCSG324-1 (Nexys 4 Board)
// Tool Versions: Xilinx Vivado 2024.1 or later
// Description: 
// This module implements a parameterized Pulse Width Modulation (PWM) generator. 
// The output remains high for PULSE_DURATION clock cycles and completes a full cycle 
// in PULSE_PERIOD clock cycles, enabling configurable duty cycle generation for 
// various control applications such as motor control, LED dimming, etc.
//
// Dependencies: None
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// - Fully synchronous design
// - Suitable for FPGA implementation
// - Clean, readable coding style for academic and practical use
//////////////////////////////////////////////////////////////////////////////////


module PWM_tb;

    // Testbench signals
    reg clk;           
    reg rst;           
    wire pulse;        

    // Instantiate the PWM module with parameterized pulse duration and period
    PWM #(
        .PULSE_DURATION(6),   // High for 6 clock cycles
        .PULSE_PERIOD(8)      // Total period of 8 clock cycles
    ) dut (
        .i_clk(clk),
        .i_rst(rst),
        .o_pulse(pulse)
    );

    // Clock generation: 10ns period => 100 MHz frequency
    initial clk = 0;
    always #5 clk = ~clk;

    // Stimulus block: Apply reset and run the simulation
    initial begin
        rst = 1;      
        #20;
        rst = 0;       
        #200;          
        $stop;       
    end

endmodule
