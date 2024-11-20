module top(
    input not_EN,
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] D,
    input [1:0] S,
    output reg [3:0] Y
);

mux41_4bit mux41_4bit_inst (
    .not_EN(not_EN),
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .S(S),
    .Y(Y)
);

endmodule
