module LS198 (
    input CP,
    input not_CR,
    input [1:0] S,
    input SR,
    input SL,
    input [7:0] D,
    output Q
);

reg [7:0] Q_reg;

always @(posedge CP or negedge not_CR) begin
    if (!not_CR) begin
        Q_reg <= 8'b00000000;
    end else if (s == 2'b01) begin
        Q_reg <= {SR, Q_reg[7:1]};
    end else if (s == 2'b10) begin
        Q_reg <= {Q_reg[6:0], SL};
    end else if (s == 2'b11) begin
        Q_reg <= D;
    end
end

assign Q = Q_reg;

endmodule