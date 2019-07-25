module cnt10 ( clk, rst_n, carry, cnt );

  input clk, rst_n;
  output carry;
  output [3:0] cnt;
  reg carry;
  reg [3:0] cnt;
  always @( posedge clk or negedge rst_n )
     begin
        if ( ~rst_n )
         begin
           cnt <= 4'b0000;
         end
       else if ( cnt == 4'b1001 )
         begin
           cnt <= 4'b0000;
         end
      else
         begin
           cnt <= cnt + 4'b0001;
         end
    end

  always @(posedge clk or negedge rst_n)
  begin
     if(!rst_n)
     begin
        carry <= 1'b0;
     end
     else if(cnt == 4'b1001)
     begin
        carry <= 1'b1;
     end
     else
     carry<= 1'b0;
  end
  endmodule