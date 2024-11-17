`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 28.10.2024 10:28:59
// Design Name: 
// Module Name: Braun_Multiplier
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

module Braun_Multiplier(
    input [7:0] a, b,
    output [15:0] p
);
    wire [15:0] sum_0, sum_1, sum_2, sum_3, sum_4, sum_5, sum_6, sum_7;
    wire [7:0] partial_product[7:0];

    genvar i, j;
    generate
        for (i = 0; i < 8; i = i + 1) begin
            for (j = 0; j < 8; j = j + 1) begin
                assign partial_product[i][j] = a[i] & b[j];  // Generating partial products
            end
        end
    endgenerate

    assign sum_0 = {8'b0, partial_product[0]};
    assign sum_1 = {partial_product[1], 1'b0} + sum_0;
    assign sum_2 = {partial_product[2], 2'b0} + sum_1;
    assign sum_3 = {partial_product[3], 3'b0} + sum_2;
    assign sum_4 = {partial_product[4], 4'b0} + sum_3;
    assign sum_5 = {partial_product[5], 5'b0} + sum_4;
    assign sum_6 = {partial_product[6], 6'b0} + sum_5;
    assign sum_7 = {partial_product[7], 7'b0} + sum_6;

    assign p = sum_7;
endmodule

