`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 08.04.2025 20:26:38
// Design Name: 
// Module Name: RegisterFile
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


module RegisterFile #(parameter DATA_WIDTH = 32, ADDR_WIDTH = 4)(
    output reg [DATA_WIDTH-1:0] op1, op2,
    input RD, WR, en, rst, clk,
    input [DATA_WIDTH-1:0] ip,
    input [ADDR_WIDTH-1:0] sel_i, sel_o1, sel_o2
);
    localparam DEPTH = 1 << ADDR_WIDTH;
    reg [DATA_WIDTH-1:0] RegFile [0:DEPTH-1];
    integer i;

    always @(posedge clk or posedge rst) begin
        if (en) begin
            if (rst) begin
                for (i = 0; i < DEPTH; i = i + 1)
                    RegFile[i] <= {DATA_WIDTH{1'b0}};
                op1 <= {DATA_WIDTH{1'bx}};
                op2 <= {DATA_WIDTH{1'bx}};
            end else begin
                case ({RD, WR})
                    2'b01: RegFile[sel_i] <= ip;
                    2'b10: begin
                        op1 <= RegFile[sel_o1];
                        op2 <= RegFile[sel_o2];
                    end
                    2'b11: begin
                        RegFile[sel_i] <= ip;
                        op1 <= RegFile[sel_o1];
                        op2 <= RegFile[sel_o2];
                    end
                    default: ;
                endcase
            end
        end
    end
endmodule

