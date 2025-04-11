`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 11.04.2025 10:36:28
// Design Name: 
// Module Name: SyncRAM
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


module SyncRAM #(parameter DATA_WIDTH = 8, ADDR_WIDTH = 8, DEPTH = 256)
                (
                 output reg [DATA_WIDTH - 1:0] Dataout, 
                 input      [DATA_WIDTH - 1:0] Datain,
                 input      [ADDR_WIDTH - 1:0] Addr,
                 input CS, WR, RD, clk, rst
                );

    reg [DATA_WIDTH - 1:0] SRAM [0:DEPTH - 1];
    integer i;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < DEPTH; i = i + 1) begin
                SRAM[i]   <= {DATA_WIDTH{1'b0}};
            end
            Dataout <= {DATA_WIDTH{1'b0}};
        end
        else if (CS) begin
            if (WR && !RD)
                SRAM[Addr] <= Datain;
            else if (RD && !WR)
                Dataout <= SRAM[Addr];
        end
    end

endmodule

