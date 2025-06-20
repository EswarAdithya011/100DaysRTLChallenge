module bin_to_thermo (
    input [7:0] din,
    output [255:0] dout
);

    genvar i;
    generate
        for (i = 0; i < 256; i = i + 1) begin : gen_thermometer
            assign dout[i] = (i <= din) ? 1'b1 : 1'b0;
        end
    endgenerate

endmodule