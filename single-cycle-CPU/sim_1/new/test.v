`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/06 22:43:03
// Design Name: 
// Module Name: test
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


module test(

    );
    reg clk;
  reg rst;
  wire [7:0] io_addr;      //led和seg的地址
  wire [31:0] io_dout;     //输出led和seg的数据
  wire io_we;                //输出led和seg数据时的使能信号
  reg [31:0] io_din;        //来自sw的输入数据
  reg [7:0] m_rf_addr;   //存储器(MEM)或寄存器堆(RF)的调试读口地址
  wire [31:0] rf_data;    //从RF读取的数据
  wire [31:0] m_data;   //从MEM读取的数据
  wire [31:0] pc;             //PC的内容
  
CPU my_instance_CPU(clk,rst,io_addr,io_dout,io_we,io_din,m_rf_addr,rf_data,m_data,pc);
  
initial
    begin
    io_din=0;
    m_rf_addr=0;
    end

initial
    begin
    clk=0;
    forever
    #1 clk=~clk;
    end
initial
    begin
    rst=0;
    #5 rst=1;
    #5 rst=0;
    end
endmodule

