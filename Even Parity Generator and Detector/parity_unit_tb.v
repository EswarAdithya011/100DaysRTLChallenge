`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 07.05.2025 00:02:56
// Design Name: 
// Module Name: parity_unit_tb
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


`timescale 1ns / 1ps

module parity_unit_tb;
reg [3:0] data_in;
reg mode;
reg parity_bit_in;
wire parity_bit_out;
wire parity_ok;

    parity_unit uut (.data_in(data_in), .mode(mode), .parity_bit_in(parity_bit_in), .parity_bit_out(parity_bit_out), .parity_ok(parity_ok));

    initial begin
        $monitor("Time=%0t | mode=%b | data_in=%b | parity_bit_in=%b | parity_bit_out=%b | parity_ok=%b", $time, mode, data_in, parity_bit_in, parity_bit_out, parity_ok);
                  
        mode = 0;
        data_in = 4'b1010;
        #10;

        data_in = 4'b1111;
        #10;
        
        data_in = 4'b1101;
        #10;
        
        data_in = 4'b0001;
        #10;
        
        mode = 1;
        data_in = 4'b1010;
        parity_bit_in = ~^data_in;
        #10;

        parity_bit_in = ~^data_in ^ 1'b1;
        #10;

        data_in = 4'b1111;
        parity_bit_in = ~^data_in;
        #10;
        
        data_in = 4'b1101;
        parity_bit_in = ~^data_in;
        #10;
        
        data_in = 4'b0001;
        parity_bit_in = ~^data_in;
        #10;
        
        $finish;
    end

endmodule
