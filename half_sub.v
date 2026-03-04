module half_sub(
    input A,B,// Declare your A/B inputs
    output Y, // Declare Y output
    output Borrow // Declare Borrow output
);

    assign Y = (A ^ B);
    assign Borrow = (Y & B & ~A);
endmodule
