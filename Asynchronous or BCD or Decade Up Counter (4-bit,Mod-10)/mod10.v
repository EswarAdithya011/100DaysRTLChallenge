`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 19.03.2025 20:43:19
// Design Name: 
// Module Name: mod10
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


module mod10(output Qa, Qb, Qc, Qd, input clk, clr);
  reg [3:0] count;
  
  always @(posedge clk or posedge clr) begin
    if (clr)
      count <= 4'b0000;
    else if (count == 4'b1001)
      count <= 4'b0000;
    else
      count <= count + 1;
  end

  assign Qa = count[0];
  assign Qb = count[1];
  assign Qc = count[2];
  assign Qd = count[3];
  
endmodule

