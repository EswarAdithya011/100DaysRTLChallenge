`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 07.04.2025 14:42:43
// Design Name: 
// Module Name: EdgeDet_tb
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


module EdgeDet_tb();
    reg signal, clk, rst;
    wire Rise_Edge, Fall_Edge, Dual_Edge;

    EdgeDet DUT(
        .Rise_Edge(Rise_Edge), 
        .Fall_Edge(Fall_Edge), 
        .Dual_Edge(Dual_Edge), 
        .signal(signal), 
        .clk(clk),
        .rst(rst)
    );

    initial begin
        clk = 1'b0;
        forever #2 clk = ~clk;
    end

    initial begin
        $monitor("Time = %0t | clk = %b | rst = %b | signal = %b || Rise = %b, Fall = %b, Dual = %b",
                  $time, clk, rst, signal, Rise_Edge, Fall_Edge, Dual_Edge);
                  
        rst = 1'b1; signal = 1'b0; #5;
        rst = 1'b0;

        #10 signal = 1;
        #10 signal = 0;
        #10 signal = 1;
        #10 signal = 1;
        #10 signal = 0;
        #10 signal = 0;
        #10 signal = 1;
        #10;

        $finish;
    end
endmodule

