`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2024 20:40:00
// Design Name: 
// Module Name: AOI_4input_tb
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


module AOI_4input_tb;
reg a,b,c,d;
wire y;
integer x;

AOI_4input DUT(y,a,b,c,d);

    initial 
    begin
        for(x=0;x<16;x=x+1)
            begin
                {a,b,c,d} = x;
                #15;
            end
            $finish;
    end       
endmodule
