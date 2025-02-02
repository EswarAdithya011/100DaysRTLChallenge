`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 28.01.2025 18:43:46
// Design Name: 
// Module Name: D2T_tb
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


module D2T_tb;
reg T,clk;
wire Q,Qb;

D2T DUT(.Q(Q), .Qb(Qb), .T(T), .clk(clk));

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
      end
      
    initial begin
         T = 1'b1; #10;
         T = 1'b1; #10;
         T = 1'b0; #10;
         T = 1'b0; #10;
         T = 1'b0; #10;
         T = 1'b1; #10;
         T = 1'b1; #10;
         #5; $finish;
       end
       
     always@ (posedge clk) begin   
        $display("Time = %0t, Input Toggle(T) = %b, Clock(clk) = %b || Output Q = %b, Qb = %b",$time,T,clk,Q,Qb);
      end
             
endmodule
