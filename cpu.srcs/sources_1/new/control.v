`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/21 17:45:18
// Design Name: 
// Module Name: control
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


module control(
    input [5:0] opcode,
    input flag,
    output reg [12:0] control
    );
    //jal,bne,jump,RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,Aluop1,Aluop2,Aluop3
    always @(*) begin
    if(flag==0)control=0;
    else begin
    case(opcode)
    0:control=13'b0001_0010_0001_0;                  //R
    6'b100011: control=13'b0000_1111_00000;        //lw
    6'b101011: control=13'b0000_1000_10000;       //sw
    6'b001000:control=13'b0000_1010_00000;        //addi
    6'b001001:control=13'b0000101000100;       //addui
    6'b000100: control=13'b0000000001001;     //beq
    6'b000101: control=13'b0100000001001;     //bne
    6'b001010:control=13'b0000101000011;      //slti
    6'b000010: control=13'b0010000000000;        //j
    6'b000011:control=13'b1010001000000;          //jal
    default: control=0;
    endcase
    end
    end
endmodule
