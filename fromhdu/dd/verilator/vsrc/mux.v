module mux41_4bit (
    input not_EN,
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] D,
    input [1:0] S,
    output reg [3:0] Y
);

reg [3:0] Y_ori;

always @(*) begin
    case (S)
        2'b00: Y_ori = A;
        2'b01: Y_ori = B;
        2'b10: Y_ori = C;
        2'b11: Y_ori = D;
        default: Y_ori = 4'b1111;
    endcase
end

assign Y = not_EN ? 4'b0000 : Y_ori;

endmodule
