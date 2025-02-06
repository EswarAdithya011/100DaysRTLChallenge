`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 05.02.2025 10:21:55
// Design Name: 
// Module Name: PISO_tb
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


module PISO_tb();
reg SLbar,clk;
reg [3:0]X;
wire Q;

PISO DUT(.Q(Q), .X(X) ,.clk(clk), .SLbar(SLbar));

    initial begin 
        clk = 1'b1;
        forever #5 clk = ~clk;
      end
      
    initial begin
        SLbar = 1'b0; 
          X = 4'b1010; #10;
          
        SLbar = 1'b1; #40;
        $finish;
      end
      
    always@ (posedge clk) begin
        $display("Input(X) = %b, Store/Load' = %b, Clock(clk) = %b || Output(Q) = %b",X,SLbar,clk,Q);
      end
      
endmodule
