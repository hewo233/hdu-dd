module diglab(
    input clk,
    input rst,
    input [1:0] SW,
    output [2:0] which,
    output [7:0] seg,
    output enable
);

reg [31:0] data_use;

parameter [7:0] data1 = 12345678;
parameter [7:0] data2 = 87654321;
parameter [7:0] data3 = 13572468;

always @(posedge clk) begin
    case(SW)
        2'b00: data_use <= 8'b0000_0000;
        2'b01: data_use <= data1;
        2'b10: data_use <= data2;
        2'b11: data_use <= data3;
    endcase
end

assign enable = (SW == 2'b00) ? 0 : 1;

reg [2:0] which_reg;

always @(posedge clk) begin
    if (rst) begin
        which_reg <= 3'b000;
    end else begin
        which_reg <= (which_reg == 3'b111) ? 3'b000 : which_reg + 1;
    end
end

reg [7:0] seg_data;

always @(posedge clk) begin
    case(which)
        3'b000: 
end



endmodule
