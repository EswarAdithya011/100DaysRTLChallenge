`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 05.11.2024 00:00:57
// Design Name: 
// Module Name: EVM_tb
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


module EVM_tb();
    reg clk, rst, vo_en;
    reg [4:0] vo_switch;
    wire [4:0] Dout, Pled, Party1, Party2, Party3, Party4, Nota;
    wire [2:0] winner;
    wire invalid;
    parameter D = 10;
    integer i;
    EVM DUT(Dout, Pled, Party1, Party2, Party3, Party4, Nota, winner, invalid, clk, rst, vo_en, vo_switch);
    
    initial begin 
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        rst = 0; vo_en = 1; #D;
        rst = 1; #10;
        
        for (i = 0; i<64; i = i+1)
            begin
                vo_switch = i; 
                #D;
            end
        
        if(winner != 3'b000)
            $display("\n Congrats!! Party %d  << Won the Elections >>\n ",winner);
        else
            $display("\n Elections should be reconducted [or] Take a Lottery.. \n ");
            
        $finish;
    end

    initial begin
        $monitor("clk = %b, rst = %b, vo_en = %b, vo_switch = %b || Dout = %d, Pled = %b, invalid = %b, Party1 = %d, Party2 = %d, Party3 = %d, Party4 = %d, Nota = %d", 
                 clk, rst, vo_en, vo_switch, Dout, Pled, invalid, Party1, Party2, Party3, Party4, Nota);
    end
    
endmodule

