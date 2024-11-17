`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 28.10.2024 10:29:22
// Design Name: 
// Module Name: Braun_Multiplier_tb
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


module Braun_Multiplier_tb();
reg [7:0] a,b;
wire [15:0] p;

Braun_Multiplier DUT(.a(a), .b(b), .p(p));

    initial 
        begin   
            $monitor("Inputs a = %d, b = %d || Output P = %d",a,b,p);
            
            {a,b} = 16'b0; #10;
            a = 10; b = 25; #10;
            a = 12; b = 29; #10;
            a = 17; b = 30; #10; 
            a = 111; b = 198; #10;
            a = 156; b = 0; #10;
            $finish;
        end    

endmodule
