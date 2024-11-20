module fullAdder (
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
);
    assign Sum = A ^ B ^ Cin;
    assign Cout = (A & B) | (B & Cin) | (A & Cin);
endmodule

module Adder (
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] Sum,
    output Cout
);
    wire Cout0, Cout1, Cout2;
  
    fullAdder FA0 (
        .A(A[0]),
        .B(B[0]),
        .Cin(Cin),
        .Sum(Sum[0]),
        .Cout(Cout0)
    );

    fullAdder FA1 (
        .A(A[1]),
        .B(B[1]),
        .Cin(Cout0),
        .Sum(Sum[1]),
        .Cout(Cout1)
    );

    fullAdder FA2 (
        .A(A[2]),
        .B(B[2]),
        .Cin(Cout1),
        .Sum(Sum[2]),
        .Cout(Cout2)
    );

    fullAdder FA3 (
        .A(A[3]),
        .B(B[3]),
        .Cin(Cout2),
        .Sum(Sum[3]),
        .Cout(Cout)
    );

endmodule
