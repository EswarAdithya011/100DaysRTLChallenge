`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 05.01.2025 23:30:19
// Design Name: 
// Module Name: Demux1x4_tb
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


module Demux1x4_tb();
reg D;
reg [1:0]s;
wire [3:0]Y;

Demux1x4 DUT(.D(D), .s(s), .Y(Y));

    initial begin
        $monitor("Input Data(D) = %b, Select Line(s) = %b || Output(Y) = %b",D,s,Y);
        
        D = 1'b1;
        s = 2'b00; #10;
        s = 2'b01; #10;
        s = 2'b10; #10;
        s = 2'b11; #10;
        $finish;
      end
     
endmodule
