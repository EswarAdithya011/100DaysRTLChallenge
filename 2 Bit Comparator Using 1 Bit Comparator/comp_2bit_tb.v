`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2024 21:49:27
// Design Name: 
// Module Name: comp_2bit_tb
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


module comp_2bit_tb();
reg [1:0] A,B;
wire E2,G2,L2;
integer i;

comp_2bit DUT(E2,G2,L2,A,B);

    initial
        begin
            $monitor("Inputs A = %d, B = %d, Outputs G2 = %b, E2 = %b, L2 = %b",A,B,G2,E2,L2);
            
            for (i=0;i<16;i=i+1)
                begin
                    {A,B} = i;
                    #15;
                end
         $finish;
        end
            

endmodule
