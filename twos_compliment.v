module twos_compliment(
    input [7:0] A,
    output [7:0] Y,
    output Cout
);
    wire [7:0] A_not;
    wire [7:0] carry; 
    assign A_not = ~A; 
  

  
    full_adder real_zero_inst(
        .A(A_not[0]),
        .B(1'b1),
        .Cin(1'b0),
        .Y(Y[0]),
        .Cout(carry[0])
    );

    full_adder one_inst(
        .A(A_not[1]),
        .B(1'b0),
        .Cin(carry[0]),
        .Y(Y[1]),
        .Cout(carry[1])
    );

    full_adder two_inst(
        .A(A_not[2]),
        .B(1'b0),
        .Cin(carry[1]),
        .Y(Y[2]),
        .Cout(carry[2])
    );

    full_adder three_inst(
        .A(A_not[3]),
        .B(1'b0),
        .Cin(carry[2]),
        .Y(Y[3]),
        .Cout(carry[3])
    );

    full_adder four_inst(
        .A(A_not[4]),
        .B(1'b0),
        .Cin(carry[3]),
        .Y(Y[4]),
        .Cout(carry[4])
    );

    full_adder five_inst(
        .A(A_not[5]),
        .B(1'b0),
        .Cin(carry[4]),
        .Y(Y[5]),
        .Cout(carry[5])
    );

    full_adder six_inst(
        .A(A_not[6]),
        .B(1'b0),
        .Cin(carry[5]),
        .Y(Y[6]),
        .Cout(carry[6])
    );

    full_adder seven_inst(
        .A(A_not[7]),
        .B(1'b0),
        .Cin(carry[6]),
        .Y(Y[7]),
        .Cout(Cout)
    );

endmodule

