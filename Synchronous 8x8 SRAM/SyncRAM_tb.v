`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 11.04.2025 10:36:46
// Design Name: 
// Module Name: SyncRAM_tb
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


module SyncRAM_tb();

    parameter DATA_WIDTH = 8;
    parameter ADDR_WIDTH = 8;
    parameter DEPTH = 256;

    reg [DATA_WIDTH - 1:0] Datain;
    reg [ADDR_WIDTH - 1:0] Addr;
    reg CS, WR, RD, clk, rst;
    wire [DATA_WIDTH - 1:0] Dataout;

    SyncRAM #(DATA_WIDTH, ADDR_WIDTH, DEPTH) DUT (
        .Datain(Datain), 
        .Dataout(Dataout), 
        .Addr(Addr), 
        .CS(CS), 
        .WR(WR), 
        .RD(RD), 
        .clk(clk), 
        .rst(rst)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $monitor("Time: %0t, clk=%b, rst=%b, Addr=%h, CS=%b, WR=%b, RD=%b, Datain=%b || Dataout=%b",
                 $time, clk, rst, Addr, CS, WR, RD, Datain, Dataout);

        CS = 0; WR = 0; RD = 0; rst = 0; Addr = 0; Datain = 0;

        #10 CS = 1; rst = 1;
        #10 rst = 0;

        // Write operations
        WR = 1; RD = 0;
        Addr = 8'h00; Datain = 8'hA1; #10;
        Addr = 8'h01; Datain = 8'hB2; #10;
        Addr = 8'h02; Datain = 8'hC3; #10;
        Addr = 8'h03; Datain = 8'hD4; #10;

        // Read operations
        WR = 0; RD = 1;
        Addr = 8'h00; #10;
        Addr = 8'h01; #10;
        Addr = 8'h02; #10;
        Addr = 8'h03; #10;

        #20 $finish;
    end

endmodule

