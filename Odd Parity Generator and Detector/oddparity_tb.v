`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 17.05.2025 14:17:53
// Design Name: 
// Module Name: oddparity_tb
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


module tb_oddparity;

    reg [3:0] datain;
    reg mode;
    reg paritybit;
    wire paritycheck;
    wire paritygenerate;

    oddparity uut (
        .paritycheck(paritycheck),
        .paritygenerate(paritygenerate),
        .datain(datain),
        .mode(mode),
        .paritybit(paritybit)
    );

    initial begin
        $monitor("Time=%0dns | mode=%b | datain=%b | paritybit=%b | paritygenerate=%b | paritycheck=%b",
                 $time, mode, datain, paritybit, paritygenerate, paritycheck);

        // Odd Parity Generation (mode = 0)
        mode = 0; datain = 4'b0000; #10;
        datain = 4'b0001; #10;
        datain = 4'b0011; #10;
        datain = 4'b0101; #10;
        datain = 4'b1111; #10;
        datain = 4'b1001; #10;
        datain = 4'b1010; #10;
        datain = 4'b1100; #10;

        // Odd Parity Detection (mode = 1)
        mode = 1; datain = 4'b0000; paritybit = 1; #10;
        datain = 4'b0001; paritybit = 0; #10;
        datain = 4'b0011; paritybit = 0; #10;
        datain = 4'b1111; paritybit = 0; #10;
        datain = 4'b1110; paritybit = 1; #10;
        datain = 4'b1010; paritybit = 1; #10;
        datain = 4'b1011; paritybit = 0; #10;

        $finish;
    end

endmodule
