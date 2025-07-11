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

module BWSM(input [3:0] x, y, output [7:0] p);

  wire t1, t2, t3, t4, t5, t6, t7, t8;
  wire t9, t10, t11, t12, t13, t14, t15, t16;
  wire t17, t18, t19, t20, t21, t22;

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
  full_adder fa12(.a(1'b1), .b(t21), .c(t22), .sum(p[7]), .carry());

endmodule

    
    

