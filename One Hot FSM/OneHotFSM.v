`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 13.04.2025 23:51:59
// Design Name: 
// Module Name: OneHotFSM
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


module OneHot_FSM (input clk, rst, start, output reg done, output reg [3:0] state);

parameter IDLE    = 4'b0001;
parameter LOAD    = 4'b0010;
parameter PROCESS = 4'b0100;
parameter DONE    = 4'b1000;

always @(posedge clk or posedge rst) begin
    if (rst)
        state <= IDLE;
    else begin
        case (state)
            IDLE:    state <= (start) ? LOAD : IDLE;
            LOAD:    state <= PROCESS;
            PROCESS: state <= DONE;
            DONE:    state <= IDLE;
            default: state <= IDLE;
        endcase
    end
end

always @(*) begin
    done = (state == DONE);
end

endmodule

