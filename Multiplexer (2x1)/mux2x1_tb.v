`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
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
reg s;
wire y;

mux2x1 DUT(.x(x), .s(s), .y(y));

    initial begin
        $monitor("Input x = %b s = %b || Output y = %b",x,s,y);
        
        x = 2'b10; s = 1'b0; #10;
        x = 2'b10; s = 1'b1; #10;
        x = 2'b01; s = 1'b0; #10;
        x = 2'b01; s = 1'b1; #10;
        $finish;
       end
        
endmodule
