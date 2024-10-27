`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2024 19:03:05
// Design Name: 
// Module Name: Half_Subtractor_tb
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


module Half_Subtractor_tb();
  reg A, Bin;
  wire D, Bout;

  // Instantiate the Half_Subtractor
  Half_Subtractor DUT (.A(A), .Bin(Bin), .D(D), .Bout(Bout));

  initial 
  begin
    $monitor("Inputs A = %b, Bin = %b, Outputs D = %b, Bout = %b", A, Bin, D, Bout);
  end
  
  initial
  begin
    A = 1'b0; Bin = 1'b0;
    #10 A = 1'b0; Bin = 1'b1;
    #10 A = 1'b1; Bin = 1'b0;
    #10 A = 1'b1; Bin = 1'b1;

    #10 $finish;
  end
  
endmodule

