`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 28.01.2025 11:08:57
// Design Name: 
// Module Name: TFlipFlop
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


module TFlipFlop(output reg Q, output Qb, input T, clk, rst);

    always @(posedge clk or posedge rst) begin
        if (rst)
            Q <= 1'b0;
        else if (T)
            Q <= ~Q;
    end
    
    assign Qb = ~Q;

endmodule
