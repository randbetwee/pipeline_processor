`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/22 16:36:07
// Design Name: 
// Module Name: addBranch
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


module addBranch(
    input [31:0] pc,
    input [31:0] offset,
    output [31:0] branch
    );
    assign branch=pc+offset;
    
endmodule
