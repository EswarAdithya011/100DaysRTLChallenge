`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2025 00:37:15
// Design Name: 
// Module Name: cmosnot
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


module cmosnot(output out, input in);
supply1 vdd;
supply0 gnd;

    //Logic
    nmos n1(out,gnd,in);
    pmos p1(out,vdd,in);
    
endmodule
