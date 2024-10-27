`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2024 22:15:14
// Design Name: 
// Module Name: Squarer_ckt_tb
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


module Squarer_ckt_tb();
wire y0,y1,y2,y3,y4,y5;
reg a0,a1,a2;
integer i;

Squarer_ckt DUT(y0,y1,y2,y3,y4,y5,a0,a1,a2);

    initial
        begin
            $monitor("Input A = %d, Output Y = %d",{a2,a1,a0},{y5,y4,y3,y2,y1,y0});
        end
    initial
        begin
             for(i=0;i<8;i=i+1)
                begin
                    {a2,a1,a0} = i;
                    #10;
                end
         $finish;
        end
        
endmodule
