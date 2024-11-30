`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 30.11.2024 22:22:41
// Design Name: 
// Module Name: mux32x1_tb
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


module mux32x1_tb;
reg [31:0]D;
reg [4:0]s;
reg en;
wire Y;

mux32x1 DUT(.D(D), .s(s), .en(en), .Y(Y));

    initial begin
        $monitor("Inputs Data(D) = %b, Select Line(s) = %b, Enable(en) = %b, Output(Y) = %b",D,s,en,Y);
        
        en = 1'b0; #5;
        D = 32'b0110_1001_0110_1001_0110_1001_0110_1001; #5;
        en = 1'b1; 
        s = 5'b00000;
            repeat(32)  begin
                s = s + 1'b1;
                    #10;
                    end
               $finish;
            end
            
endmodule
