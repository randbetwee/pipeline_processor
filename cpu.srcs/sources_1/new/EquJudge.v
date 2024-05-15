`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/04 23:02:48
// Design Name: 
// Module Name: EquJudge
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


module EquJudge(
    input [31:0] data1,
    input [31:0] data2,
    output zero
    );
    assign zero=(data1-data2==0)?1:0;
endmodule
