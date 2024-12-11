`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/20 19:40:06
// Design Name: 
// Module Name: reg
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


module edReg(
    input not_OE,
    input CLR, //rst
    input CLK,
    input [7:0] D,
    output [7:0] Q
);

reg [7:0] Q_nxt;

always @(posedge CLK or posedge CLR) begin
    if (CLR) begin
        Q_nxt <= 8'b00000000;
    end else  begin
        Q_nxt <= D;
    end
end

assign Q = not_OE ? 8'bZ : Q_nxt;

endmodule

