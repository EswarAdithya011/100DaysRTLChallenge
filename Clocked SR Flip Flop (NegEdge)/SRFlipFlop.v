`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 11.01.2025 14:13:46
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


module SRFlipFlop(output reg Q, output Qb, input S,R,clk,rst);

    //Logic
    always @(negedge clk or posedge rst)  begin
        if(rst)  begin
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
