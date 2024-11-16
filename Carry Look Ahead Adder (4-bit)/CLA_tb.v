`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 16.11.2024 20:56:14
// Design Name: 
// Module Name: CLA_tb
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


module CLA_tb();
reg [3:0]A,B;
wire [3:0]s;
wire cout;

CLA DUT(s,cout,A,B);

    initial begin
        $monitor("Inputs A = %b, B = %b, Outputs Sum = %b, Carry = %b",s,cout,A,B);
        
        A = 4'b0000; B = 4'b0000;
        repeat(10)  begin
            #10;
            A = 1 + $random%(15-1+1);
            B = 1 + $random%(15-1+1);
            end 
            $finish;
         end
endmodule
