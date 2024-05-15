`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/09 21:47:54
// Design Name: 
// Module Name: smg
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


module smg(input clk,input [15:0] num,
           output reg [3:0] s,output reg [7:0] out);
reg [1:0] choose_l;     
reg [3:0] tempNum0,tempNum1,tempNum2,tempNum3,numOutNow;

initial begin 
   choose_l<=0;
   s=0;
   out=0;
end

always@(posedge clk) begin
 choose_l<=choose_l+1;
 tempNum0<=num[3:0];
 tempNum1<=num[7:4];
 tempNum2<=num[11:8];
 tempNum3<=num[15:12];
  
case(choose_l)
   0:begin
   s<=4'b0111;
   numOutNow=tempNum0;
   end
   1:begin
   s<=4'b1011;
   numOutNow=tempNum1;
   end
   2:begin
   s<=4'b1101;
   numOutNow=tempNum2;
   end
   3:begin
   s<=4'b1110;
   numOutNow=tempNum3;
   end
   endcase

 case(numOutNow)
  0:out=8'hc0;
  1:out=8'hf9;
  2:out=8'ha4;
  3:out=8'hb0;
  4:out=8'h99;
  5:out=8'h92;
  6:out=8'h82;
  7:out=8'hf8;
  8:out=8'h80;
  9:out=8'h90;
  10:out=8'h88;
  11:out=8'h83;
  12:out=8'hc6;
  13:out=8'ha1;
  14:out=8'h86;
  15:out=8'h8e;
  default:out=8'hff;
  endcase
 
end

endmodule
