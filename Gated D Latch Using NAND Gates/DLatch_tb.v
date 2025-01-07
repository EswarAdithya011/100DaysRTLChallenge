`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 08.01.2025 00:24:13
// Design Name: 
// Module Name: DLatch_tb
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


module DLatch_tb;
reg D,en;
wire Q,Qb;

DLatch DUT(.D(D), .en(en), .Q(Q), .Qb(Qb));

    initial begin
        $monitor("Input Data(D) = %b, Enable = %b || Output Q = %b, Qb = %b",D,en,Q,Qb);
        
        en = 1'b0;
        D = 1'b0; #10;
        D = 1'b1; #10;
        
        en = 1'b1;
        D = 1'b0; #10;
        D = 1'b1; #10;
        $finish;
     end
      
endmodule
