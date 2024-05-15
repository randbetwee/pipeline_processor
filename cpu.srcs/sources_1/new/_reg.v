`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/16 16:00:48
// Design Name: 
// Module Name: _reg
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


module _reg(
    input clk,
    input regWri,
    input [4:0] rs,
    input [4:0] rt,
    input [4:0] rd,
    input [31:0] writeData,
    output [31:0] data1,
    output [31:0] data2
    );
    reg [31:0] _regunit[31:0];
   integer cnt;
    initial begin
    for(cnt=0;cnt<=31;cnt=cnt+1)
     _regunit[cnt]<=0;
    
    //_regunit[29]=32'd255;
    end
    
    always @(negedge clk)_regunit[rd]<=regWri?writeData:_regunit[rd];
    
    assign data1=_regunit[rs];
    assign data2=_regunit[rt];
    
endmodule
