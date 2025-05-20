`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2025 14:48:23
// Design Name: 
// Module Name: CBA_tb
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


module CBA_tb;
reg [3:0]A, B;
reg Cin;
wire [3:0]Sum;
wire Cout;

    CBA DUT (.A(A), .B(B), .Cin(Cin),.Sum(Sum), .Cout(Cout));

    initial begin
        $monitor("Time = %0t | A = %b | B = %b | Cin = %b | Sum = %b | Cout = %b", $time, A, B, Cin, Sum, Cout);
        
        A = 4'b0000; B = 4'b0000; Cin = 1'b0; #10;
        A = 4'b0101; B = 4'b0011; Cin = 1'b0; #10;
        A = 4'b1111; B = 4'b0001; Cin = 1'b0; #10;
        A = 4'b1010; B = 4'b0101; Cin = 1'b1; #10;
        A = 4'b1001; B = 4'b1001; Cin = 1'b1; #10;
        $finish;
    end

endmodule