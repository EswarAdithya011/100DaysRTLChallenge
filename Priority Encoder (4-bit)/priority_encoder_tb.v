`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 24.11.2024 00:14:32
// Design Name: 
// Module Name: priority_encoder_tb
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


module priority_encoder_tb();
reg [3:0]D;
wire [1:0]Y;
wire V;
integer i;
priority_encoder DUT(.D(D), .Y(Y), .V(V));

    initial begin
        $monitor("Input Data = %d || Output Y = %b, Valid = %b",D,Y,V);
        
        for(i = 0; i < 16; i = i + 1)   begin
            D = i;
            #10;
          end
          $finish;
       end
           
endmodule
