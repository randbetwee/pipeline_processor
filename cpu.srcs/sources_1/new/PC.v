`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/14 15:52:09
// Design Name: 
// Module Name: PC
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


module PC(
    input clk,
    input flag,
    input keep,
    input [31:0] pcIn,
    output reg [31:0] pc
    );
    
    initial pc=0;
    always @(posedge clk) begin
    if(flag==0)pc=pc;
    else if(keep==1)pc=pc;
    else
    pc=pcIn;
    
    end
endmodule
