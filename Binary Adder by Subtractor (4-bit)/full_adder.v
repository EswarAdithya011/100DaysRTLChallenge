`timescale 1ns/1ps
module full_adder(output sum,carry, input a,b,c);
  
  wire w1, w2, w3;

  half_adder HA1(.a(a), .b(b), .sum(w1), .carry(w2));
  half_adder HA2(.a(w1), .b(c), .sum(sum), .carry(w3));

  or or1(carry, w2, w3);

endmodule

