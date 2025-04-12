`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 12.04.2025 16:53:06
// Design Name: 
// Module Name: ROM16x16_tb
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


module ROM16x16_tb;
reg [3:0] Addr;
wire [15:0] Data;

ROM16x16 DUT(.Data(Data), .Addr(Addr));

    initial begin
        $display("Addr  | Data");
        $display("------------");
            
        Addr = 4'd0;
        repeat (16) begin
            #10;
            $display("  %d   | %h", Addr, Data);
            Addr = Addr + 1;
        end

        #10 $finish;
    end
    
endmodule
