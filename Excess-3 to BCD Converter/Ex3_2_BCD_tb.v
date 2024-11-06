`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 06.11.2024 23:22:20
// Design Name: 
// Module Name: Ex3_2_BCD_tb
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


module Ex3_2_BCD_tb();
    reg [3:0] E;
    wire [3:0] B;

    Ex3_2_BCD DUT(B, E);

    initial begin   
        $monitor("Input E = %b, Output B = %b", E, B);
        
        E = 0;
        repeat(16) begin
            #5; 
            E = E + 1'b1;
        end
        $finish;
    end                
endmodule
