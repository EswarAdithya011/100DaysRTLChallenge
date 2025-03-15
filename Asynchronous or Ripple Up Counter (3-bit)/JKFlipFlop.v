`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 25.01.2025 10:51:23
// Design Name: 
// Module Name: JKFlipFlop
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


module JKFlipFlop(output reg Q, output Qb, input J, K, clk, rst);
  
  always @(posedge clk or posedge rst) begin
    if (rst)
      Q <= 1'b0; 
    else begin
      case ({J, K})
        2'b00: Q <= Q;    
        2'b01: Q <= 1'b0;
        2'b10: Q <= 1'b1;
        2'b11: Q <= ~Q;
      endcase
    end
  end

  assign Qb = ~Q;

endmodule

