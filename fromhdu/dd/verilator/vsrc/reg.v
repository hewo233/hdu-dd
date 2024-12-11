module edReg(
    input not_OE,
    input CLR, //rst
    input CLK,
    input [7:0] D,
    output wire [7:0] Q
)

reg [7:0] Q_nxt;

always @(posedge CLK or posedge CLR) begin
    if (CLR) begin
        Q_nxt <= 8'b0;
    end else  begin
        Q_nxt <= D;
    end
end

assign Q = not_OE ? 8'bZ : Q_nxt;

endmodule
