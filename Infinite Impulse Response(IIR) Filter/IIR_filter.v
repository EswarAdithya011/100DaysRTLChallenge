//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 25.05.2025 17:53:18
// Design Name: 
// Module Name: IIR_Filter
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
/////////////////////////////////////////////////////////////////////////////////


module IIR_Filter(
    input clk,
    input rst,
    input [3:0] a, x,
    output [3:0] y
);
    reg [3:0] y_val;

    wire [7:0] baugh_product_actual;

    BWSM baugh_multiplier (
        .x(a),
        .y(y_val),
        .p(baugh_product_actual)
    );

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            y_val <= x;
        end
        else begin
            y_val <= (baugh_product_actual & 8'h0F) + x; //To show intentional truncation using bitmasking
        end
    end
    assign y = y_val;
    
endmodule