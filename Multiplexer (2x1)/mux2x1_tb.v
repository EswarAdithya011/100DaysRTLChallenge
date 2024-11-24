`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 24.11.2024 00:41:54
// Design Name: 
// Module Name: mux2x1_tb
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


module mux2x1_tb();
    reg [1:0]x;
    reg s, en;
    wire y;

    mux2x1 DUT(.x(x), .s(s), .en(en), .y(y));

    initial begin
        $monitor("Inputs x = %b, Select = %b, Enable = %b | Output y = %b", x, s, en, y);

        en = 0; x = 2'b00; s = 0; #10; 
        en = 1; x = 2'b10; s = 0; #10;
        en = 1; x = 2'b10; s = 1; #10;
        en = 0; x = 2'b01; s = 1; #10; 
        en = 1; x = 2'b11; s = 0; #10; 
        en = 1; x = 2'b11; s = 1; #10; 
        $finish;
    end
    
endmodule
