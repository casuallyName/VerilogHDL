module counter_24(
    input clk,rst,
	 output reg [3:0] data_L,
	 output reg [3:0] data_H
    );

  initial data_L=0;
  initial data_H=0;
  
  always@(posedge clk)
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