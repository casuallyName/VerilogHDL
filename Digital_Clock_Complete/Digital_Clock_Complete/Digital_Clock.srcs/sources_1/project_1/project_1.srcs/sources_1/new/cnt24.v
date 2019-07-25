`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/26 17:53:59
// Design Name: 
// Module Name: cnt24
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


module cnt24(
    input clk,rst,
	 output reg [3:0] data_L,
	 output reg [3:0] data_H
    );

  initial data_L=0;
  initial data_H=0;
  
  always@(posedge clk or negedge rst)
  begin
    if (~rst)
	 begin
     data_L<=0;
     data_H<=0;
     end
    else if(data_H==2&data_L==3)
	   begin
		data_L<=0;
		data_H<=0;
		end
	 else if(data_L==9)
	   begin
		data_L<=0;
		data_H<=data_H+1;
		end
	 else
	   begin
		data_L<=data_L+1;
		end
	 end

endmodule
