`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 07.11.2024 20:37:05
// Design Name: 
// Module Name: Binary2BCD_tb
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



module Binary2BCD_tb;
reg [7:0]data;
wire [3:0] bit0, bit1, bit2;
wire [11:0] BCD;

Binary2BCD dut(data, bit0, bit1, bit2, BCD);

	initial
	   begin
            data=0; #10;
            data=255; #10;
            data=94; #10;
            data=22; #10;
            data=111; #10;
            data=123; #10;
            data=45; #10;
            data=87; #10;
            data=40; #10;
            data=68; #10;
            data=27; #10;
           $finish;
    end
	
	initial
        begin 
            $monitor("data: %d  BCD: %b",data,BCD);
        end
        
endmodule