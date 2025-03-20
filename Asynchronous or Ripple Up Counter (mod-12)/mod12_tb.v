`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 20.03.2025 10:39:23
// Design Name: 
// Module Name: mod12_tb
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


module mod12_tb();  
reg clk, clr;  
wire [3:0] Q;  

mod12 DUT(.Q(Q), .clk(clk), .clr(clr));  
    
    always #5 clk = ~clk;  
    
    initial begin  
        clk = 1'b0;  
        clr = 1'b1; #10;  
        clr = 1'b0;  
    end  
    
    always @(posedge clk) begin  
        $display("Time: %t, clk = %b, clr = %b || Q = %b", $time, clk, clr, Q);  
    end  
    
    initial begin  
        #150 $finish;  
    end  

endmodule
