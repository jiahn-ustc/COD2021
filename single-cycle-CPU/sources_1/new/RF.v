`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/06 18:30:11
// Design Name: 
// Module Name: RF
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

//向寄存器堆中读写数据
module RF(
    input wire clk,we,
    input wire [4:0] wa, //写入的数据
    input wire [31:0] wd,//写入的地址
    input wire [4:0] ra1, ra2, ra3,//读的地址
    output wire [31:0] rd1, rd2, rd3//读出的数据    
    );

    reg [31:0] regfile [31:0];//寄存器堆
    initial 
    begin
        regfile[0]=0;//x0存储0   
    end
    
    assign  rd1 = regfile[ra1];
    assign  rd2 = regfile[ra2];
    assign  rd3 = regfile[ra3];//读出数据

    always @ (posedge clk)
    begin
        if(we && wa != 0)
            regfile[wa] <= wd;//向寄存器堆写入数据
    end
endmodule
