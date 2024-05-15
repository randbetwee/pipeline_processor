`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/22 10:56:31
// Design Name: 
// Module Name: dataMem
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


module dataMem(
    input clk,
    input [31:0] addr,
    input [31:0] writeData,
    input memRead,
    input memWri,
    input [31:0] access,
    output [31:0] readData,
    output [31:0] accessData
    );
    reg[31:0] mem[255:0];
    wire [31:0] temp1;
     initial $readmemh("data8.txt",mem);
    
    assign temp1=memRead?addr:8'hff;
    assign readData=mem[temp1>>2];
    assign accessData=mem[access];
     
    always@(posedge clk)
   mem[addr>>2]<=memWri?writeData:mem[addr>>2];
endmodule
