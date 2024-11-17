`timescale 1ns/1ps
module d_ff(input clk,input [15:0]d,output reg [15:0]q);

  always@(posedge clk)
      q<=d;       

endmodule         


