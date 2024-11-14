`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 05.11.2024 00:00:11
// Design Name: 
// Module Name: EVM
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


module EVM(
    output reg [4:0] Dout, Pled, Party1, Party2, Party3, Party4, Nota,
    output reg [2:0] winner,
    output reg invalid, 
    input clk, rst, vo_en,
    input [4:0] vo_switch
);
    parameter LED_TIMER_MAX = 2;
    reg [3:0] led_timer [4:0]; 
    integer i;    

    always @(posedge clk or negedge rst) begin
        if (~rst) begin
            {Dout, Pled, Party1, Party2, Party3, Party4, Nota, invalid} = 'b0;
            for (i = 0; i < 5; i = i + 1) begin
                led_timer[i] = 0;
                Pled[i] = 1'b0; 
            end
        end else begin
            invalid = 1'b0; 

            // Voting logic
            if (vo_en) begin
                case (vo_switch)
                    5'b00001: begin
                        Party1 = Party1 + 1'b1;
                        Pled[0] = 1'b1;
                        led_timer[0] = LED_TIMER_MAX; 
                    end
                    5'b00010: begin
                        Party2 = Party2 + 1'b1;
                        Pled[1] = 1'b1;
                        led_timer[1] = LED_TIMER_MAX; 
                    end
                    5'b00100: begin
                        Party3 = Party3 + 1'b1;
                        Pled[2] = 1'b1;
                        led_timer[2] = LED_TIMER_MAX; 
                    end
                    5'b01000: begin
                        Party4 = Party4 + 1'b1;
                        Pled[3] = 1'b1;
                        led_timer[3] = LED_TIMER_MAX; 
                    end
                    5'b10000: begin
                        Nota = Nota + 1'b1;
                        Pled[4] = 1'b1;
                        led_timer[4] = LED_TIMER_MAX; 
                    end
                    default: invalid = 1'b1;
                endcase
            end else begin
                {Party1, Party2, Party3, Party4, Nota} = 'b0;
            end

            // Timer countdown logic for LEDs
            for (i = 0; i < 5; i = i + 1) begin
                if (led_timer[i] > 0) begin
                    led_timer[i] = led_timer[i] - 1;
                end 
                if (led_timer[i] == 0) begin
                    Pled[i] = 1'b0; 
                end
            end
            
            Dout = Party1 + Party2 + Party3 + Party4 + Nota;
        
            if(Party1 > Party2 && Party1 > Party3 && Party1 > Party4 && Party1 > Nota)
                winner = 3'b001;
            else if(Party2 > Party1 && Party2 > Party3 && Party2 > Party4 && Party2 > Nota)
                winner = 3'b010;
            else if(Party3 > Party1 && Party3 > Party2 && Party3 > Party4 && Party3 > Nota)
                winner = 3'b011;
            else if(Party4 > Party1 && Party4 > Party2 && Party4 > Party3 && Party4 > Nota)
                winner = 3'b100;
            else
                winner = 3'b000; // When Any two parties have same no. of votes
        end
    end
endmodule


