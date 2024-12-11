`timescale 1ns / 1ps

module diglab_tb;

// Inputs
reg clk;
reg rst;
reg [1:0] SW;

// Outputs
wire [2:0] which;
wire [7:0] seg;
wire enable;

// 实例化被测模块
diglab uut (
    .clk(clk),
    .rst(rst),
    .SW(SW),
    .which(which),
    .seg(seg),
    .enable(enable)
);

// 时钟生成
initial begin
    clk = 0;
    forever #5 clk = ~clk; // 产生一个周期为10ns的时钟
end

// 测试用例
initial begin

    rst = 1; // 激活复位
    SW = 0;
    #20; // 保持复位状态一段时间
    
    rst = 0;
    SW = 2'b01; // 测试第二种情况
    #200;
    
    rst = 1; // 激活复位
    SW = 0;
    #10; // 保持复位状态一段时间
    
    rst = 0;
    SW = 2'b10; // 测试第三种情况
    #200;
    
    rst = 1; // 激活复位
    SW = 0;
    #10; // 保持复位状态一段时间
    
    rst = 0;
    SW = 2'b11; // 测试第四种情况
    #200;
    
    $finish; // 结束测试
end

// 观察输出
initial begin
    $monitor("Time = %t, rst = %b, SW = %b, enable = %b, which = %b, seg = %h",
             $time, rst, SW, enable, which, seg);
end

endmodule

