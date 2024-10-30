module And2_Behavioral_TB;
reg P,Q;
wire R;

And2_Behavioral A1(.A(P),.B(Q),.Y(R));

initial
 begin
    P=0; Q=0;
#10 P=0; Q=1;
#10 P=1; Q=0;
#10 P=1; Q=1;
#10 $finish;
 end
endmodule
