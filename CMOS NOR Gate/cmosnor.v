`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 02.04.2025 11:57:18
// Design Name: 
// Module Name: cmosnor
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


module cmosnor(output y, input in1, in2);
supply1 vdd;
supply0 gnd;
wire w;

    //Logic
    pmos p1(y, w, in1);
    pmos p2(w,vdd,in2);
    
    nmos n1(y, gnd, in1);
    nmos n2(y, gnd, in2);
    
endmodule
