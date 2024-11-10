`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 07.11.2024 20:36:49
// Design Name: 
// Module Name: Binary2BCD
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


module Binary2BCD(input [7:0]data, output reg [3:0] bit0,bit1,bit2, output reg[11:0] BCD);
integer i;

    always@(data)
    begin
        bit0=0; bit1=0; bit2=0;
        for(i=0; i<8; i=i+1)
        begin
            if(bit0>4) bit0 = bit0+3;
            if(bit1>4) bit1 = bit1+3;
            if(bit2>4) bit2 = bit2+3;
            {bit2,bit1,bit0} = {bit2,bit1,bit0,data[7-i]};
        end
        BCD= {bit2, bit1, bit0};
    end
endmodule

