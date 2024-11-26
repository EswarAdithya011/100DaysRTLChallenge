`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 26.11.2024 23:26:22
// Design Name: 
// Module Name: mux16x1_tb
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


module mux16x1_tb();
    reg [15:0] D;
    reg [3:0] s;
    reg en;
    wire Y;

    mux16x1 DUT(.D(D), .s(s), .en(en), .Y(Y));

    initial begin
        $monitor("Enable(en) = %b, Input Data(D) = %b, Select Line(s) = %b || Output(Y) = %b", en, D, s, Y);

        D = 16'b1100101011100010; en = 1; s = 4'b0000;
        
        repeat (16) begin
            #10 s = s + 1'b1;
        end

        en = 0; #10; // Disable the mux to verify the enable functionality
        $finish;
    end
endmodule


