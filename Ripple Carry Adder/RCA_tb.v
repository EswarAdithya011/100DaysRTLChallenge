`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2024 23:13:30
// Design Name: 
// Module Name: RCA_tb
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


module RCA_tb();
reg Cin;
reg [3:0]A,B;
wire Cout;
wire [3:0]S;

RCA DUT(Cout,S,Cin,A,B);

    initial 
        begin
            $monitor("Inputs A = %b, B = %b, Cin = %b, Outputs S = %b, C = %b",A,B,Cin,S,Cout);
        end
    initial
        begin
            A = 4'b0000; B = 4'b0000; Cin = 0;
            #10; 
            A = 4'b0001; B = 4'b0001; Cin = 0;
            #10; 
            A = 4'b0010; B = 4'b0001; Cin = 0; 
            #10; 
            A = 4'b0101; B = 4'b0101; Cin = 0; 
            #10; 
            A = 4'b1000; B = 4'b1000; Cin = 0; 
            #10; 
            A = 4'b1111; B = 4'b0001; Cin = 0;
            #10;
            A = 4'b1111; B = 4'b1111; Cin = 0; 
            #10; 
            A = 4'b1111; B = 4'b1111; Cin = 1; 
            #10;
            $finish;
        end
        
endmodule
