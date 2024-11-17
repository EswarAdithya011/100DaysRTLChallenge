`timescale 1ns/1ps
module RCA_16bit(output cout, output [15:0] sum, input [15:0] a, b);
    wire [14:0] c;

    full_adder F0(.a(a[0]), .b(b[0]), .c(1'b0), .sum(sum[0]), .carry(c[0]));
    full_adder F1(.a(a[1]), .b(b[1]), .c(c[0]), .sum(sum[1]), .carry(c[1]));
    full_adder F2(.a(a[2]), .b(b[2]), .c(c[1]), .sum(sum[2]), .carry(c[2]));
    full_adder F3(.a(a[3]), .b(b[3]), .c(c[2]), .sum(sum[3]), .carry(c[3]));
    full_adder F4(.a(a[4]), .b(b[4]), .c(c[3]), .sum(sum[4]), .carry(c[4]));
    full_adder F5(.a(a[5]), .b(b[5]), .c(c[4]), .sum(sum[5]), .carry(c[5]));
    full_adder F6(.a(a[6]), .b(b[6]), .c(c[5]), .sum(sum[6]), .carry(c[6]));
    full_adder F7(.a(a[7]), .b(b[7]), .c(c[6]), .sum(sum[7]), .carry(c[7]));
    full_adder F8(.a(a[8]), .b(b[8]), .c(c[7]), .sum(sum[8]), .carry(c[8]));
    full_adder F9(.a(a[9]), .b(b[9]), .c(c[8]), .sum(sum[9]), .carry(c[9]));
    full_adder F10(.a(a[10]), .b(b[10]), .c(c[9]), .sum(sum[10]), .carry(c[10]));
    full_adder F11(.a(a[11]), .b(b[11]), .c(c[10]), .sum(sum[11]), .carry(c[11]));
    full_adder F12(.a(a[12]), .b(b[12]), .c(c[11]), .sum(sum[12]), .carry(c[12]));
    full_adder F13(.a(a[13]), .b(b[13]), .c(c[12]), .sum(sum[13]), .carry(c[13]));
    full_adder F14(.a(a[14]), .b(b[14]), .c(c[13]), .sum(sum[14]), .carry(c[14]));
    full_adder F15(.a(a[15]), .b(b[15]), .c(c[14]), .sum(sum[15]), .carry(cout));
    
endmodule
