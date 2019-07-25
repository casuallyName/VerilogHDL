`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/22 13:27:28
// Design Name: 
// Module Name: Mux2to1_DF
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


module Mux2to1_DF(        
    input a,b,sel,
    output out
    );
    assign out = (a&sel) |(b&(~sel));    //out = sel ? a : b;     
endmodule
