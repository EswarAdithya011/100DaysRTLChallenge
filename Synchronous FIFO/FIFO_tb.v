`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 02.11.2024 16:42:31
// Design Name: 
// Module Name: FIFO_tb
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


module FIFO_tb;

   parameter WIDTH = 8, DEPTH = 16;

   reg clk, rst, wr_en, rd_en;
   reg [WIDTH-1:0] wr_data;
   wire [WIDTH-1:0] rd_data;
   wire empty, full;

   FIFO #(WIDTH,DEPTH) DUT(clk, rst, wr_en, rd_en, wr_data, rd_data, empty, full);
   
   initial begin 
      clk = 0;
      forever #5 clk = ~clk;
   end
   
   initial begin
      rst = 1;
      wr_en = 0;
      rd_en = 0;
      wr_data = 0;
      #10 rst = 0;
      
      repeat (5) begin
         if (!full) begin
            wr_en = 1;
            wr_data = wr_data + 1;
            #10;
         end
         wr_en = 0;
         #10;
      end
      
      repeat (5) begin
         if (!empty) begin
            rd_en = 1;
            #10;
         end
         rd_en = 0;
         #10;
      end
      
      #50 $finish;
   end

   initial begin
      $monitor("clk = %b, rst = %b, rd_en = %b, wr_en = %b, wr_data = %d, rd_data = %d, full = %b, empty = %b", 
               clk, rst, rd_en, wr_en, wr_data, rd_data, full, empty);
   end    

endmodule
