`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 19.11.2024 22:22:42
// Design Name: 
// Module Name: FA_Using_Dec_tb
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

module FPA_nbit_tb;

    defparam dut.N = 8;

    logic                           i_clk;
    logic                           i_rst;
    logic [dut.N - 1 : 0]           i_request;
    logic [dut.N - 1 : 0]           o_grant;

    FPA_nbit dut (
        .i_rst(i_rst),
        .i_clk(i_clk),
        .i_request(i_request),
        .o_grant(o_grant)
    );

    initial begin
        i_clk = 0;
        forever #5 i_clk = ~i_clk;
    end

    initial begin
        $display("Time \t Reset \t Request \t Grant");
        $monitor("%0t \t %b \t %b \t %b", $time, i_rst, i_request, o_grant);

        i_rst = 1;
        i_request = 4'b0000;
        #10;

        i_rst = 0;

//        #10 i_request = 4'b0001;
//        #10 i_request = 4'b0010;
//        #10 i_request = 4'b0100;
//        #10 i_request = 4'b1000;
//        #10 i_request = 4'b1101;
//        #10 i_request = 4'b0111;
//        #10 i_request = 4'b0011;
//        #10 i_request = 4'b0000;

            repeat(10)  begin
                #10;
                i_request = $random % (2 ** dut.N);
            end

        #20 $finish;
    end

endmodule