`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 25.03.2025 00:00:35
// Design Name: 
// Module Name: UpDownCounter
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


module UpDownCounter(output Qa, Qb, Qc, input M, clk, rst);
wire Tb, Tc, Qa_bar, Qb_bar;

    assign Tb =  (M & Qa) | (~M & Qa_bar);
    assign Tc = (~M & Qb_bar & Qa_bar) | (M & Qb & Qa);

    //Logic
    TFlipFlop TFF0(.Q(Qa), .Qb(Qa_bar), .T(1'b1), .clk(~clk), .rst(rst));
    TFlipFlop TFF1(.Q(Qb), .Qb(Qb_bar), .T(Tb), .clk(~clk), .rst(rst));
    TFlipFlop TFF2(.Q(Qc), .Qb(), .T(Tc), .clk(~clk), .rst(rst));
    
endmodule
