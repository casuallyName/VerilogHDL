`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/14 23:06:19
// Design Name: 
// Module Name: display
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


module display(clk, data1, data2, data3, data4, en, led);
input clk;
input [3:0] data1, data2, data3, data4; //d[7]-dp, d[6:0]-ASCII
output reg [3:0] en;
output reg [7:0] led;	//a~g,dp

//扫描频率:50Hz
parameter update_interval = 50000000 / 200 - 1;

reg [3:0] dat;

reg [1:0] cursel;
integer selcnt;

//扫描计数，选择位
always @(posedge clk)
begin
	selcnt <= selcnt + 1;
		
	if (selcnt == update_interval)
	begin
		selcnt <= 0;
		cursel <= cursel + 1;
	end
end

//切换扫描位选线和数据
always @(*)
begin
	en = 4'b0000;
	case (cursel)
		2'b00: begin dat = data1; en = 4'b1000; end
		2'b01: begin dat = data2; en = 4'b0100; end
		2'b10: begin dat = data3; en = 4'b0010; end
		2'b11: begin dat = data4; en = 4'b0001; end
	endcase
end

//更新段码
always @(*)
begin
    case(dat)
        4'b0000: led = 8'b00111111;    //0
        4'b0001: led = 8'b00000110;    //1
        4'b0010: led = 8'b01011011;    //2
        4'b0011: led = 8'b01001111;    //3
        4'b0100: led = 8'b01100110;    //4
        4'b0101: led = 8'b01101101;    //5
        4'b0110: led = 8'b01111101;    //6
        4'b0111: led = 8'b00000111;    //7
        4'b1000: led = 8'b01111111;    //8
        4'b1001: led = 8'b01101111;    //9
        4'b1010: led = 8'b01110111;    //A
        4'b1011: led = 8'b01111100;    //b
        4'b1100: led = 8'b00111001;    //C
        4'b1101: led = 8'b01011110;    //d
        4'b1110: led = 8'b01111001;    //E
        4'b1111: led = 8'b01000000;//8'b01110001;    //F
        default: led = 8'b10000000;    //dp
    endcase
end
	
endmodule
