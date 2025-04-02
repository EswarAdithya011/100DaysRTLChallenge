`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 02.04.2025 00:37:27
// Design Name: 
// Module Name: cmosnot_tb
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


module cmosnot_tb();
reg in;
wire out;

cmosnot DUT(.in(in), .out(out));

    initial begin
        $monitor("Input(in) = %b || Output(out) = %b", in, out);
        
        in = 1'b0; #5;
        in = 1'b1; #5;
        $finish;
      end
endmodule
