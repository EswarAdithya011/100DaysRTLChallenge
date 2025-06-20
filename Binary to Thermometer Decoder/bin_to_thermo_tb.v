`timescale 1ns / 1ps

module bin_to_thermo_tb;

    // DUT inputs
    reg  [7:0] din;

    // DUT outputs
    wire [255:0] dout;

    // Instantiate the DUT
    bin_to_thermo uut (
        .din(din),
        .dout(dout)
    );

    // Integer for loop
    integer i;

    initial begin
        $display("------ Binary to Thermometer Code Decoder Testbench ------");
        $display("Time\t\t din \t\t dout[255:248] ... dout[7:0]");

        for (i = 0; i < 10; i = i + 1) begin
            din = i;
            #2; // wait for logic to settle
            $display("%0t\t h%02x \t\t %h", $time, din, dout);
        end

        // Edge cases
        din = 8'd0;
        #2;
        $display("%0t\t h%02x \t\t %h", $time, din, dout);

        din = 8'd255;
        #2;
        $display("%0t\t h%02x \t\t %h", $time, din, dout);

        $display("----------------------------------------------------------");
        $finish;
    end

endmodule
