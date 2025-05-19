`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2025 16:12:01
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


`timescale 1ns/1ps

module CSA_tb;
reg [3:0] A, B, C;
wire [3:0] S;

  CSA uut (.A(A), .B(B), .C(C), .S(S));

  initial begin
    $display("Time\tA\tB\tC\t|\tS");
    $monitor("%0t\t%b\t%b\t%b\t|\t%b", $time, A, B, C, S);

    // Test Cases
    A = 4'b0000; B = 4'b0000; C = 4'b0000; #10;
    A = 4'b0001; B = 4'b0010; C = 4'b0100; #10;
    A = 4'b1001; B = 4'b0101; C = 4'b0011; #10;
    A = 4'b1111; B = 4'b1111; C = 4'b0001; #10;
    A = 4'b1010; B = 4'b0101; C = 4'b1110; #10;
    A = 4'b1111; B = 4'b1111; C = 4'b1111; #10;
    $finish;
  end

endmodule

