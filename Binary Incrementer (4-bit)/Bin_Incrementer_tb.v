`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 16.11.2024 22:32:13
// Design Name: 
// Module Name: Bin_Incrementer_tb
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


module Bin_Incrementer_tb;
reg [3:0]A;
wire [3:0]S;
wire cout;
localparam D = 10;


Bin_Incrementer DUT(S,cout,A);

    initial begin
        $monitor("Input A = %b | Output S = %b%b", A,cout,S);
        
        A = 4'b0000; #D;
        A = 4'b0000; #D;  // Increment 0
        A = 4'b0001; #D;  // Increment 1
        A = 4'b0111; #D;  // Increment 7
        A = 4'b1111; #D;  // Increment 15 (overflow)
        A = 4'b1010; #D; 
        $finish;
     end
        
endmodule
