`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2025 23:42:06
// Design Name: 
// Module Name: clk_div_1hz
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


module clk_div_1hz(clk,newclk);
input clk;
output reg newclk =0;
integer count =0;
    always @(posedge clk)
    begin 
        if(count==50000000)
        begin 
            newclk=~newclk;
            count <=0;
        end 
        else 
            count = count+1;
    
endmodule 
