module top(
    input G1,
    input not_G2,
    input not_G3,
    input A,
    input B,
    input C,
    output [7:0] not_Y
);

decoder74LS138 decoder74LS138_inst (
    .G1(G1),
    .not_G2(not_G2),
    .not_G3(not_G3),
    .A(A),
    .B(B),
    .C(C),
    .not_Y(not_Y)
);

endmodule
