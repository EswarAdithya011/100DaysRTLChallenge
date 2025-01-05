`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 05.01.2025 15:05:18
// Design Name: 
// Module Name: Demux1x2_tb
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


module Demux1x2_tb();
reg s,D,en;
wire [1:0]I;

Demux1x2 DUT(.D(D), .s(s), .en(en), .I(I));

    initial begin
        $monitor("Input Data(D) = %b, Select Line(s) = %b, Enable(en) || Outputs I[0] = %b, I[1] = %b",D,s,en,I);
        
        D = 1'b1;
            en = 1'b0; #5;
            en = ~en;
            s = 1'b0; #10;
            s = 1'b0; #10;
            s = 1'b1; #10;
            s = 1'b0; #10;
            s = 1'b1; #10;
            s = 1'b1; #10;
        $finish;
        end
        
endmodule
