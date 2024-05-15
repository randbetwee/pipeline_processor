`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/04 18:04:51
// Design Name: 
// Module Name: MemWbReg
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


module MemWbReg(
     input clk,
     input jr,jal, regwrite, memtoreg,
     input [31:0] pc,readData, aluresult,
     input [4:0] rd,
     output reg jrOut,jalOut,regwriteOut, memtoregOut,
     output reg [31:0] pcOut,readDataOut,aluOut,
     output reg [4:0]rdOut
    );
    initial {jrOut,jalOut,regwriteOut,memtoregOut, pcOut,readDataOut,aluOut,rdOut}=0;
    
    always @(posedge clk)
    begin
    {jrOut,jalOut,regwriteOut,memtoregOut, pcOut,readDataOut,aluOut,rdOut}={jr,jal,regwrite,memtoreg,pc,readData,aluresult,rd};
    
    end
endmodule
