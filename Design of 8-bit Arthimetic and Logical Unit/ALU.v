`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 06.04.2025 23:04:45
// Design Name: 
// Module Name: ALU
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


module ALU(output reg [15:0]result, 
           output reg flagC, flagZ, 
           input [7:0]operand1, operand2,
           input [2:0]opcode);

parameter [2:0] ADD  = 3'b000,
                SUB  = 3'b001,
                MUL  = 3'b010,
                AND  = 3'b011,
                OR   = 3'b100,
                NAND = 3'b101,
                NOR  = 3'b110,
                XOR  = 3'b111;
 
    always@ (*) begin
        case(opcode) 
            ADD: begin
                result = operand1 + operand2;
                flagC  = result[8];
                flagZ  = (result == 16'b0);
              end
            
            SUB: begin
                result = operand1 - operand2;
                flagC  = result[8];
                flagZ  = (result == 16'b0);
              end
              
            MUL: begin
                result = operand1 * operand2;
                flagZ  = (result == 16'b0);
              end
              
            AND: begin
                result = operand1 & operand2;
                flagZ  = (result == 16'b0);
              end
              
            OR: begin
                result = operand1 | operand2;
                flagZ  = (result == 16'b0);
              end
              
            NAND: begin
                result = ~(operand1 & operand2);
                flagZ  = (result == 16'b0);
              end
              
            NOR: begin
                result = ~(operand1 | operand2);
                flagZ  = (result == 16'b0);
              end
              
            XOR: begin
                result = operand1 ^ operand2;
                flagZ  = (result == 16'b0);
              end
              
            default: begin
                result = 16'b0;
                flagC  = 1'b0;
                flagZ  = 1'b0;
              end
            endcase
          end             
            
endmodule
