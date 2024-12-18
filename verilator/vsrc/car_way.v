module taxi_distance(
    input clk,
    input rst,
    input start,
    input pause,
    input waiting,
    input [1:0] speedup,
    output [31:0] distance, // /0.001km
    output [31:0] money
);

// distance 0.001km wait_time 0.01s

reg double_flag; // >=20 1.8
reg [31:0] money_reg; // 0.0001

always @(*) begin
    if (rst) begin 
        money_reg <= 32'd6;
        double_flag <= 1'b0;
    end else begin
        if (money_reg >= 32'd200000) begin
            double_flag <= 1'b1; 
        end
    end
end

wire [4:0] per_money

assign per_money = double_flag ? 5'd18 : 5'b12;

// speedup: 00: 200000hz 01: 100000hz 10: 50000hz 10: 33333hz
// 0.01s

reg start_flag;

always @(*) begin
    if (rst) begin
        start_flag = 1'b0;
    end else begin
        if (start) begin
            start_flag = 1'b1;
        end
    end
end

wire [31:0] dis_div_count_max;

assign dis_div_count_max = 32'd200000;

reg [31:0] dis_per; // 0.001km 0.002km 0.004km 0.006km

always @(*) begin 
    case (speedup)
        2'b00: begin
            dis_per = 32'd1;
        end
        2'b01: begin
            dis_per = 32'd2;
        end
        2'b10: begin
            dis_per = 32'd4;
        end
        2'b11: begin
            dis_per = 32'd6;
        end
    endcase
    
end

reg [31:0] dis_reg;

reg [31:0] div_count;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        div_count <= 32'd0;
    end else if(start_flag && !pause && !waiting) begin
        if (div_count >= div_count_max) begin
            dis_reg   <= dis_reg + dis_per;
            div_count <= 32'd0;
            if (dis_reg >= 3000) begin
                money_reg <= money_reg + (dis_per * 6'd50) 
            end
        end else begin
            div_count <= div_count + dis_per;
        end
    end
end

reg [31:0] wait_div_count_max;

always @(*) begin
    wait_div_count_max = 32'd200000;
end

reg [31:0] wait_div_count;

reg [31:0] wait_reg; // 0.01s

always @(posedge clk or posedge rst) begin
    if (rst) begin
        wait_div_count <= 32'd0;
    end else if(start_flag && !pause && waiting) begin
        if (wait_div_count >= wait_div_count_max) begin
            wait_reg <= wait_reg + 32'd1;
            wait_div_count <= 32'd0;
            if (dis_reg >= 3000) begin
                money_reg <= money_reg + 32'd5;
            end
        end else begin
            wait_div_count <= wait_div_count + 32'd1;
        end
    end
end


assign distance = dis_reg;
assign money = money_reg;

endmodule

