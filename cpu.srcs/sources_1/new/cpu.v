`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/14 16:27:18
// Design Name: 
// Module Name: cpu
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


module cpu(input btc,
    input clk_w5,
    input btl,
    output [7:0] q,
    output [3:0] s,
    output [15:0] w
    );
    
    reg flag;
    wire divclk1,divclk2,clk;     //时钟的触发方式，可以直接把w5当时钟，需要有个标志让pc取指令而非归零
    wire [31:0] temp1;
    wire [15:0] num; 
    wire [10:0]  EXcontrolOut;
    wire [1:0] forward1A,forward1B,forward2A,forward2B;
    
    wire aluzero,zero,overflow,e_or_ne,jr_judge,
    exmemjr,exmemjal,exmemregWrite,exmemMemRead,exmemMemWrite,exmemMTR,
    wBjrOut,wBjalOut,wBregwriteOut, wBmemtoregOut,
     pcKeep,IfIdKeep,ExNop,IfFlush;
    
    wire [31:0] pc,pcIn,ins,
    writeData,data1,data2,
    aluResult,alusrc,
    memData,wriBack,brancAddr,realBack,
    addr1,addr2,addr3,
    fpgaData,
    IFpcOut,IFpc4Out,IFinsOut,
    EXpcout,EXdata1out,EXdata2out,EXextenout,
    exmemPc,exmemAluResult,exmemdata2,
    wBpcOut,wBreadDataOut,wBaluOut,
    forward1data1,forward1data2,
    forward2data1,forward2data2;
    reg [31:0] fpgaAddr;
    wire [12:0] control;
    //jal,bne,jump,RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,Aluop1,Aluop2,Aluop3
    //12  11   10   9      8       7         6       5       4        3      2      1      0
    wire [3:0] aluCon;
    reg [3:0] index;
    wire [4:0] regdst,real_rd,Exrsout, EXrtout,EXrdout,exmemRd,wBrdOut;
    
    assign num={index,fpgaData[11:0]};
    assign w={pc[7:0],realBack[7:0]};
    assign clk=divclk2&flag; 
    
    divClk clk_div(clk_w5,divclk1,divclk2);     //时钟分频
   
    Exception overflowException(addr3,overflow,temp1);   
    PC upc(clk,flag,pcKeep,temp1,pc);
    pcAdd4 add4(pc,pcIn);
    insMem uInsMem(pc,ins);
    
    IfIdReg IFID(clk,pc,pcIn,ins,IfIdKeep,IfFlush, IFpcOut,IFpc4Out,IFinsOut);   
    //IF/ID
    
    hazardDetect hazardDet(control[5],EXcontrolOut[4],exmemMemRead,control[3],control[10]|jr_judge,e_or_ne,
                            IFinsOut[25:21],IFinsOut[20:16],EXrtout,exmemRd,
                            pcKeep,IfIdKeep,ExNop,IfFlush );
    
    control _control(IFinsOut[31:26],flag,control); 
    
    ForwardUnit forward2( EXcontrolOut[5]&(~ EXcontrolOut[10]),exmemregWrite&(~exmemjr),IFinsOut[25:21],IFinsOut[20:16],real_rd,exmemRd, forward2A,forward2B );
               
    
    _reg ureg(clk,wBregwriteOut&(~wBjrOut),IFinsOut[25:21],IFinsOut[20:16],wBrdOut,realBack,data1,data2);    
    
    mux3#(32) muxBran1(data1,aluResult,exmemAluResult,forward2A,forward2data1);
    mux3#(32) muxBran2(data2,aluResult,exmemAluResult,forward2B,forward2data2);
    EquJudge zeroFlag(forward2data1,forward2data2,zero);
    addBranch _addbranch(IFpc4Out,{{14{IFinsOut[15]}},IFinsOut[15:0],2'b0},brancAddr);
    jr_gate jr({IFinsOut[31:26],IFinsOut[5:0]},jr_judge);
    
    mux#(1) mux6(zero,~zero,control[11],e_or_ne);
    mux#(32) mux4(pcIn,brancAddr,control[3]&e_or_ne,addr1);   //   bne and beq //control置1通过data2,否则0 is data1
    mux#(32) mux5(addr1,{IFpc4Out[31:28],IFinsOut[25:0],2'b0},control[10],addr2);    //j and jal
    mux#(32) mux9(addr2,forward2data1,jr_judge,addr3);        //jr
    
    
    IdExReg IDEX(clk,{jr_judge,control[12],control[9:4],control[2:0]},IFpcOut,
                      data1,data2,{{16{IFinsOut[15]}},IFinsOut[15:0]},IFinsOut[25:21],IFinsOut[20:16], IFinsOut[15:11],ExNop,
                      EXcontrolOut, EXpcout,EXdata1out,EXdata2out,EXextenout,Exrsout, EXrtout,EXrdout
                   );
      //jr,jal,RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Aluop1,Aluop2,Aluop3
      //10  9      8     7        6       5       4       3      2      1      0
    //ID/EX 
    
    mux#(5) mux1( EXrtout,EXrdout,EXcontrolOut[8],regdst);
    mux#(5) mux8(regdst,5'd31,EXcontrolOut[9],real_rd);
    
    ForwardUnit forward1( exmemregWrite&(~exmemjr),wBregwriteOut&(~wBjrOut), Exrsout, EXrtout,exmemRd,wBrdOut, forward1A,forward1B );
                    
    AluControl _AluCon(EXcontrolOut[2:0],EXextenout[5:0],aluCon);
    mux#(32) mux2(forward1data2,EXextenout,EXcontrolOut[7],alusrc);
    mux3#(32) muxA(EXdata1out,exmemAluResult,realBack,forward1A,forward1data1);
    mux3#(32) muxB(EXdata2out,exmemAluResult,realBack,forward1B,forward1data2);
    
    ALU _alu(forward1data1,alusrc,aluCon,EXextenout[10:6],aluzero,aluResult,overflow);    
  
    
     //jal,MemtoReg,RegWrite,MemRead,MemWrite
    //9      6         5       4       3    
    
    ExMemReg EXMEM(clk,EXcontrolOut[10],EXcontrolOut[9],EXcontrolOut[4],EXcontrolOut[3],EXcontrolOut[5],EXcontrolOut[6],
                    EXpcout,aluResult,forward1data2,real_rd,
                    exmemjr,exmemjal,exmemregWrite,exmemMemRead,exmemMemWrite,exmemMTR,
                    exmemPc,exmemAluResult,exmemdata2,exmemRd);
    //EX/MEM
   
    dataMem _dataMem(clk,exmemAluResult,exmemdata2,exmemMemRead,exmemMemWrite,fpgaAddr,memData,fpgaData); 
    
    MemWbReg MEMWB( clk, exmemjr,exmemjal,exmemregWrite,exmemMTR,exmemPc,memData,exmemAluResult,exmemRd,
                    wBjrOut, wBjalOut,wBregwriteOut,wBmemtoregOut,wBpcOut,wBreadDataOut,wBaluOut,wBrdOut
                    );
    //MEM/WB
    
    mux#(32) mux3(wBaluOut,wBreadDataOut,wBmemtoregOut,wriBack);          //置1通过data2,否则0 is data1
    mux#(32) mux7(wriBack,wBpcOut+4,wBjalOut,realBack);
    
    
    smg port_smg(divclk1,num,s,q);
    
    
     
    initial begin 
    index=0;
    flag=0;
    end
    
    //always @(addr3) temp1=(overflow==1)?8'hff:addr3;
    
    always @(posedge btl)begin
     fpgaAddr={{28{1'b0}},index};
     index=index+1;
     end
     
     always @(posedge btc)flag=1;
     
endmodule
