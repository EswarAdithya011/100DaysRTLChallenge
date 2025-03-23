`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 23.03.2025 20:28:15
// Design Name: 
// Module Name: UpCounter
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


module UpCounter(output Qa, Qb, Qc, Qd, input clk,clr);

    //Logic
    TFlipFlop T0(.Q(Qa), .Qb(), .T(1'b1), .clk(~clk), .rst(clr));
    TFlipFlop T1(.Q(Qb), .Qb(), .T(~Qd && Qa), .clk(~clk), .rst(clr));
    TFlipFlop T2(.Q(Qc), .Qb(), .T(Qa && Qb), .clk(~clk), .rst(clr));
    TFlipFlop T3(.Q(Qd), .Qb(), .T((Qd && Qa) || (Qa && Qb && Qc)), .clk(~clk), .rst(clr));
    
endmodule
