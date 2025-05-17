`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 17.05.2025 14:17:32
// Design Name: 
// Module Name: oddparity
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


module oddparity(
    output reg paritycheck,
    output reg paritygenerate,
    input [3:0] datain,
    input mode,
    input paritybit
);

    // mode = 0: Generate Odd Parity
    // mode = 1: Check Odd Parity
    always @(*) begin
        if (mode == 1'b0) begin
            paritygenerate <= ~^datain;          
            paritycheck <= 1'bz;
        end else begin
            paritycheck <= ^{datain, paritybit}; 
            paritygenerate <= 1'bz;
        end
    end
endmodule

