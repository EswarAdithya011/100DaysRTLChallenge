`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 04.04.2025 23:09:31
// Design Name: 
// Module Name: mux2x1TG_tb
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


module mux2x1TG_tb;
reg [1:0] I;
reg s;
wire Y;

mux2x1TG DUT(.Y(Y), .I(I), .s(s));

initial begin
    $monitor("Time = %0t | Input Select Line(s) = %b, Data(I) = %b || Output(Y) = %b", $time, s, I, Y);
    
    I = 2'b10; s = 0; #5;
    s = 1; #5;
    I = 2'b01; s = 0; #5;
    s = 1; #5;
    $finish;
end

endmodule

