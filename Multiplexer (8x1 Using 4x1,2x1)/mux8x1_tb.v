`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 24.11.2024 23:32:24
// Design Name: 
// Module Name: mux8x1_tb
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


module mux8x1_tb();
reg [7:0]A;
reg [2:0]s;
reg en;
wire Y;

mux8x1 DUT(.A(A), .s(s), .en(en), .Y(Y));

    initial begin   
        $monitor("Input Data(A) = %b, select line(s) = %b, Enable(en) = %b || Output(Y) = %b",A,s,en,Y);
        
        A = 170; en = 0; #10;
        s = 3'b000; en = 1; #10;
        s = 3'b001; en = 1; #10;
        s = 3'b010; en = 1; #10;
        s = 3'b011; en = 1; #10;
        s = 3'b100; en = 1; #10;
        s = 3'b101; en = 1; #10;
        s = 3'b110; en = 1; #10;
        s = 3'b111; en = 1; #10;
        $finish;
       end
       
endmodule
