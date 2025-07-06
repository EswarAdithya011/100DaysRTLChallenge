//////////////////////////////////////////////////////////////////////////////////
// Company:        Lovely Professional University
// Engineer:       Korrapolu Eswar Adithya
// 
// Create Date:    27.03.2025 10:50:00
// Design Name:    Fibonacci Generator Testbench
// Module Name:    fibonaci_gen_tb
// Project Name:   Fibonacci Series Generator (Parameterized)
// Target Devices: Simulation only
// Tool Versions:  Vivado 2024.1
// Description: 
//                Testbench for the Fibonacci Generator module.
//                Instantiates `fibonaci_gen` with default parameters,
//                and observes printed Fibonacci series on simulation console.
//
// Dependencies:   fibonaci_gen.sv
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//                - Uses initial blocks to drive and observe
//                - No input/output ports
//////////////////////////////////////////////////////////////////////////////////


module fibonacci_gen_tb;

    parameter F = 10;
    logic [31:0] fib_series [0:F-1];

    fibonacci_gen #(.Seed1(0), .Seed2(1), .F(F)) dut (
        .fib_series(fib_series)
    );

    initial begin
        #1;
        for (int i = 0; i < F; i++)
            $display("Fibonacci[%0d] = %0d", i, fib_series[i]);
        $finish;
    end

endmodule


