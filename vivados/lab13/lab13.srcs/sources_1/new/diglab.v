module diglab(
    input clk,
    input rst,
    input [1:0] SW,
    output [2:0] which,
    output [7:0] seg,
    output enable
);

reg [31:0] data_use;

parameter [31:0] data1 = 305419896;
parameter [31:0] data2 = 87654321;
parameter [31:0] data3 = 13572468;

always @(posedge clk) begin
    case(SW)
        2'b00: data_use <= 32'h00000000;
        2'b01: data_use <= data1;
        2'b10: data_use <= data2;
        2'b11: data_use <= data3;
    endcase
end

assign enable = (SW == 2'b00) ? 0 : 1;

reg [2:0] which_reg;

reg need_zero;

always @(posedge clk) begin
    if (rst) begin
        which_reg <= 3'b000;
        need_zero <= 0;
    end else if(!need_zero) begin
        which_reg <= 0;
        need_zero <= 1;
    end else begin
        which_reg <= (which_reg == 3'b111) ? 3'b000 : which_reg + 1;
    end
end

reg [3:0] seg_data;
reg [7:0] using;

always @(*) begin
    case(which)
        3'b000: begin
            seg_data <= data_use[31:28];
            using[7:0] <= 8'b1000_0000;
        end
        
        3'b001: begin
            seg_data <= data_use[27:24];
            using[7:0] <= 8'b0100_0000;
        end

        3'b010: begin
            seg_data <= data_use[23:20];
            using[7:0] <= 8'b0010_0000;
        end

        3'b011: begin
            seg_data <= data_use[19:16];
            using[7:0] <= 8'b0001_0000;
        end

        3'b100: begin
            seg_data <= data_use[15:12];
            using[7:0] <= 8'b0000_1000;
        end

        3'b101: begin
            seg_data <= data_use[11:8];
            using[7:0] <= 8'b0000_0100;
        end

        3'b110: begin
            seg_data <= data_use[7:4];
            using[7:0] <= 8'b0000_0010;
        end

        3'b111: begin
            seg_data <= data_use[3:0];
            using[7:0] <= 8'b0000_0001;
        end
        
    endcase
end

assign which = which_reg;

wire [7:0] seg_out7, seg_out6, seg_out5, seg_out4, seg_out3, seg_out2, seg_out1, seg_out0;

eightseg TB7(
    .clk(clk),
    .data_in(seg_data),
    .used(using[7]),
    .seg(seg_out7)
);

eightseg TB6(
    .clk(clk),
    .data_in(seg_data),
    .used(using[6]),
    .seg(seg_out6)
);

eightseg TB5(
    .clk(clk),
    .data_in(seg_data),
    .used(using[5]),
    .seg(seg_out5)
);

eightseg TB4(
    .clk(clk),
    .data_in(seg_data),
    .used(using[4]),
    .seg(seg_out4)
);

eightseg TB3(
    .clk(clk),
    .data_in(seg_data),
    .used(using[3]),
    .seg(seg_out3)
);

eightseg TB2(
    .clk(clk),
    .data_in(seg_data),
    .used(using[2]),
    .seg(seg_out2)
);

eightseg TB1(
    .clk(clk),
    .data_in(seg_data),
    .used(using[1]),
    .seg(seg_out1)
);

eightseg TB0(
    .clk(clk),
    .data_in(seg_data),
    .used(using[0]),
    .seg(seg_out0)
);

reg [7:0] seg_out;

always @(*) begin
    case (which_reg)
        3'b000: seg_out <= seg_out7;
        3'b001: seg_out <= seg_out6;
        3'b010: seg_out <= seg_out5;
        3'b011: seg_out <= seg_out4;
        3'b100: seg_out <= seg_out3;
        3'b101: seg_out <= seg_out2;
        3'b110: seg_out <= seg_out1;
        3'b111: seg_out <= seg_out0;
    endcase
end

assign seg = seg_out;


endmodule
