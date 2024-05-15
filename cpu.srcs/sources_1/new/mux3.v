`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/05 11:53:29
// Design Name: 
// Module Name: mux3
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


module mux3
    #(parameter width=32)(
    input [width-1:0] data1,data2,data3,
    input [1:0] flag,
    output [width-1:0] dataout
    );
    assign dataout=(flag==0)?data1:((flag==2'b01)?data2:((flag==2'b10)?data3:0));
    
endmodule
