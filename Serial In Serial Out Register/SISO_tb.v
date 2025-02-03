`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 03.02.2025 23:45:50
// Design Name: 
// Module Name: SISO_tb
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


module SISO_tb();
reg Din,clk;
wire Dout;

SISO DUT(.Din(Din), .clk(clk), .Dout(Dout));

    initial begin
        clk = 1'b1;
        forever #5 clk = ~clk;
      end
      
    initial begin
        Din = 1; #10;
        Din = 0; #10;
        Din = 1; #10;
        Din = 1; #10;
        Din = 0; #10;
        #20; $finish;
      end
      
    always@ (posedge clk)   begin   
        $display("Input Data(Din) = %b, Clock(clk) = %b || Output(Dout) = %b",Din,clk,Dout);
      end
        
endmodule
