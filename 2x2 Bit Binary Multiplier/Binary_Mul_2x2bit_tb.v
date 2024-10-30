`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2024 15:50:51
// Design Name: 
// Module Name: Binary_Mul_2x2bit_tb
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


module Binary_Mul_2x2bit_tb();
reg [1:0] A,B;
wire [3:0] R;
integer i,j;
Binary_Mul_2x2bit BMUL(R,A,B);

initial
    begin
        $monitor("Inputs A = %b, B = %b, Output R = %b",A,B,R);
    end
initial
    begin
        for(i=0;i<4;i=i+1)
            begin
                A = i;
                    for(j=0;j<4;j=j+1)
                        begin
                            B = j;
                            #10;
                        end
            end
    $finish;
    end

endmodule
