`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/22 13:40:26
// Design Name: 
// Module Name: clkout
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


module clkout(
    input clk,
    input key,
    output reg out
    );
    always@(posedge clk)
    begin
    out<=1'b0;
    if(key) out<=1'b0;
    end
endmodule
