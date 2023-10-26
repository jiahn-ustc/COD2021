`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/06 09:49:54
// Design Name: 
// Module Name: cpusims
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


module cpusims(

    );
    reg clk;
//    input clk,
    reg rst;
 //   input rst,//rst=1时进行复位

    //IO_BUS
    wire [7:0] io_addr;
//    output [7:0] io_addr, //led和seg的地址
    wire [31:0] io_dout; //
//    output [31:0] io_dout, //输出led和seg的数据
    wire io_we;
 //   output io_we, //输出led和seg数据时的使能信号
    reg [31:0] io_din;
//    input [31:0] io_din, //来自sw的输入数据

    //Debug_BUS
    reg [7:0] m_rf_addr;
//    input [7:0] m_rf_addr, //存储器(MEM)或寄存器堆(RF)的调试读口地址
    wire [31:0] rf_data;
//    output [31:0] rf_data, //从RF读取的数据
    wire [31:0] m_data;
//    output [31:0] m_data, //从MEM读取的数据

    //PC /IF/ID流水段寄存器
    wire [31:0] pc;
//    output reg [31:0] pc,
    wire [31:0] pcd;
//    output reg [31:0] pcd,
    wire [31:0] ir;
//    output reg [31:0] ir,
//    output reg [31:0] pcin,

    // ID/EX流水段寄存器
    
    wire [31:0] pce;
    wire [31:0] a;
    wire [31:0] b;
    wire [31:0] imm;
    wire [4:0] rd;
    wire [31:0] ctrl;
    /*
    output reg [31:0] pce,
    output reg [31:0] a,
    output reg [31:0] b,
    output reg [31:0] imm,
    output reg [4:0] rd,
    output reg [31:0] ctrl,*/

    // EX/MEM流水段寄存器
    
    wire [31:0] y;//ALUout
    wire [31:0] bm;
    wire [4:0] rdm;
    wire [31:0] ctrlm;
    wire [31:0] pcm;//存储pc_offset或者pc,但只有pc_offset有用
    wire pcsrc;
    /*
    output reg [31:0] y,//ALUout
    output reg [31:0] bm,
    output reg [31:0] rdm,
    output reg [31:0] ctrlm,
    output reg [31:0] pcm,//存储pc_offset或者pc,但只有pc_offset有用
    output reg pcsrc,*/

    // MEM/WB流水段寄存器
    wire [31:0] yw;
    wire [31:0] mdr;
    wire [4:0] rdw;
    wire [31:0] ctrlw;
    /*
    output reg [31:0] yw,
    output reg [31:0] mdr,
    output reg [4:0] rdw,
    output reg [31:0] ctrlw
    */
    cpu_pl my_cpu(
        .clk(clk),
        .rst(rst),
        .io_addr(io_addr),
        .io_dout(io_dout),
        .io_we(io_we),
        .io_din(io_din),
        .m_rf_addr(m_rf_addr), 
        .rf_data(rf_data),
        .m_data(m_data),
        .pc(pc),
        .pcd(pcd),
        .ir(ir),
        .pce(pce),
        .a(a),
        .b(b),
        .imm(imm),
        .rd(rd),
        .ctrl(ctrl),
        .y(y),
        .bm(bm),
        .rdm(rdm),
        .ctrlm(ctrlm),
        .pcm(pcm),
        .pcsrc(pcsrc),
        .yw(yw),
        .mdr(mdr),
        .rdw(rdw),
        .ctrlw(ctrlw)
    );
initial
begin
    rst = 1; #50;
    rst = 0;
end
initial
    clk = 0;
always #5 clk = ~clk;

endmodule
