module half_adder_tb();

  reg   a,b;
  wire  sum,carry;
  integer i;

  half_adder HA1(.a(a), .b(b), .sum(sum), .carry(carry));

  initial 
  begin
    {a,b} = 2'b00;
  end

  initial
  begin 
    for (i=0;i<4;i=i+1)
    begin
      {a,b}=i;
      #10;
    end
  end

  initial $monitor("Input a=%b, b=%b, Output sum =%b, carry=%b",
                  a,b,sum,carry);

  initial #100 $finish;

endmodule
