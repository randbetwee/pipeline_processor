`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/14 16:18:21
// Design Name: 
// Module Name: insMem
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


module insMem(
    input [31:0] pc,
    output reg [31:0] ins
    );
    reg[31:0] mem[255:0];
    initial $readmemh("sort8.txt",mem);
     //initial $readmemh("file3.txt",mem);
     always@(pc) ins=mem[pc>>2];
endmodule
