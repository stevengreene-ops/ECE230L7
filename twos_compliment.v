module twos_compliment (
    input [7:0] in,
    output [7:0] out
);
    wire [7:0] inv = ~in;
    wire [8:0] c;
   
    assign c[0] = 1'b1; // This provides the "+1" for 2's complement

    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin : bit_loop
            full_adder fa_inst (
                .A(inv[i]),
                .B(1'b0),
                .Cin(c[i]),
                .Y(out[i]),
                .Cout(c[i+1])
            );
        end
    endgenerate
endmodule
