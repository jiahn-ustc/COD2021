`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/06 10:19:09
// Design Name: 
// Module Name: main
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


module main(
    input clk,
    input rst,
    input run,
    input step,
    input valid,
    input [4:0] in,
    output [1:0] check,
    output [4:0] out0,
    output [2:0] an,
    output [3:0] seg,
    output ready
    );
 //   reg clk;
//    input clk,
 //   reg rst;
 //   input rst,//rst=1时进行复位

    //IO_BUS
    wire [7:0] io_addr;
//    output [7:0] io_addr, //led和seg的地址
    wire [31:0] io_dout; //
//    output [31:0] io_dout, //输出led和seg的数据
    wire io_we;
 //   output io_we, //输出led和seg数据时的使能信号
    wire [31:0] io_din;
//    input [31:0] io_din, //来自sw的输入数据

    //Debug_BUS
    wire [7:0] m_rf_addr;
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
    wire stall;
    
    wire [31:0] pce;
    wire [31:0] a;
    wire [31:0] b;
    wire [31:0] imm;
    wire [4:0] rd;
    wire [31:0] ctrl;
    wire [4:0] rs1_address;
    wire [4:0] rs2_address;
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
//    wire [31:0] b_sw;
    wire [31:0] rdm;
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
    wire clk_cpu;
    // MEM/WB流水段寄存器
    wire [31:0] yw;
    wire [31:0] mdr;
    wire [4:0] rdw;
    wire [31:0] ctrlw;
    wire [31:0] pcw;
    wire [31:0] a_in,b_in;
//    reg [2:0] cnt;
/*    
    wire clka;
    always @(posedge clk)
        cnt <= cnt + 1;*/
//    assign clka = cnt[2];
 //   wire we;
 //   wire [31:0] wd1;
    cpu_pl main_cpu(
        .clk(clk_cpu),
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
        .pce(pce),
        .a_in(a_in),
        .b_in(b_in),
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
        .pcw(pcw)
    );


    pdu_pl my_pdu(
        .clk(clk),
        .rst(rst),
        .run(run),
        .step(step),
        .clk_cpu(clk_cpu),
        .valid(valid),
        .in(in),
        .check(check),
        .out0(out0),
        .an(an),
        .seg(seg),
        .ready(ready),
        .io_addr(io_addr),
        .io_dout(io_dout),
        .io_we(io_we),
        .io_din(io_din),
        .m_rf_addr(m_rf_addr),
        .rf_data(rf_data),
        .m_data(m_data),
        .pc(pc),
        .pcd(pcd),
        .pce(pce),
        .ir(ir),
        .imm(imm),
        .mdr(mdr),
        .a(a),
        .b(b),
        .y(y),
        .bm(bm),
        .yw(yw),
        .rd(rd),
        .rdm(rdm),
        .rdw(rdw),
        .ctrl(ctrl),
        .ctrlm(ctrlm),
        .ctrlw(ctrlw)
    );
endmodule
