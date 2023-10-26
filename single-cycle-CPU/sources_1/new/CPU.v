`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/05 14:10:42
// Design Name: 
// Module Name: CPU
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

//CPU模块
module CPU(
    input clk,
    input rst,

    //IO_BUS
    output [7:0] io_addr, //led和seg的地址
    output [31:0] io_dout, //输出led和seg的数据
    output io_we,
    input [31:0] io_din, //来自sw的输入数据

    //Debug_BUS
    input [7:0] m_rf_addr, //存储器(MEM)或寄存器堆(RF)的调试读口地址
    output [31:0] rf_data, //从RF读取的数据
    output [31:0] m_data, //从MEM读取的数据
    output [31:0] pc      //PC的内容
    );

    //读取Instruction_memory中的指令
    wire [31:0] instruct;
    Instruction_memory your_instance_name (
        .a(pc[9:2]),      // input wire [7 : 0] a
        .d(0),      // input wire [31 : 0] d
        .clk(clk),  // input wire clk
        .we(0),    // input wire we
        .spo(instruct)  // output wire [31 : 0] spo
);

    

    
    //PC复位
    wire [31:0] Next_pc;
    pc my_instance_pc(
        .clk(clk),
        .rst(rst),
        .Next_PC(Next_pc),
        .Real_PC(pc)
    );
    //PC+4
    wire [31:0] pc_4;
    add1 #(32)my_instance_add1(
        .PC(pc),
        .immediate(32'b100),
        .New_PC(pc_4)
    );
    

    //控制信号
	wire jal; 
	wire Branch; 
	wire [1:0] Imm_gen;
	wire [1:0] RegScr; 
	wire [1:0] ALUop;
	wire MemWrite;
	wire ALUScr;
	wire RegWrite;
	control my_instance_control(
        .opcode(instruct[6:0]),
        .jal(jal),
		.Branch(Branch),
        .Imm_gen(Imm_gen),
        .RegScr(RegScr),
        .ALUop(ALUop),
        .MemWrite(MemWrite),
        .ALUScr(ALUScr),
        .RegWrite(RegWrite)
    );

    //立即数扩展
    wire [31:0] Immediate;//扩展后的立即数
    Imme_expan MY_Imme_expan(
		.Imm_gen(Imm_gen),
		.instruct(instruct),
		.Immediate(Immediate)
	);

    //beq和jal指令中pc与偏移量相加
    wire [31:0] pc_offset;
    add1 #(32)my_instance_addoffset(
        .PC(pc),
        .immediate(Immediate<<1),
        .New_PC(pc_offset)
    );

    //对寄存器堆的读写操作
    wire [31:0]rd1, rd2, WriteData;//rd1表示寄存器A的数据，rd2表示寄存器B的数据
	RF MY_RF(
        .clk(clk),
        .we(RegWrite),
        .wa(instruct[11:7]),//写入数据的地址
        .ra1(instruct[19:15]),
        .ra2(instruct[24:20]),
        .ra3(m_rf_addr[4:0]),
        .rd1(rd1),
        .rd2(rd2),
        .rd3(rf_data),
        .wd(WriteData)//写入的数据
    );

    //二选一的多路选择器选择寄存器B的数据与立即数
    wire [31:0] ALU_inputB;
	MUX_PICK2_1 #(32)MUX_B(
		.a(rd2),
        .b(Immediate),
        .sel(ALUScr),
        .out(ALU_inputB)
	);

    //控制ALU的计算模式
    wire [2:0] ALU_input_temp;
    ALU_control my_ALU_control(
        .ALUop(ALUop),
        .func7(instruct[31:25]),
        .func3(instruct[14:12]),
        .ALU_input(ALU_input_temp)
    );

    //使用ALU进行计算
    wire [31:0] ALU_result;//计算结果
    wire zero;//判断减法结果是否为0,若为0，zero则为1
    ALU #(32)my_ALU(
        .a(rd1),
        .b(ALU_inputB),
        .s(ALU_input_temp),
        .y(ALU_result),
        .zf(zero)
    );

    //读写datamemory中的数据
    wire [31:0] ReadData;
    wire [7:0] read_data_address;//读取数据的地址
    assign read_data_address = (ALU_result[9:0]>>2);
    data_memory your_data_memory (
        .a(read_data_address),        // input wire [7 : 0] a
        .d(rd2),        // input wire [31 : 0] d
        .dpra(m_rf_addr),  // input wire [7 : 0] dpra
        .clk(clk),    // input wire clk
        .we(MemWrite & (~ALU_result[10])),      // input wire we
        .spo(ReadData),    // output wire [31 : 0] spo
        .dpo(m_data)    // output wire [31 : 0] dpo
    );

    //二选一多路选择器选择datamemory中的数据与调试的数据
    wire [31:0] mem_data_out;
    MUX_PICK2_1 #(32)MUX_data(
        .a(ReadData),
		.b(io_din),
		.sel(ALU_result[10]),
		.out(mem_data_out)
    );
    //三选一多路选择器选择写入寄存器的数据
    MUX_PICK3_1 #(32)Writeregister_MUX(
        .a(ALU_result),
        .b(mem_data_out),
		.c(pc_4),
        .sel(RegScr),
        .out(WriteData)
    );

    //选择向PC中写入pc+4还是pc+offset
    MUX_PICK2_1 #(32)MUX_PC_NEXT(
		.a(pc_4),
		.b(pc_offset),
		.sel((Branch & zero) | jal),
		.out(Next_pc)
	);


    assign io_addr = ALU_result[7:0];
	assign io_dout = rd2;
	assign io_we = MemWrite & ALU_result[10];
endmodule

