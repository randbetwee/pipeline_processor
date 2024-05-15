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


module IdExReg(
     input clk,
     input [10:0] control,
     input [31:0] pc,
     input [31:0] data1,
     input [31:0] data2,
     input [31:0] exten,
     input [4:0] rs,
     input [4:0] rt,
     input [4:0] rd,
     input nop,
     output reg [10:0] controlOut,
     output reg [31:0] pcout,
     output reg [31:0] data1out,
     output reg [31:0] data2out,
     output reg [31:0] extenout,
     output reg [4:0] rsout,
     output reg [4:0] rtout,
     output reg [4:0] rdout
    );
    initial 
    {controlOut,pcout,data1out,data2out,extenout,rsout,rtout,rdout}=0;
    
    always@(posedge clk) begin
    {controlOut,pcout,data1out,data2out,extenout,rsout,rtout,rdout}={control,pc,data1,data2,exten,rs,rt,rd};
    
    if(nop)controlOut=13'b0;
    //else if(keep) {controlOut,data1out,data2out,extenout,rsout,rtout}={controlOut,data1out,data2out,extenout,rsout,rtout};
    end
endmodule