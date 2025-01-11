`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 11.01.2025 11:47:53
// Design Name: 
// Module Name: SRFlipFlop_tb
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


module SRFlipFlop_tb();
reg S,R,clk,rst_n;
wire Q,Qb;
localparam D1 = 5;
localparam D2 = 10;


SRFlipFlop DUT(.S(S), .R(R), .clk(clk), .rst_n(rst_n), .Q(Q), .Qb(Qb));
    
    initial begin
        clk = 1'b0;
        forever #D1 clk = ~clk;
       end
    
    initial  begin
        $monitor("Inputs S = %b, R = %b, Clock(clk) = %b, Reset(rst_n) = %b || Outputs Q = %b, Qb = %b",S,R,clk,rst_n,Q,Qb);
        
        rst_n = 1'b0; #D2;
        rst_n = 1'b1;
        
        stimulas(2'b00); #D2;
        stimulas(2'b01); #D2;
        stimulas(2'b10); #D2;
        stimulas(2'b11); #D2;
        $finish;
      end
      
    task stimulas(input [1:0] x);
        begin
            {S,R} = x;
        end
    endtask
      
endmodule
