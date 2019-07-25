`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/15 19:47:02
// Design Name: 
// Module Name: clk_div
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


module clk_div(
input clk,      
output clkout
); //分频模块
reg clkout; 
reg [31:0] cnt;
always @(posedge clk) 
    begin //板子时钟为100MHZ，
        if(cnt == 32'd9999_9999)
            begin  
            clkout <= 1'b1; 
            cnt <= 32'b0;
            end  
        else 
            begin  
            clkout <= 1'b0;
            cnt <= cnt + 32'd1; 
            end 
    end 
endmodule

