`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 07.04.2025 14:42:25
// Design Name: 
// Module Name: EdgeDet
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


module EdgeDet(
    output reg Rise_Edge, 
    output reg Fall_Edge, 
    output reg Dual_Edge, 
    input signal, clk, rst
);
    reg delay_signal;

    always @ (posedge clk or posedge rst) begin
        if (rst) begin
            delay_signal <= 1'b0;
            Rise_Edge    <= 1'b0;
            Fall_Edge    <= 1'b0;
            Dual_Edge    <= 1'b0;
        end else begin
            delay_signal <= signal;
            Rise_Edge <= ( signal & ~delay_signal );
            Fall_Edge <= (~signal &  delay_signal );
            Dual_Edge <= ( signal ^  delay_signal );
            
        end
    end
endmodule

