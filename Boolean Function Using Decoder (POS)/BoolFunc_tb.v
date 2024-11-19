`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 19.11.2024 23:05:49
// Design Name: 
// Module Name: BoolFunc_tb
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


module BoolFunc_tb();
reg  x,y,z;
wire F1,F2;
integer n;

BoolFunc_Dec DUT(.F1(F1), .F2(F2), .x(x), .y(y), .z(z));

    initial begin   
        $monitor("Input x = %b, y = %b, z = %b || Output F1 = %b, F2 = %b, || D = %b",x,y,z,F1,F2,DUT.D);
        
        for (n = 0;n < 8; n = n + 1)    begin
            {x, y, z} = n;
                #10;
                end
             $finish;
          end     
            

endmodule
