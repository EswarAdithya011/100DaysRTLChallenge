`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 07.05.2025 00:02:42
// Design Name: 
// Module Name: parity_unit
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


module parity_unit (input [3:0] data_in, input mode, input parity_bit_in, output parity_bit_out, output parity_ok);
wire generated_parity;

assign generated_parity = ^data_in;

assign parity_bit_out = (mode == 1'b0) ? generated_parity : 1'bz;
assign parity_ok      = (mode == 1'b1) ? (~^{data_in, parity_bit_in}) : 1'bz;

endmodule
