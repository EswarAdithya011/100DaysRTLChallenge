`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 02.04.2025 11:38:08
// Design Name: 
// Module Name: cmosnand
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


module cmosnand(output out, input in1, in2);
supply0 gnd;
supply1 vdd;
wire w;

    //Logic
    pmos p1(out,vdd,in2);
    pmos p2(out,vdd,in1);
    
    nmos n1(out,w,in1);
    nmos n2(w,gnd,in2);
        
endmodule
