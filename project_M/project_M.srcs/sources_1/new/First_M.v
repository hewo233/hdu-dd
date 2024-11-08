`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2024 06:57:46 PM
// Design Name: 
// Module Name: First_M
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


module First_M(
    input A,
    input B,
    input C,
    input D,
    input E,
    output F
);
    assign F=~((A&B&C)|(D&E));
endmodule