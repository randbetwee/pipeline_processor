`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/04 22:42:46
// Design Name: 
// Module Name: hazardDetect
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


module hazardDetect(
    input memRead,exmemRead,memmemRead,branch,j,success,
    input [4:0] IdRs, IdRt, ExRt,MemRd,
    output pcKeep,IfIdKeep,ExNop,IfFlush
    );
    wire flag1,flag2,flag3;
    assign flag1=(exmemRead&((memRead?0:(ExRt==IdRt))|(ExRt==IdRs)))?1:0;          //lw当前在id的指令与前面ex的写入是否相关
    assign flag2=(branch&memmemRead&((MemRd==IdRt)|(MemRd==IdRs)))?1:0;
    assign flag3=(((branch&success)|j)&~(flag1|flag2))?1:0;
    assign pcKeep=(flag1|flag2)?1:0;
    assign IfIdKeep=(flag1|flag2)?1:0;
    assign ExNop=(flag1|flag2)?1:0;
    assign IfFlush=flag3?1:0;
endmodule
