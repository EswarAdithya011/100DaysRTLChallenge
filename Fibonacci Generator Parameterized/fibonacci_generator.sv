//////////////////////////////////////////////////////////////////////////////////
// Company:        Lovely Professional University
// Engineer:       Korrapolu Eswar Adithya
// 
// Create Date:    27.03.2025 10:45:27
// Design Name:    Fibonacci Generator
// Module Name:    fibonaci_gen
// Project Name:   Fibonacci Series Generator (Parameterized)
// Target Devices: Generic FPGA / Simulation
// Tool Versions:  Vivado 2024.1
// Description: 
//                This module generates a Fibonacci sequence of F elements.
//                It is parameterized by Seed1 and Seed2 as the first two terms,
//                and F as the number of terms to generate.
//                Values are printed using $write in simulation.
//
// Dependencies:   None
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//                - Intended for simulation only
//                - No synthesizable logic
//////////////////////////////////////////////////////////////////////////////////

module fibonacci_gen #(
    parameter Seed1 = 0,
    parameter Seed2 = 1,
    parameter F     = 10
)(
    output logic [31:0] fib_series [0:F-1]
);

    always_comb begin
        fib_series[0] = Seed1;
        fib_series[1] = Seed2;

        for (int i = 2; i < F; i++) begin
            fib_series[i] = fib_series[i-1] + fib_series[i-2];
        end
    end

endmodule

