`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya   
// 
// Create Date: 06.04.2025 23:04:56
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb;
reg [7:0]operand1, operand2;
reg [2:0]opcode;
wire [15:0]result;
wire flagC, flagZ;

integer count;

ALU DUT(.result(result), .flagC(flagC), .flagZ(flagZ), .opcode(opcode), .operand1(operand1), .operand2(operand2));

    initial begin
        $monitor("Input Operand1 = %b, Operand2 = %b, Opcode = %b || Output Result = %b, flagC = %b, flagZ = %b", operand1, operand2, opcode, result, flagC, flagZ);
        
        opcode = 3'd0;
        operand1 = 8'd0;
        operand2 = 8'd0;
        
        #5;
        
        operand1 = 8'hAA;
        operand2 = 8'h55;
        
        for(count = 0; count < 8; count = count + 1) begin
            opcode = count;
            #5;
          end
         
        operand1 = 8'hC3;
        operand2 = 8'hF9;
        
        for(count = 0; count < 8; count = count + 1) begin
            opcode = count;
            #5;
          end
          $finish;
        end
               
endmodule
