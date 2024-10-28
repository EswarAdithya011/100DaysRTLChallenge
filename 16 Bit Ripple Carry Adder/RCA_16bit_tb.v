`timescale 1ns/1ps
module RCA_16bit_tb;
    reg [15:0] a,b;
    wire [15:0] sum;
    wire cout;  

    RCA_16bit RCA(.sum(sum), .cout(cout), .a(a), .b(b));

    initial
    begin
        {a,b} = 32'd00;
        #10 a = 16'd40000; b = 16'd6000;
        #10 a = 16'd17380; b = 16'd9700;
        #10 a = 16'd5654; b = 16'd16662;
        #10 a = 16'd65535; b = 16'd1;
        #10 $finish;
    end

    initial 
    begin
        $monitor("a = %d, b = %d, sum = %d, carry = %d", a, b, sum, cout);
    end
endmodule
