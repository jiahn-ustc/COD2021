`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/06 21:27:22
// Design Name: 
// Module Name: cpusim
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

module cpusim(

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
//    wire [31:0] ir_out;
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
    wire [31:0] b_sw;
    wire [4:0] rdm;
    wire [31:0] ctrlm;
    wire [31:0] pcm;//存储pc_offset或者pc,但只有pc_offset有用
    wire [31:0] imm_m;
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
    wire [31:0] pcw;
    wire stall;
    wire [4:0] rs1_address,rs2_address;
    wire [31:0] a_in,b_in;
    wire we;
    wire [31:0] wd1;
    wire [1:0] forwardA,forwardB;
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
        .stall(stall),
        .a_in(a_in),
        .b_in(b_in),
        .pce(pce),
        .a(a),
        .b(b),
        .imm(imm),
        .rd(rd),
        .ctrl(ctrl),
        .rs1_address(rs1_address),
        .rs2_address(rs2_address),
        .y(y),
        .bm(bm),
        .rdm(rdm),
        .ctrlm(ctrlm),
        .pcm(pcm),
        .imm_m(imm_m),
        .pcsrc(pcsrc),
        .yw(yw),
        .mdr(mdr),
        .rdw(rdw),
        .ctrlw(ctrlw),
        .pcw(pcw),
        .we(we),
        .wd1(wd1),
        .forwardA(forwardA),
        .forwardB(forwardB)
    );
initial
begin
    io_din = 3;
    rst = 1; #50;
    rst = 0;
    
    m_rf_addr = 1; #100;
    m_rf_addr = 2; #100;
    
    m_rf_addr = 3; #50;
    m_rf_addr = 4; #50;
    m_rf_addr = 5; #50;
    m_rf_addr = 6; #50;
    m_rf_addr = 7; #50;
    m_rf_addr = 8; #50;
    m_rf_addr = 9; #100;
    m_rf_addr = 10; #100;
    m_rf_addr = 11; #100;
    m_rf_addr = 12; #100;
    m_rf_addr = 13; #100;
    m_rf_addr = 14; #100;
    m_rf_addr = 15; #100;
end
initial
    clk = 0;
always #5 clk = ~clk;


endmodule

