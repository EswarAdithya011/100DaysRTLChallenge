`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 18.05.2025 18:11:04
// Design Name: 
// Module Name: CSA_tb
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


module CSA_tb();
reg [3:0]A, B;
reg cin;
wire [3:0]sum;
wire cout;

CSA DUT(.sum(sum), .cout(cout), .A(A), .B(B), .cin(cin));

    initial begin
        $monitor("Input Data A = %d, B = %d, Carryin(cin) = %b, Output sum = %b, Carryout(cout) = %b", A, B, cin, sum, cout);
    end
    
    initial begin
        A = 4'b0000; B = 4'b0000; cin = 0; #10;
        A = 4'b0001; B = 4'b0001; cin = 0; #10;
        A = 4'b0010; B = 4'b0011; cin = 1; #10;
        A = 4'b0101; B = 4'b0110; cin = 0; #10;
        A = 4'b1111; B = 4'b0001; cin = 1; #10;
        A = 4'b1001; B = 4'b0110; cin = 0; #10;
        A = 4'b1100; B = 4'b1100; cin = 1; #10;
        A = 4'b1111; B = 4'b1111; cin = 1; #10;
        $finish;
    end
endmodule
