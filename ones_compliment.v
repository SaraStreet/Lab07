module ones_compliment(
    input  [3:0] A, B,
    output [3:0] Y,
    output Cout
);

    wire [7:0] carry; //connection
    wire [3:0] sum; //addition variable 

    // First ripple stage: A + B
    full_adder real_zero_inst(
        .A(A[0]),
        .B(B[0]),
        .Cin(1'b0),
        .Y(sum[0]),
        .Cout(carry[0])
    );

    full_adder one_inst(
        .A(A[1]),
        .B(B[1]),
        .Cin(carry[0]),
        .Y(sum[1]),
        .Cout(carry[1])
    );

    full_adder two_inst(
        .A(A[2]),
        .B(B[2]),
        .Cin(carry[1]),
        .Y(sum[2]),
        .Cout(carry[2])
    );

    full_adder three_inst(
        .A(A[3]),
        .B(B[3]),
        .Cin(carry[2]),
        .Y(sum[3]),
        .Cout(carry[3])
    );

    // End-around carry stage
    full_adder four_inst(
        .A(sum[0]),
        .B(carry[3]),
        .Cin(1'b0),
        .Y(Y[0]),
        .Cout(carry[4])
    );

    full_adder five_inst(
        .A(sum[1]),
        .B(1'b0),
        .Cin(carry[4]),
        .Y(Y[1]),
        .Cout(carry[5])
    );

    full_adder six_inst(
        .A(sum[2]),
        .B(1'b0),
        .Cin(carry[5]),
        .Y(Y[2]),
        .Cout(carry[6])
    );

    full_adder seven_inst(
        .A(sum[3]),
        .B(1'b0),
        .Cin(carry[6]),
        .Y(Y[3]),
        .Cout(Cout)
    );

endmodule
