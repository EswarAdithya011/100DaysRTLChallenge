`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 02.05.2025 23:53:13
// Design Name: 
// Module Name: Palindrome
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


module Palindrome (input [7:0] data, output reg is_palindrome);

always @(*) begin
    if ((data[7] == data[0]) &&
        (data[6] == data[1]) &&
        (data[5] == data[2]) &&
        (data[4] == data[3]))
        is_palindrome = 1;
    else
        is_palindrome = 0;
end

endmodule
