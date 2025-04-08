`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 08.04.2025 20:48:22
// Design Name: 
// Module Name: RegisterFile_tb
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


module RegisterFile_tb;
parameter DATA_WIDTH = 32;
parameter ADDR_WIDTH = 4;

reg RD, WR, en, rst, clk;
reg [DATA_WIDTH-1:0] ip;
reg [ADDR_WIDTH-1:0] sel_i, sel_o1, sel_o2;
wire [DATA_WIDTH-1:0] op1, op2;

    RegisterFile #(DATA_WIDTH, ADDR_WIDTH) DUT (
        .op1(op1), .op2(op2),
        .sel_i(sel_i), .sel_o1(sel_o1), .sel_o2(sel_o2),
        .ip(ip), .RD(RD), .WR(WR), .en(en), .rst(rst), .clk(clk)
    );

    initial  begin
        clk = 1'b0;
        forever #5 clk = ~clk;
      end
      
    always@ (posedge clk)   begin
        $display("Inputs Clock(clk) = %b, Reset(rst) = %b, Enable(en) = %b, Read Enable(RD) = %b, Write Enable(WR) = %b, Data(ip) = %h, I/P Select Line(sel_i) = %h, O/P Select Lines sel_o1 = %h sel_o2 = %h || Outputs op1 = %h, op2 = %h", clk, rst, en, RD, WR, ip, sel_i, sel_o1, sel_o2, op1, op2);
                end
    
    initial begin
        ip     = 32'h0;
        sel_i  = 4'b0;
        sel_o1 = 4'b0;
        sel_o2 = 4'b0;
        RD     = 1'b0;
        WR     = 1'b0;
        rst    = 1'b1;
        en     = 1'b0; 
        #20;
        
        rst    = 1'b0;
        en     = 1'b1; 
        #10;
        
        // Write Operation
        WR  = 1'b1;
        RD  = 1'b0;
      
        ip    = 32'habcd_efab;
        sel_i = 4'h0; #10;     // Data into Register - 0
        ip    = 32'h7777_7777;
        sel_i = 4'h1; #10;     // Data into Register - 1
        ip    = 32'h0643_0028;
        sel_i = 4'h2; #10;     // Data into Register - 2
        ip    = 32'h1122_88BB;
        sel_i = 4'h3; #10;     // Data into Register - 3
        
        #10;
        
        // Read Operation
        WR  = 1'b0;
        RD  = 1'b1;
        
        sel_o1 = 4'h0;
        sel_o2 = 4'h1; #10; // First Read
        sel_o1 = 4'h2;
        sel_o2 = 4'h3; #10; // Second Read
        
        #10;
        
        // Read & Write Operation
        WR  = 1'b1;
        RD  = 1'b1;
        
        ip = 32'hface_cafe; // Data into Register - 7
        sel_i = 4'h7;
        sel_o1 = 4'h7;
        sel_o2 = 4'h8; #10;
         
        ip = 32'hcade_bead; // Data into Register - 8
        sel_i = 4'h8;
        sel_o1 = 4'h7;
        sel_o2 = 4'h8; #50;
        
        $finish;
      end
        
endmodule
