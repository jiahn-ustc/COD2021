`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/03 21:27:33
// Design Name: 
// Module Name: regfile
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


module regfile(
    input clk,we,
    input [4:0] wa,//写入的地址
    input [31:0] wd,//写入的数据
    input [4:0] ra1,ra2,ra3,//读的地址
    output reg [31:0] rd1,rd2,rd3//读出的数据
    );
    reg [31:0] reg_file [31:0];//寄存器堆
    always @(*)
        begin
            if(ra1 == wa && wa != 0 && we==1)
                rd1 = wd;
            else if(ra1==0)
                rd1 = 0;
            else
                rd1 = reg_file[ra1];
            
            if(ra2 == wa && wa != 0 && we==1)
                rd2 = wd;
            else if(ra2==0)
                rd2 = 0;
            else
                rd2 = reg_file[ra2];
                
            if(ra3 == wa && wa != 0 && we==1)
                rd3 = wd;
            else if(ra3==0)
                rd3 = 0;
            else
                rd3 = reg_file[ra3];
        end
    //写
    always @(posedge clk)
        begin
            if(we==1 && wa !=0)
                reg_file[wa] <= wd;
        end
    
endmodule
