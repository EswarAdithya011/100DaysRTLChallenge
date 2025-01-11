`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 11.01.2025 14:18:04
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
reg S,R,clk,rst;
wire Q,Qb;
localparam D1 = 5;
localparam D2 = 10;


SRFlipFlop DUT(.S(S), .R(R), .clk(clk), .rst(rst), .Q(Q), .Qb(Qb));
    
    initial begin
        clk = 1'b0;
        forever #D1 clk = ~clk;
       end
    
    initial  begin
        $monitor("Inputs S = %b, R = %b, Clock(clk) = %b, Reset(rst) = %b || Outputs Q = %b, Qb = %b",S,R,clk,rst,Q,Qb);
        
        rst = 1'b1; #D2;
        rst = 1'b0;
        
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
