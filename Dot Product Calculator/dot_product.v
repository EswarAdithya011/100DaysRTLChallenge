//////////////////////////////////////////////////////////////////////////////////
// Company: Lovely Professional University (LPU)
// Engineer: Korrapolu Eswar Adithya
// 
// Create Date: 18.05.2025 18:10:53
// Design Name: Dot Product Computation Unit
// Module Name: dot_product
// Project Name: Vector Dot Product using FSM and Memory
// Target Devices: Xilinx XC7A100TCSG324-1 (Nexys 4 Board)
// Tool Versions: Xilinx Vivado 2024.1
// Description: 
// This testbench simulates the dot product computation logic for two 3-element
// vectors A and B using a finite state machine. The design accepts 8-bit 
// unsigned values via `din`, stores them, and computes the scalar product `dout`.
// The `run` output indicates valid output availability.
// 
// Dependencies: 
// - model.v (main DUT)
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// - Designed for educational and verification purposes.
// - Reset is synchronous active-low.
// 
//////////////////////////////////////////////////////////////////////////////////


module dot_product (
    input  [7:0] din,
    input        clk,
    input        resetn,
    output [17:0] dout,
    output        run
);

    // Memory to store 6 inputs
    reg [7:0] Dot_mem [0:5];

    // Counter
    reg [2:0] counter;

    // Wire declarations for computations
    wire [15:0] a1b1;
    wire [15:0] a2b2;
    wire [15:0] a3b3;

    // Counter logic
    always @(posedge clk) begin
        if (~resetn) begin
            counter <= 3'd0;
        end else begin
            if (counter == 3'd5) begin
                counter <= 3'd0;
            end else begin
                counter <= counter + 3'd1;
            end
        end
    end

    // Memory logic
    integer i;
    always @(posedge clk) begin
        if (~resetn) begin
            for (i = 0; i < 6; i = i + 1) begin
                Dot_mem[i] <= 8'd0;
            end
        end else begin
            Dot_mem[counter] <= din;
        end
    end

    // Combinational logic in your assign style
    assign run  = (counter == 3'd0);
    assign a1b1 = (run) ? Dot_mem[0] * Dot_mem[3] : a1b1;
    assign a2b2 = (run) ? Dot_mem[1] * Dot_mem[4] : a2b2;
    assign a3b3 = (run) ? Dot_mem[2] * Dot_mem[5] : a3b3;
    assign dout = a1b1 + a2b2 + a3b3;

endmodule

