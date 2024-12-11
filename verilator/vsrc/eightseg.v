module eightseg (
    input [3:0] data_in,
    output reg [7:0] seg
);

always @(*) begin
    case(data_in)
        4'b0000: seg = 8'b0000_0011;
        4'b0001: seg = 8'b1001_1111;
        4'b0010: seg = 8'b0010_0101;
        4'b0011: seg = 8'b0000_1101;
        4'b0100: seg = 8'b1001_1001;
        4'b0101: seg = 8'b0100_1001;
        4'b0110: seg = 8'b0100_0001;
        4'b0111: seg = 8'b0001_1111;
        4'b1000: seg = 8'b0000_0001;
        4'b1001: seg = 8'b0000_1001;
        4'b1010: seg = 8'b0001_0001;
        4'b1011: seg = 8'b1100_0001;
        4'b1100: seg = 8'b0110_0011;
        4'b1101: seg = 8'b1000_0101;
        4'b1110: seg = 8'b0110_0001;
        4'b1111: seg = 8'b0111_0001;
        default: seg = 8'b1111_1111;
    endcase
end

endmodule