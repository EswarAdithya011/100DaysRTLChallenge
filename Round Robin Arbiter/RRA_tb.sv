`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2025 10:45:27
// Design Name: 
// Module Name: Mod6_tb
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



module RRA_tb;

  logic clk;
  logic rst_n;
  logic [3:0] req;
  logic [3:0] gnt;

  RRA dut (
    .clk(clk),
    .rst_n(rst_n),
    .req(req),
    .gnt(gnt)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  class ReqGen;
    rand logic [3:0] request;

    constraint atleast_one_bit_set {
      request != 4'b0000;
    }
  endclass

  ReqGen gen;

  initial begin
    gen = new();
    rst_n = 0;
    req = 4'b0000;
    #10 rst_n = 1;

    repeat (10) begin
      void'(gen.randomize());
      req = gen.request;
      #10;
    end

    #20 $finish;
  end

  initial begin
    $monitor("Time=%0t | rst_n=%b | req=%b | gnt=%b", $time, rst_n, req, gnt);
  end

endmodule
