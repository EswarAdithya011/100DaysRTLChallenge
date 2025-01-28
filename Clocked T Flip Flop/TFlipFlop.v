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


module TFlipFlop(output reg Q, output Qb, input T,clk);

    //Logic
    always@ (posedge clk)   begin
        case(T)
            1'b0: Q <= Q;
            1'b1: Q <=~Q;
         default: Q <= 1'b0;
        endcase
      end
      
    assign Qb = ~Q;
      
endmodule
