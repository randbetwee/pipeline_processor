`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/01 21:30:24
// Design Name: 
// Module Name: nopFlag
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


module Exception(
    input [31:0] pcIn,
    input [0:0] sign,
    output [31:0] address
    );
    assign address=sign?32'hff:pcIn;
endmodule
