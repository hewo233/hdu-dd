module decoder74LS138(
    input G1,
    input not_G2,
    input not_G3,
    input A,
    input B,
    input C,
    output reg [7:0] not_Y
);

wire enable;

assign enable = G1 & (!not_G2) & (!not_G3);

wire [2:0] index;
reg [7:0] not_Y_ori;
assign index = {C, B, A};

always @(*) begin
    case (index)
        3'b000: not_Y_ori = 8'b11111110;
        3'b001: not_Y_ori = 8'b11111101;
        3'b010: not_Y_ori = 8'b11111011;
        3'b011: not_Y_ori = 8'b11110111;
        3'b100: not_Y_ori = 8'b11101111;
        3'b101: not_Y_ori = 8'b11011111;
        3'b110: not_Y_ori = 8'b10111111;
        3'b111: not_Y_ori = 8'b01111111;
        default: not_Y_ori = 8'b11111111;
    endcase 
end

assign not_Y = enable ? not_Y_ori : 8'b11111111;

endmodule