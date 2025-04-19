`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 19.04.2025 13:17:30
// Design Name: 
// Module Name: clockcounters
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


module clockcounters(output reg [5:0] hours, mins, secs, input clk, rst);
    always @ (posedge clk or posedge rst) begin
        if (rst) begin
            hours <= 6'd0;
            mins <= 6'd0;
            secs <= 6'd0;
        end else begin
            if (secs == 6'd59) begin
                secs <= 6'd0;
                if (mins == 6'd59) begin
                    mins <= 6'd0;
                    if (hours == 6'd23) begin
                        hours <= 6'd0;
                    end else begin
                        hours <= hours + 6'd1;
                    end
                end else begin
                    mins <= mins + 6'd1;
                end
            end else begin
                secs <= secs + 6'd1;
            end
        end
    end
endmodule
