`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/14 16:39:22
// Design Name: 
// Module Name: cpu_sim
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


module cpu_sim(

    );
   reg btc,btl,clk_w5;
   wire [3:0] route;
   wire[7:0] q;
   wire [15:0] w;
   cpu uCPU(btc,clk_w5,btl,q,route,w);
   initial begin
   btc = 0;
   btl<=0;
   clk_w5<=0;
   end
   always #100 btc = ~btc;
   always #4 btl=~btl;
   always #1 clk_w5=~clk_w5;
endmodule
