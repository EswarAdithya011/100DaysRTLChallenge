`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 11.01.2025 11:47:39
// Design Name: 
// Module Name: SRFlipFlop
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


module SRFlipFlop(output reg Q, output Qb, input S,R,clk,rst_n);

    //Logic
    always @(posedge clk or negedge rst_n)  begin
        if(!rst_n)  begin
            Q <= 1'b0;
            end
        
        else begin
            case({S,R}) 
                2'b00: Q <= Q;
                2'b01: Q <= 1'b0;
                2'b10: Q <= 1'b1;
                2'b11: Q <= 1'bx;
            endcase
           end
          end
    assign Qb = ~Q;
                
endmodule
