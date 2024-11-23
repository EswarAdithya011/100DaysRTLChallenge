`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 24.11.2024 01:05:37
// Design Name: 
// Module Name: mux4x1_tb
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


module mux4x1_tb();
reg [3:0]D;
reg [1:0]s;
reg en;
wire y;

mux4x1 DUT(.D(D), .s(s), .en(en), .y(y));

    initial begin
        $monitor("Inputs Data = %b, Select line = %b, Enable = %b | Output Y = %b",D,s,en,y);
        
        en = 0; #5;
        D = 4'b0110; #5;
        s = 2'b00; en = 1; #10;
        s = 2'b01; en = 1; #10;
        s = 2'b10; en = 1; #10;
        s = 2'b11; en = 1; #10;
        en = 0; #5;
        D = 4'b1001; #5;
        s = 2'b00; en = 1; #10;
        s = 2'b01; en = 1; #10;
        s = 2'b10; en = 1; #10;
        s = 2'b11; en = 1; #10;
        $finish;
       end
        
endmodule
