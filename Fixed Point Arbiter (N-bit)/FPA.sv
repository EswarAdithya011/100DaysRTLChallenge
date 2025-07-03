//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 19.11.2024 22:22:42
// Design Name: 
// Module Name: FA_Using_Dec_tb
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

module FPA_nbit #(parameter N = 4) (
    input                     i_rst,
    input                     i_clk,
    input  logic [N - 1 : 0]  i_request,
    output logic [N - 1 : 0]  o_grant
);

    logic [N - 1 : 0] grant;

    always_ff @(posedge i_clk or posedge i_rst) begin
        if (i_rst) begin
            grant <= {N{1'b0}};
        end
        else begin
            for (int i = N - 1; i >= 0; i--) begin  // reverse loop from N-1 to 0
                case (i_request[i])
                    1'b1: begin
                        grant = 1'b1 << i;
                        break;
                    end
                    default: grant = {N{1'b0}};
                endcase
            end
        end
    end

    assign o_grant = grant;

endmodule
