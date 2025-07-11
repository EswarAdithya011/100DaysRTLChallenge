`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 25.05.2025 17:53:18
// Design Name: 
// Module Name: BWSM_tb
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


module BWSM_tb;

  reg  [3:0] x, y;
  wire [7:0] p;

  // Instantiate the multiplier
  BWSM uut (
    .x(x),
    .y(y),
    .p(p)
  );

  initial begin
    $display("Time \t x  \t y   \t Product");
    $monitor("%0dns\t %b\t %b\t %b", $time, x, y, p);

    x = 4'b0000; y = 4'b0000; #10;
    x = 4'b0001; y = 4'b0001; #10;
    x = 4'b0010; y = 4'b0011; #10;
    x = 4'b0111; y = 4'b0101; #10;
    x = 4'b1111; y = 4'b0001; #10;
    x = 4'b1100; y = 4'b1100; #10;
    x = 4'b1001; y = 4'b0110; #10;
    x = 4'b1010; y = 4'b1011; #10;
    x = 4'b1111; y = 4'b1111; #10;

    $finish;
  end

endmodule