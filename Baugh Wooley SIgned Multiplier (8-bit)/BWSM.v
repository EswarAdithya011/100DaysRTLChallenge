`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 25.05.2025 17:53:01
// Design Name: 
// Module Name: BWSM
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


// module baugh_wooley_signed_4bit (
//   input  [3:0] a,   // 4-bit multiplicand
//   input  [3:0] b,   // 4-bit multiplier
//   output [7:0] p    // 8-bit product
// );

//   wire [3:0] pp [3:0]; // Partial products

//   wire s0, c0;
//   wire s1, c1_0, c1_1;
//   wire s2, c2_0, c2_1, c2_2;
//   wire s3, c3_0, c3_1;
//   wire s4, c4;
//   wire s5, c5;

//   wire bw_const3 = 1'b1; // Baugh-Wooley constant for bit position 3
//   wire bw_const7 = 1'b1; // Baugh-Wooley constant for bit position 7

//   // Partial Product Generation (Baugh-Wooley Logic)
//   assign pp[0][0] = a[0] & b[0];
//   assign pp[0][1] = a[0] & b[1];
//   assign pp[0][2] = a[0] & b[2];
//   assign pp[0][3] = a[0] & (~b[3]);

//   assign pp[1][0] = a[1] & b[0];
//   assign pp[1][1] = a[1] & b[1];
//   assign pp[1][2] = a[1] & b[2];
//   assign pp[1][3] = a[1] & (~b[3]);

//   assign pp[2][0] = a[2] & b[0];
//   assign pp[2][1] = a[2] & b[1];
//   assign pp[2][2] = a[2] & b[2];
//   assign pp[2][3] = a[2] & (~b[3]);

//   assign pp[3][0] = (~a[3]) & b[0];
//   assign pp[3][1] = (~a[3]) & b[1];
//   assign pp[3][2] = (~a[3]) & b[2];
//   assign pp[3][3] = (~a[3]) & (~b[3]);

//   // Summation: Column by Column
//   assign p[0] = pp[0][0];

//   half_adder HA_col1(.a(pp[0][1]), .b(pp[1][0]), .sum(p[1]), .carry(c0));

//   full_adder FA_col2_0(.a(pp[0][2]), .b(pp[1][1]), .c(pp[2][0]), .sum(s0), .carry(c1_0));
//   full_adder FA_col2_1(.a(s0), .b(c0), .c(1'b0), .sum(p[2]), .carry(c1_1));

//   full_adder FA_col3_0(.a(pp[0][3]), .b(pp[1][2]), .c(pp[2][1]), .sum(s1), .carry(c2_0));
//   full_adder FA_col3_1(.a(s1), .b(pp[3][0]), .c(c2_0), .sum(s2), .carry(c2_1));
//   full_adder FA_col3_2(.a(s2), .b(c1_1), .c(bw_const3), .sum(p[3]), .carry(c2_2));

//   full_adder FA_col4_0(.a(pp[1][3]), .b(pp[2][2]), .c(pp[3][1]), .sum(s3), .carry(c3_0));
//   full_adder FA_col4_1(.a(s3), .b(c2_2), .c(1'b0), .sum(p[4]), .carry(c3_1));

//   full_adder FA_col5_0(.a(pp[2][3]), .b(pp[3][2]), .c(c3_1), .sum(p[5]), .carry(c4));

//   half_adder HA_col6(.a(pp[3][3]), .b(c4), .sum(p[6]), .carry(c5));

//   half_adder HA_col7(.a(c5), .b(bw_const7), .sum(p[7]), .carry(s0)); // s0 unused

// endmodule

module BWSM(input [3:0] x, y, output [7:0] p);

  supply1 one;

  wire t1, t2, t3, t4, t5, t6, t7, t8;
  wire t9, t10, t11, t12, t13, t14, t15, t16;
  wire t17, t18, t19, t20, t21, t22, t23;

  assign p[0] = x[0] & y[0];

  half_adder ha1(.a(x[1]&y[0]), .b(x[0]&y[1]), .sum(p[1]), .carry(t1));

  half_adder ha2(.a(x[2]&y[0]), .b(x[1]&y[1]), .sum(t2), .carry(t3));
  full_adder fa1(.a(t2), .b(t1), .c(x[0]&y[2]), .sum(p[2]), .carry(t4));

  half_adder ha3(.a(x[3]&~y[0]), .b(x[2]&y[1]), .sum(t5), .carry(t6));
  full_adder fa2(.a(t5), .b(t3), .c(x[1]&y[2]), .sum(t7), .carry(t8));
  full_adder fa3(.a(t7), .b(t4), .c(~x[0]&y[3]), .sum(t9), .carry(t10));
  full_adder fa4(.a(t9), .b(x[3]), .c(y[3]), .sum(p[3]), .carry(t11));

  full_adder fa5(.a(x[3]&~y[1]), .b(t6), .c(x[2]&y[2]), .sum(t12), .carry(t13));
  full_adder fa6(.a(t12), .b(t8), .c(~x[1]&y[3]), .sum(t14), .carry(t15));
  full_adder fa7(.a(t14), .b(t10), .c(t11), .sum(p[4]), .carry(t16));

  full_adder fa8(.a(x[3]&~y[2]), .b(t13), .c(~x[2]&y[3]), .sum(t17), .carry(t18));
  full_adder fa9(.a(t17), .b(t15), .c(t16), .sum(p[5]), .carry(t19));

  full_adder fa10(.a(~x[3]), .b(~y[3]), .c(x[3]&y[3]), .sum(t20), .carry(t21));
  full_adder fa11(.a(t20), .b(t18), .c(t19), .sum(p[6]), .carry(t22));
  full_adder fa12(.a(one), .b(t21), .c(t22), .sum(p[7]), .carry(t23));

endmodule

    
    

