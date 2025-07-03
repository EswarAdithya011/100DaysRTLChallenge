//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2025 10:45:27
// Design Name: 
// Module Name: Mod6_tb
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

module RRA (
  input clk,
  input rst_n,
  input [3:0] req,
  output [3:0] gnt
);

  logic [1:0] pointer_reg;
  logic [3:0] grant_vector;

  // Priority Encoder (example, can be replaced with a more efficient one)
  always_comb begin
    case (pointer_reg)
      2'b00: begin
        if (req[0]) grant_vector = 4'b0001;
        else if (req[1]) grant_vector = 4'b0010;
        else if (req[2]) grant_vector = 4'b0100;
        else if (req[3]) grant_vector = 4'b1000;
        else grant_vector = 4'b0000;
      end
      2'b01: begin
        if (req[1]) grant_vector = 4'b0010;
        else if (req[2]) grant_vector = 4'b0100;
        else if (req[3]) grant_vector = 4'b1000;
        else if (req[0]) grant_vector = 4'b0001;
        else grant_vector = 4'b0000;
      end
      2'b10: begin
        if (req[2]) grant_vector = 4'b0100;
        else if (req[3]) grant_vector = 4'b1000;
        else if (req[0]) grant_vector = 4'b0001;
        else if (req[1]) grant_vector = 4'b0010;
        else grant_vector = 4'b0000;
      end
      2'b11: begin
        if (req[3]) grant_vector = 4'b1000;
        else if (req[0]) grant_vector = 4'b0001;
        else if (req[1]) grant_vector = 4'b0010;
        else if (req[2]) grant_vector = 4'b0100;
        else grant_vector = 4'b0000;
      end
    endcase
  end

  // Update Pointer based on granted request
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      pointer_reg <= 2'b00;
    end else begin
        case (grant_vector)
          4'b0001: pointer_reg <= 2'b01;
          4'b0010: pointer_reg <= 2'b10;
          4'b0100: pointer_reg <= 2'b11;
          4'b1000: pointer_reg <= 2'b00;
          default: pointer_reg <= pointer_reg; 
        endcase
      
    end
  end

  assign gnt = grant_vector;

endmodule