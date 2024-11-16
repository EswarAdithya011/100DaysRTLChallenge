`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 16.11.2024 23:02:56
// Design Name: 
// Module Name: Bin_Decrementer_tb
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


module Bin_Decrementer_tb;
reg [3:0]A;
reg cin;
wire [3:0]S;
wire cout;
localparam D = 10;

Bin_Decrementer DUT(S,cout,A,cin);

    initial begin
        $monitor("Input A = %b cin = %b || Output S = %b%b", A,cin,cout,S);
        
        A = 4'b0000; cin = 1'b0; #10;
        A = 4'b1111; #10;
        A = 4'b0110; #10;
        A = 4'b0100; #10;
        A = 4'b1100; #10;
        A = 4'b0011; #10;
        $finish;
    end
    
endmodule
