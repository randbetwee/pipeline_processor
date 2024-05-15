`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/04 17:45:28
// Design Name: 
// Module Name: IfIdReg
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


module IfIdReg(
    input clk,
    input [31:0] pc,
    input [31:0] pcAdd4,
    input [31:0] ins,
    input keep,
    input flush,
    output reg [31:0] pcOut,
    output reg [31:0] pc4Out,
    output reg [31:0] insOut
    );
    initial {pcOut,pc4Out,insOut}={31'b0,31'b0,31'b0};
    
    always@(posedge clk )
    begin 
    
    
    if(keep==1)
    {pcOut,pc4Out,insOut}<={pcOut,pc4Out,insOut};
    else if(flush==1){pcOut,pc4Out,insOut}<={pc,pcAdd4,32'h20000000};
    else {pcOut,pc4Out,insOut}<={pc,pcAdd4,ins};
     end
endmodule
