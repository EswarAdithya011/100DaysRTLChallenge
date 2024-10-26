module Logic_gates_tb();
reg A,B;
wire [7:0]Y;
integer i;
Logic_gates UUT(A,B,Y);

task initialize;
 begin
  {A,B} = 0;
 end
endtask

task delay();
 begin
  #15;
 end
endtask

initial
 begin
  initialize;
  delay;
   
   for(i=0;i<4;i=i+1)
    begin
     {A,B} = i;
     delay;
    end
  #100 $finish;
 end

initial $monitor("Inputs A = %b, B = %b, Output Y = %b",A,B,Y);

endmodule