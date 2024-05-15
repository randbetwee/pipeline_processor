`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/16 16:18:33
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [31:0] data1,
    input [31:0] data2,
    input [3:0] aluCtrl,
    input [4:0] shamt,
    output zero,
    output reg [31:0] aluResult,
    output reg overflow
    );
    
    reg [32:0] temp;
    assign zero=(data1-data2==0)?1:0;
    always @(*) begin
    overflow<=0;
    case(aluCtrl)
      4'b0:aluResult<=data1&data2;
      4'b1:aluResult<=data1|data2; 
      4'b11:aluResult<=data2<<shamt;
      4'b10:begin                   //add
      temp[32:0]<={data1[31],data1[31:0]}+{data2[31],data2[31:0]};
      if(temp[32]!=temp[31])overflow=1;
      else aluResult<=temp[31:0];
      end            
      4'b100:aluResult<=data1+data2;   //addu
      4'b110:begin
      temp[32:0]={data1[31],data1[31:0]}-{data2[31],data2[31:0]};
      if(temp[32]!=temp[31])overflow=1;
      else aluResult<=temp[31:0];
      end                                  //sub
      4'b111:begin
      temp[32:0]={data1[31],data1[31:0]}-{data2[31],data2[31:0]};
      if(temp[32]==1&&temp[31]==0)aluResult<=0;
      else if(temp[32]==0&&temp[31]==1)aluResult<=1;
      else if(temp[32]==temp[31])
      aluResult<=temp[31]?1:0;                  //slt
      end
      4'b0101: aluResult<=(data1<data2)?1:0;    //sltu
      4'b1100:aluResult<=data1&~data2|data2&~data1;
      default:aluResult<=0;
     endcase
     end
endmodule
