`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/04 17:20:50
// Design Name: 
// Module Name: ExMemReg
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



module ExMemReg(input clk, jr,jal,memRead,memWrite,regWrite,MTR,
    input [31:0] pc,aluResult,data2,
    input [4:0] rd,
    output reg exmemjr,exmemjal,exmemregWrite,exmemMemRead,exmemMemWrite,exmemMTR,
    output reg [31:0] exmemPc,output reg [31:0] exmemAluResult,exmemdata2,
    output reg [4:0] exmemRd);
    
    initial begin
          {exmemjr,exmemjal,exmemregWrite,exmemMemRead,exmemMemWrite,exmemMTR,exmemPc,exmemAluResult,exmemdata2,exmemRd }<=0;
    end
    always @(posedge clk) begin 
    {exmemjr,exmemjal,exmemregWrite,exmemMemRead,exmemMemWrite,exmemMTR,exmemPc,exmemAluResult,exmemdata2,exmemRd }
           <= {jr,jal,regWrite,memRead,memWrite,MTR,pc,aluResult,data2,rd };
    end
endmodule

