`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 06.02.2025 13:50:00
// Design Name: 
// Module Name: USR_tb
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


module USR_tb();
reg [3:0]I;
reg [1:0]s;
reg clr,clk,SL,SR;
wire [3:0]A;

USR DUT(.I(I), .A(A), .s(s), .clr(clr), .clk(clk), .SL(SL), .SR(SR));

    initial begin
        clk = 1'b1;
        forever #5 clk = ~clk;
      end
      
    initial begin
        $monitor("Input Data(I) = %b, Clear(clr) = %b, Clock(clk) = %b, Select(s) = %b, Serial Left & Right = %b & %b || Output(A) = %b",I,clr,clk,s,SL,SR,A);
                    
        clr = 1; I = 4'b1010; SL = 1; SR = 0; #10;
        clr = 0;
        
        s[1] = 0; s[0] = 0; #40;  // Serial In Serial Out (SISO)
        s[1] = 1; s[0] = 0; #40;  // Serial In Parallel Out (SIPO)
        s[1] = 0; s[0] = 1; #40;  // Parallel In Serial Out (PISO)
        s[1] = 1; s[0] = 1; #10;  // Parallel In Parallel Out (PIPO)
        #10 $finish;
    end
 
endmodule
