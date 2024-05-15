`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/14 16:12:31
// Design Name: 
// Module Name: pcAdd4
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


module pcAdd4(
    input [31:0] pc,
    output [31:0] pcIn
    );
    assign pcIn=pc+4;
endmodule
