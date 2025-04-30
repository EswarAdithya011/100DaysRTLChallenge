`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2025 13:37:37
// Design Name: 
// Module Name: BCD_7Segment_tb
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


module BCD_7Segment_tb();
reg [3:0]B;
wire a,b,c,d,e,f,g;

BCD_7Segment DUT(.B(B), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g));

    initial begin
        $monitor("Input B = %d || Outputs a = %b, b = %b, c = %b, d = %b, e = %b, f = %b, g = %b",B,a,b,c,d,e,f,g);
        
        B = 4'b0000;
        repeat(10) begin
            #10;
            B = B + 1'b1;
        end
        $finish;
    end
        
endmodule
