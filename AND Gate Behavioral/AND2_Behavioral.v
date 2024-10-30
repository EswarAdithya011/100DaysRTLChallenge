module And2_Behavioral(output reg Y,input A,B);
always@ (A or B)
 begin
	if(A == 1'b1 & B == 1'b1)
	 begin
	  Y=1'b1;
	 end
	else
	 begin
	 Y=1'b0;
	 end
 end
endmodule    
