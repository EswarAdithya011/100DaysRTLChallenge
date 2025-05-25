`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 25.05.2025 13:22:36
// Design Name: 
// Module Name: BarrelShifter
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


module BarrelShifter(input [7:0] datain, input [2:0] shift, output [7:0] dataout);
wire [7:0] x, y;

    //Logic
    // 4-bit shift right
    mux2x1 m0 (.y(x[7]), .x({1'b0, datain[7]}), .s(shift[2]), .en(1'b1));
    mux2x1 m1 (.y(x[6]), .x({1'b0, datain[6]}), .s(shift[2]), .en(1'b1));
    mux2x1 m2 (.y(x[5]), .x({1'b0, datain[5]}), .s(shift[2]), .en(1'b1));
    mux2x1 m3 (.y(x[4]), .x({1'b0, datain[4]}), .s(shift[2]), .en(1'b1));
    mux2x1 m4 (.y(x[3]), .x({datain[7], datain[3]}), .s(shift[2]), .en(1'b1));
    mux2x1 m5 (.y(x[2]), .x({datain[6], datain[2]}), .s(shift[2]), .en(1'b1));
    mux2x1 m6 (.y(x[1]), .x({datain[5], datain[1]}), .s(shift[2]), .en(1'b1));
    mux2x1 m7 (.y(x[0]), .x({datain[4], datain[0]}), .s(shift[2]), .en(1'b1));

    // 2-bit shift right
    mux2x1 m8  (.y(y[7]), .x({1'b0, x[7]}), .s(shift[1]), .en(1'b1));
    mux2x1 m9  (.y(y[6]), .x({1'b0, x[6]}), .s(shift[1]), .en(1'b1));
    mux2x1 m10 (.y(y[5]), .x({x[7], x[5]}), .s(shift[1]), .en(1'b1));
    mux2x1 m11 (.y(y[4]), .x({x[6], x[4]}), .s(shift[1]), .en(1'b1));
    mux2x1 m12 (.y(y[3]), .x({x[5], x[3]}), .s(shift[1]), .en(1'b1));
    mux2x1 m13 (.y(y[2]), .x({x[4], x[2]}), .s(shift[1]), .en(1'b1));
    mux2x1 m14 (.y(y[1]), .x({x[3], x[1]}), .s(shift[1]), .en(1'b1));
    mux2x1 m15 (.y(y[0]), .x({x[2], x[0]}), .s(shift[1]), .en(1'b1));

    // 1-bit shift right
    mux2x1 m16 (.y(dataout[7]), .x({1'b0, y[7]}), .s(shift[0]), .en(1'b1));
    mux2x1 m17 (.y(dataout[6]), .x({y[7], y[6]}), .s(shift[0]), .en(1'b1));
    mux2x1 m18 (.y(dataout[5]), .x({y[6], y[5]}), .s(shift[0]), .en(1'b1));
    mux2x1 m19 (.y(dataout[4]), .x({y[5], y[4]}), .s(shift[0]), .en(1'b1));
    mux2x1 m20 (.y(dataout[3]), .x({y[4], y[3]}), .s(shift[0]), .en(1'b1));
    mux2x1 m21 (.y(dataout[2]), .x({y[3], y[2]}), .s(shift[0]), .en(1'b1));
    mux2x1 m22 (.y(dataout[1]), .x({y[2], y[1]}), .s(shift[0]), .en(1'b1));
    mux2x1 m23 (.y(dataout[0]), .x({y[1], y[0]}), .s(shift[0]), .en(1'b1));
    
endmodule

