`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 19.03.2025 20:43:32
// Design Name: 
// Module Name: mod10_tb
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


module mod10_tb();
  reg clk, clr;
  wire Qa, Qb, Qc, Qd;

  mod10 DUT(.Qa(Qa), .Qb(Qb), .Qc(Qc), .Qd(Qd), .clk(clk), .clr(clr));

  always #5 clk = ~clk;
  
  initial begin
    clk = 1'b0;
    clr = 1'b1; #10;
    clr = 1'b0;
  end
      
  initial begin   
    $monitor("Time: %0t | clk = %b, clr = %b, Outputs = %b%b%b%b", $time, clk, clr, Qa, Qb, Qc, Qd);
    #150; $finish;
  end

endmodule