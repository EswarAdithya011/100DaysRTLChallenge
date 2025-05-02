`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 02.05.2025 23:53:27
// Design Name: 
// Module Name: Palindrome_tb
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

module Palindrome_tb;
reg [7:0] data;
wire is_palindrome;

Palindrome uut (.data(data), .is_palindrome(is_palindrome));

initial begin
    $monitor("Time = %0t | Data = %b | Is Palindrome = %b", $time, data, is_palindrome);
    
    data = 8'b10000001; #5;
    data = 8'b11000011; #5;
    data = 8'b11111111; #5;
    data = 8'b10100101; #5;
    data = 8'b10011001; #5;
    data = 8'b10011100; #5;

    $finish;
end

endmodule