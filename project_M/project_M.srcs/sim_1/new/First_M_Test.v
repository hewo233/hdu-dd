`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2024 06:58:47 PM
// Design Name: 
// Module Name: First_M_Test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module First_M_Test; // 仿真的顶层模块，没有输入输出端口
    reg A, B, C, D, E; // 在 initial 中被赋值，故必须定义为 reg 类型
    wire F; // 要连接到 First_M 的输出端口 F，故必须定义为 wire 类型
    First_M The_UUT(A, B, C, D, E, F); // 定义了模块 First_M 的一个实例 The_UUT
    initial // 测试样例
    begin
        A = 0; B = 0; C = 0; D = 0; E = 0; // 第 1 组测试：初始化为全零
        #100; A = 0; B = 0; C = 0; D = 0; E = 1; // 第 2 组测试
        #100; A = 0; B = 0; C = 0; D = 1; E = 1; // 第 3 组测试
        #100; A = 1; B = 0; C = 0; D = 0; E = 0; // 第 4 组测试
        #100; A = 1; B = 1; C = 0; D = 0; E = 0; // 第 5 组测试
        #100; A = 1; B = 1; C = 1; D = 0; E = 0; // 第 6 组测试
    end
endmodule // First_M_Test.v
