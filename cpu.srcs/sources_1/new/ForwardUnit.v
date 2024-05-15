`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/05 11:40:13
// Design Name: 
// Module Name: ForwardUnit
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


module ForwardUnit(
    input MemRegWrit,WbRegWrit,
    input [4:0] ExRs,ExRt,MemRd,WbRd,
    output reg [1:0] ForwardA,ForwardB
    );
    always @(*)
    begin
    ForwardA = 0;
    ForwardB = 0;
    
    if (WbRegWrit&(WbRd!=0))
    begin
    if (WbRd == ExRs)
    ForwardA = 2'b10;
    else if (WbRd == ExRt)
    ForwardB = 2'b10;
    end
    
    if (MemRegWrit&(MemRd!=0))
    begin
    if (MemRd == ExRs)
    ForwardA = 01;
    else if
    (MemRd == ExRt)
    ForwardB = 01;
    end
    
    end
endmodule
