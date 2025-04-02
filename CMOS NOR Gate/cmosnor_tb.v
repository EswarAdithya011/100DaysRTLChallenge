`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 02.04.2025 11:57:06
// Design Name: 
// Module Name: cmosnor_tb
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


module cmosnor_tb;
reg in1, in2;
wire y;

cmosnor DUT(.in1(in1), .in2(in2) ,.y(y));

    initial begin
        $monitor("Inputs in1 = %b, in2 = %b || Output = %b", in1, in2, y);
        
        in1 = 1'b0; in2 =1'b0; #5;
        in1 = 1'b0; in2 =1'b1; #5;
        in1 = 1'b1; in2 =1'b0; #5;
        in1 = 1'b1; in2 =1'b1; #5;
        $finish;
      end
        
endmodule
