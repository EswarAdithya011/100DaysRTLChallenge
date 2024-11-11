`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 11.11.2024 18:21:41
// Design Name: 
// Module Name: AS_4bit_tb
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


module AS_4bit_tb();
reg [3:0]A,B;
reg M;
wire [3:0]s;
wire cout;

AS_4bit DUT(s,cout,A,B,M);

    initial
        begin
            $monitor("Input A = %b, B = %b | Output Sum = %b, Carry = %b",A,B,s,cout);
            
            {A,B} = 0; M = 0; #10;          // M = 0 (Adder)
            A = 4'b0101; B = 4'b1011; #10;
            A = 4'b0110; B = 4'b1111; #10;
            A = 4'b0100; B = 4'b1010; #10;
            A = 4'b0111; B = 4'b0000; #10;
            A = 4'b1001; B = 4'b1110; #10;
            A = 4'b0001; B = 4'b1101; #10;
            A = 4'b1011; B = 4'b1011; #10;
            A = 4'b1000; B = 4'b1100; #10;
            
            {A,B} = 0; M = 1; #10;          // M = 1 (Subtractor)
            A = 4'b0101; B = 4'b1011; #10;
            A = 4'b0110; B = 4'b1111; #10;
            A = 4'b0100; B = 4'b1010; #10;
            A = 4'b0111; B = 4'b0000; #10;
            A = 4'b1001; B = 4'b1110; #10;
            A = 4'b0001; B = 4'b1101; #10;
            A = 4'b1011; B = 4'b1011; #10;
            A = 4'b1000; B = 4'b1100; #10;
            $finish;
       end     
                  
endmodule
