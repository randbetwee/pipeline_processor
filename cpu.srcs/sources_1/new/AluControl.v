`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/21 23:25:57
// Design Name: 
// Module Name: AluControl
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


module AluControl(
    input [2:0] aluOp,
    input [5:0] funct,
    output reg [3:0] aluCon
    );
    always @(*) begin
    if(aluOp==0)aluCon<=4'b0010;
    else if(aluOp==1)aluCon<=4'b0110;
    else if(aluOp==3)aluCon<=4'b0111;
    else if(aluOp==4)aluCon<=4'b0100;
    else begin
    case(funct)
       6'b000000:aluCon<=4'b0011;
       6'b100000:aluCon<=4'b0010;        //add
       6'b100010:aluCon<=4'b0110;
       6'b100100:aluCon<=4'b0000;
       6'b100101:aluCon<=4'b0001;
       6'b101010:aluCon<=4'b0111;       //slt
       6'b101011:aluCon<=4'b0101;      //sltu
       6'b100001:aluCon<=4'b0100;           //addu
       endcase
       end
      end
    
endmodule
