`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2025 16:11:50
// Design Name: 
// Module Name: CSA
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


module CSA(output [3:0] S, output Cout, input  [3:0] A, B, C);
  wire [3:0] sum;   
  wire [3:0] carry;

  genvar i;
  generate
    for(i = 0; i < 4; i = i + 1) begin : fa_stage
      full_adder FA(.a(A[i]), .b(B[i]), .c(C[i]), .sum(sum[i]), .carry(carry[i]));
    end
  endgenerate

  RCA rca_stage(.Cin(1'b0), .A(sum), .B({carry[2:0], 1'b0}), .S(S), .Cout(Cout));
  
endmodule
