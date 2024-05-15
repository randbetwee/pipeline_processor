`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/04 14:34:37
// Design Name: 
// Module Name: divClk
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


module divClk(
    input clk,
    output reg divclk,
    output reg divclk2
    );
    reg[31:0] divclk_cnt = 0;
    reg[31:0] clk2_cnt=0;
   
    
    initial begin
    divclk=0;
    divclk2=0;
    end
    
    always@(posedge clk)
     begin
     if(divclk_cnt==10000)    // 1 or 10000 
       begin
        divclk =~ divclk;
        divclk_cnt = 0;
        end
     else
        begin
        divclk_cnt = divclk_cnt+1'b1;
        end
     
      if(clk2_cnt==10)    // 1 or 10000 
       begin
        divclk2 =~ divclk2;
        clk2_cnt = 0;
        end
     else
        begin
       clk2_cnt = clk2_cnt+1'b1;
        end
     end
endmodule
