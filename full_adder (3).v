module full_adder(
    input A,B,Cin,// Declare your A/B inputs
    output Y, // Declare Y output
    output Cout // Declare carry output
);
    wire sum;
    assign sum = A ^ B; 
    assign Y = sum ^ Cin;// Enter logic equation here
    assign Cout = sum & Cin | (A & B); 
endmodule// Implement module called full_adder