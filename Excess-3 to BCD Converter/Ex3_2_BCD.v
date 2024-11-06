`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 06.11.2024 23:22:07
// Design Name: 
// Module Name: Ex3_2_BCD
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


module Ex3_2_BCD(output reg [3:0] B, input [3:0] E);

    //Logic
    always @(*)
        case(E)
            4'b0000: B = 4'bx;
            4'b0001: B = 4'bx;
            4'b0010: B = 4'bx;
            4'b0011: B = 4'b0000;
            4'b0100: B = 4'b0001;
            4'b0101: B = 4'b0010;
            4'b0110: B = 4'b0011;
            4'b0111: B = 4'b0100;
            4'b1000: B = 4'b0101;
            4'b1001: B = 4'b0110;
            4'b1010: B = 4'b0111;
            4'b1011: B = 4'b1000;
            4'b1100: B = 4'b1001;
            4'b1101: B = 4'bx;
            4'b1110: B = 4'bx;
            4'b1111: B = 4'bx;
            default: B = 4'bx;
        endcase
endmodule

