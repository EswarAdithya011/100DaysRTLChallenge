`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 25.05.2025 13:23:06
// Design Name: 
// Module Name: BarrelShifter_tb
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


module BarrelShifter_tb;
reg [7:0] datain;
reg [2:0] shift;
wire [7:0] dataout;

BarrelShifter DUT(.datain(datain), .shift(shift), .dataout(dataout));

initial begin
    $monitor("Time=%0t | shift=%b | datain=%b | dataout=%b", $time, shift, datain, dataout);

    datain = 8'b10111011;

    shift = 3'b000; #10;
    shift = 3'b001; #10;
    shift = 3'b010; #10;
    shift = 3'b011; #10;
    shift = 3'b100; #10;
    shift = 3'b101; #10;
    shift = 3'b110; #10;
    shift = 3'b111; #10;

    $finish;
end
endmodule

