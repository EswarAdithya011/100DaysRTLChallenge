//////////////////////////////////////////////////////////////////////////////////
// Company: Sure Trust
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 01.06.2025 21:33:10
// Design Name: Parameterized PWM Generator
// Module Name: PWM
// Project Name: PWM Signal Generation using Verilog HDL
// Target Devices:  XC7A100TCSG324-1 (Nexys 4 Board)
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

module PWM #(
    parameter PULSE_DURATION = 3,   // High time duration of the output pulse
    parameter PULSE_PERIOD   = 8    // Total time period of the PWM waveform
)(
    input  i_clk,                
    input  i_rst,                 
    output o_pulse              
);

    reg [6:0] counter;              // Counter to track clock cycles within a PWM period
    reg       pulse;                // Internal signal to hold the pulse state

    // Counter logic: Increments every clock cycle and resets after reaching (PULSE_PERIOD - 1)
    always @(posedge i_clk) begin
        if (i_rst) begin
            counter <= 7'd0;
        end else begin
            if (counter == PULSE_PERIOD - 1)
                counter <= 7'd0;
            else
                counter <= counter + 7'd1;
        end
    end

    // Pulse generation logic: Output is high when counter is less than PULSE_DURATION
    always @(posedge i_clk) begin
        if (i_rst) begin
            pulse <= 1'b0;
        end else begin
            if (counter < PULSE_DURATION)
                pulse <= 1'b1;
            else
                pulse <= 1'b0;
        end
    end

    // Drive the output pulse signal
    assign o_pulse = pulse;

endmodule