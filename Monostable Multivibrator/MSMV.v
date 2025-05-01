`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithys
// 
// Create Date: 01.05.2025 22:26:08
// Design Name: 
// Module Name: MSMV
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


module MSMV #(parameter pulse_width = 15)(output reg pulse, input clk, rst, trigger); // Pulse Width 10 means output high for 10 clock cycles
reg pulse_active;
reg [4:0]count;

    always@ (posedge clk or posedge rst)   
     begin
        if(rst)
         begin
            pulse <= 1'b0;
            count <= 0;
            pulse_active <= 1'b0;
         end
        
        else
         begin
            if(trigger && !pulse_active)
             begin  
                pulse <= 1'b1;
                pulse_active <= 1'b1;
                count <= 1'b1;
             end
             
             else 
              begin
                if(pulse_active)
                 begin
                    if(count != pulse_width)
                        count <= count + 1'b1;
                    
                    else
                     begin
                        pulse <= 1'b0;
                        pulse_active <= 1'b0;
                        count <= 5'd0;
                     end
                 end
              end
         end
     end
     
            
        
endmodule
