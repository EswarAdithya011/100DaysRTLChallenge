`timescale 1ns / 1ps

module SWG_with_1Hz_Clock #(
    parameter PHASE_WIDTH = 10,
    parameter DATA_WIDTH = 8
)(
    input wire clk,                  
    input wire reset,               
    input wire [PHASE_WIDTH-1:0] freq_control, 
    output reg [DATA_WIDTH-1:0] sine_out     
);

    reg [25:0] count = 0;
    reg clk_1hz = 0;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 0;
            clk_1hz <= 0;
        end else begin
            if (count == 50000000) begin
                clk_1hz <= ~clk_1hz;
                count <= 0;
            end else begin
                count <= count + 1;
            end
        end
    end

    reg [PHASE_WIDTH-1:0] phase_acc = 0;
    reg [DATA_WIDTH-1:0] sine_lut [0:(1<<PHASE_WIDTH)-1];

    integer i;
    initial begin
        for (i = 0; i < (1<<PHASE_WIDTH); i = i + 1) begin
            sine_lut[i] = $rtoi((2**(DATA_WIDTH-1)-1) * 
                        (1 + $sin(2 * 3.14159265359 * i / (1<<PHASE_WIDTH))));
        end
    end

    always @(posedge clk_1hz or posedge reset) begin
        if (reset) begin
            phase_acc <= 0;
        end else begin
            phase_acc <= phase_acc + freq_control;
        end
    end

    always @(posedge clk_1hz) begin
        sine_out <= sine_lut[phase_acc];
    end

endmodule

module top(input clk,
            input [10:0]sw,
            output [7:0]led
            );
      
SWG_with_1Hz_Clock sineTop(.clk(clk), .reset(sw[0]),
            .freq_control(sw[10:1]), .sine_out(led));      
endmodule