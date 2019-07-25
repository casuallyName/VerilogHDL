`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/22 14:46:58
// Design Name: 
// Module Name: clk_out
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


module clk_out(
    input key,
    input clk,
    output reg out
    );
    always@(clk,key)
    if (key)out<=1'b1;
    else out<=1'b0;
endmodule
