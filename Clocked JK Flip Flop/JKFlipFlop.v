`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 25.01.2025 10:51:23
// Design Name: 
// Module Name: JKFlipFlop
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


module JKFlipFlop(output reg Q, output Qb, input J,K,clk);

    //Logic
    always@ (posedge clk)   begin
        
        if(J == 0 && K == 0)    
            Q <= Q;
           
        else if (J == 0 && K == 1)  
            Q <= 1'b0;
           
        else if (J == 1 && K == 0)  
            Q <= 1'b1;
           
        else if (J == 1 && K == 1)  
            Q <= ~Q;
           
        else Q <= 1'bx;     
      end
      
      assign Qb = ~Q;
    
endmodule
