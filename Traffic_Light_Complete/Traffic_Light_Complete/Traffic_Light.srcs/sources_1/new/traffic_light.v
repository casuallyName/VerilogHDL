`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/15 19:44:53
// Design Name: 
// Module Name: traffic_light
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


module traffic_light(
//module traffic(clk,rst_n,led
input clk,rst_n,
output [5:0] led
);
reg [5:0] led;
reg [4:0] time_left;
reg [1:0] state;

parameter [1:0] S1 = 2'b00,
                S2 = 2'b01,
        S3 = 2'b11,
        S4 = 2'b10;
        
    clk_div CD(
        .clk(clk), 
        .clkout(clkout)
            ); //·ÖÆµÄ£¿é    
    always @(posedge clk or negedge rst_n)
    begin
          if(!rst_n)
      begin
              state <= S1;
          time_left <= 5'd18;
          led <= 6'b100_001;
      end
      else
      begin
          
              case(state)
              S1:begin    
               if(clkout)
                           begin        
                            if(time_left==0)
                begin
                       
                              state <= S2;
                   time_left <= 5'd2;
                  led <= 6'b100_010; 
                 
                end
                else
                begin
                                state <= S1;
                time_left <= time_left-1'b1;
                led <= 6'b100_001;
                end
                 end
              end
              S2:begin
               if(clkout)
                                            begin
                            if(time_left==0)
                begin
                      
                               state <= S3;
                   time_left <= 5'd28;
                  led <= 6'b001_100; 
                end
               
                else
                begin
                                state <= S2;
                time_left <= time_left-1'b1;
                led <= 6'b100_010;
                end
                 end
              end
              S3:begin
              if(clkout)
                                   begin
                            if(time_left==0)
                begin
                     
                               state <= S4;
                   time_left <= 5'd2;
                  led <= 6'b010_100; 
                end
              
                else
                begin
                                state <= S3;
                time_left <= time_left-1'b1;
                led <= 6'b001_100;
                end
                  end
              end
              S4:begin
               if(clkout)
                                  begin
                            if(time_left==0)
                begin
                    
                               state <= S1;
                   time_left <= 5'd18;
                  led <= 6'b100_001; 
                end
              
                else
                begin
                                state <= S4;
                time_left <= time_left-1'b1;
                led <= 6'b010_100;
                end
                  end
              end
          endcase
      end
      
    end
    endmodule
