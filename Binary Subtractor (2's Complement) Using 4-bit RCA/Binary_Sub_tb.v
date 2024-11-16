`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 10.11.2024 12:51:41
// Design Name: 
// Module Name: Binary_Sub_tb
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


module Binary_Sub_tb();
    reg [3:0] A, B;
    reg cin;
    wire [3:0] S;
    wire cout;

    integer min = 4'b0001;
    integer max = 4'b1111;

    Binary_Sub DUT(S, cout, A, B, cin);

    initial begin
        $monitor("Inputs Cin = %b, A = %b, B = %b || Outputs S = %b, Cout = %b ", cin, A, B, S, cout);
    end

    initial begin
        cin = 1;
        {A, B} = 0;
        repeat(10) begin 
            #10;
            A = min + ($random % (max - min + 1));
            B = min + ($random % (max - min + 1));
        end
        $finish;
    end
endmodule
