`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 16.03.2025 23:26:14
// Design Name: 
// Module Name: UpCounter_tb
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


module UpCounter_tb();
reg clk, rst;
wire Qc, Qb, Qa;

UpCounter DUT(.Qc(Qc), .Qb(Qb), .Qa(Qa), .clk(clk), .rst(rst));

initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
end

initial begin
    rst = 1'b1; #10;
    rst = 1'b0;       
end

always @(posedge clk) begin
    $display("Time = %0t, Clock = %b, Qc = %b, Qb = %b, Qa = %b", $time, clk, Qc, Qb, Qa);
end

initial begin
    #90;
    $finish;
end

endmodule

