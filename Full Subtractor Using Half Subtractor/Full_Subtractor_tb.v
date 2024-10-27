`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2024 19:54:26
// Design Name: 
// Module Name: Full_Subtractor_tb
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


module Full_Subtractor_tb();
  reg A, B, Bin;
  wire D, Bout;
  integer i;

 
  Full_Subtractor DUT(.A(A), .B(B), .Bin(Bin), .D(D), .Bout(Bout));

  
  initial 
    begin
      $monitor("Inputs A = %b, B = %b, Bin = %b, Outputs D = %b, Bout = %b", A, B, Bin, D, Bout);
    end
  
  
  initial
    begin
      for (i = 0; i < 8; i = i + 1)
        begin
          {A, B, Bin} = i;
          #10;  
        end
      $finish; 
    end

endmodule

