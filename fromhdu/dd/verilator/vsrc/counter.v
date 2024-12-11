module count74LS191(
    input not_LD,
    input not_CT,
    input UD, // 0 add 1 sub
    input CP,
    input [3:0] D,
    output [3:0] Q
)

reg [3:0] Q_nxt;

always @(posedge CP or negedge not_LD) begin
    if(!not_LD) begin
        Q_nxt <= D;
    end else if (!not_CT) begin
        if (UD) begin
            Q_nxt <= Q_nxt - 1;
        end else begin
            Q_nxt <= Q_nxt + 1;
        end
    end
end

assign Q = Q_nxt;

endmodule