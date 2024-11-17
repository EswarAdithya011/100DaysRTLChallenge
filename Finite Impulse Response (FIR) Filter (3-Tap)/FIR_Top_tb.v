`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date:
// Design Name: 
// Module Name: Braun_Multiplier
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

module FIR_Top_tb();
reg clk;
reg [7:0] Xin,H0,H1,H2;
wire [15:0] Yout;

FIR_Top DUT(clk, Xin, H0, H1, H2, Yout);

    initial clk = 0;
    always #5 clk = ~clk;
    
    initial begin
     H0 = 8'd10; H1 = 8'd20; H2 = 8'd30;
     Xin = 0;
     #40 Xin = 3;
     #10 Xin = 1;
     #10 Xin = 1;
     #10 Xin = 2;
     #10 Xin = 1;
     #10 Xin = 4;
     #10 Xin = 5;
     #10 Xin = 6;
     #10 Xin = 0;
     #10 $finish;
     end 
     
    initial begin
        $monitor(" Input Xin = %d, clk = %b, H0 = %d, H1 = %d, H2 = %d | Output Yout = %d",Xin,clk,H0,H1,H2,Yout);
            end
            
endmodule