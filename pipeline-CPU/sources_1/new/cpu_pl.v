`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/01 22:18:09
// Design Name: 
// Module Name: cpu_pl
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


module cpu_pl(
    input clk,
    input rst,//rst=1时进行复位

    //IO_BUS
    output [7:0] io_addr, //led和seg的地址
    output [31:0] io_dout, //输出led和seg的数据
    output io_we, //输出led和seg数据时的使能信号
    input [31:0] io_din, //来自sw的输入数据

    //Debug_BUS
    input [7:0] m_rf_addr, //存储器(MEM)或寄存器堆(RF)的调试读口地址
    output [31:0] rf_data, //从RF读取的数据
    output [31:0] m_data, //从MEM读取的数据

    //PC /IF/ID流水段寄存器+
    output reg [31:0] pc,
    output reg [31:0] pcd,
    output reg [31:0] ir,
//    output reg [31:0] ir_out,
//    output reg [31:0] pcin,

    // ID/EX流水段寄存器
    output reg stall,
    output reg [31:0] pce,
    output reg [31:0] a,
    output reg [31:0] b,
    output [31:0] imm,
    output reg [4:0] rd,
    output [31:0] ctrl,
    output reg [4:0] rs1_address,
    output reg [4:0] rs2_address,
    output  [31:0] a_in,b_in,

    // EX/MEM流水段寄存器
    output [31:0] y,//ALUout
    output reg [31:0] bm,
//    output reg [31:0] y_sw,
    output reg [4:0] rdm,
    output reg [31:0] ctrlm,
    output reg [31:0] pcm,//存储pc_offset或者pc,但只有pc_offset有用
    output reg [31:0] imm_m,
    output pcsrc,

    // MEM/WB流水段寄存器
    output reg [31:0] yw,
    output reg [31:0] mdr,
    output reg [4:0] rdw,
    output reg [31:0] ctrlw,
    output reg [31:0] pcw,
    output we,
    output [31:0] wd1,
    output reg [1:0] forwardA,forwardB
    );


//IF段的操作
    //pc
    always @(posedge clk)
        begin
            if(rst == 1)
                begin
                   pc <= 0;
                end   
            else if(stall!=1)
            begin
                if(pcsrc==1 && ctrlm != 0)
                    pc <= pcm + (imm_m<<1);//储存的是pc_offset
                else
                    pc <= pc+4;
                if(pcsrc==1)
                    pcd <= 0;
                else
                    pcd <= pc;
            end
        end
    wire [31:0] ir_out;
    //ir
    
    harzard_ir my_hazard(
        .a(pc[9:2]),      // input wire [7 : 0] a
        .d(0),      // input wire [31 : 0] d
        .clk(clk),  // input wire clk
        .we(0),    // input wire we
        .spo(ir_out)
    );

    /*
    Instruction_memory your_instance_name (
        .a(pc[9:2]),      // input wire [7 : 0] a
        .d(0),      // input wire [31 : 0] d
        .clk(clk),  // input wire clk
        .we(0),    // input wire we
        .spo(ir_out)  // output wire [31 : 0] spo
    );*/
    
    /*
    
    test_ir my_test_ir(
        .a(pc[9:2]),      // input wire [7 : 0] a
        .d(0),      // input wire [31 : 0] d
        .clk(clk),  // input wire clk
        .we(0),    // input wire we
        .spo(ir_out)  // output wire [31 : 0] spo
    );*/

//    reg [31:0] ir_out;
    always @(posedge clk)
        begin
            if(pcsrc==1 || rst == 1)
                ir <= 0;
            else if(stall!=1)
                ir <= ir_out;
        end
//ID段的操作
//    assign ir_out = (pcsrc==1)?0:ir;
    //译码得控制信号以及扩展后的立即数
    wire mem_sel,wb_sel;
    assign mem_sel = ctrl[5];
    assign wb_sel = ctrlm[5];
    control my_instance_ctrl(
        .clk(clk),
        .rst(rst),
        .opcode(ir[6:0]),
        .instruction(ir),
        .stall(stall),
        .pcsrc(pcsrc),
        .ctrl(ctrl),
        .Immediate(imm)
    );
    //对寄存器堆的读写操作,并写优先
    //这里已经做了WB段该做的事情
    //jal指令的pc+4在EX段被写入寄存器堆
    wire [31:0] mdr_din;
    wire [31:0] wd;
    reg [31:0] reg_iodin;
//    wire we;//寄存器写使能,写jal的pc+4或者mdr_din
 //   wire [31:0] wd1;
//    assign mdr_din = (yw[10]==0)?mdr:reg_iodin;
    assign wd = (ctrlw[16]==1)?mdr:yw;
    assign wd1 = (ctrlw[9]==1)?(pcw+32'b0100):wd;
    assign we = (ctrlw[9]==1)?1:ctrlw[18];
    wire [31:0] read_data1,read_data2;
    regfile my_instance_regfile(
        .clk(clk),
        .we(we),//写使能
        .wa(rdw),//写入的地址
        .wd(wd1),//写入的数据
        .ra1(ir[19:15]),//读地址1
        .ra2(ir[24:20]),//读地址2
        .ra3(m_rf_addr[4:0]),//读地址3
        .rd1(read_data1),//读出的数据1
        .rd2(read_data2),//读出的数据2
        .rd3(rf_data)//读出的数据3
    );
    always @(posedge clk)
        begin
            if(pcsrc == 1 || rst == 1)
                begin
                    pce <= 0;
                    rd <= 0;
                    a <= 0;
                    b <= 0;
                    rs1_address <= 0;
                    rs2_address <= 0;
                end
            else if(stall!=1)
                begin
                    pce <= pcd;
                    rd <= ir[11:7];
                    a <= read_data1;
                    b <= read_data2;
                    rs1_address <= ir[19:15];
                    rs2_address <= ir[24:20];
                end
        end

    //stall
    always @(*)
        begin
            if(ctrl[13]==1 && (ir[19:15]==rd || ir[24:20]==rd) && rd !=0)
                stall = 1;
            else
                stall = 0;
        end
//EX段
//    reg [1:0] forwardA,forwardB;
    always @(*)
        begin
            if(pcsrc==1 || rst==1)
                forwardA = 2'b00;
            else if(ctrlm[5]==1 && rs1_address==rdm[4:0] && rdm!=0)
                forwardA = 2'b10;
            else if(ctrlw[5]==1 && rs1_address==rdw[4:0] && rdw !=0)
                forwardA = 2'b01;
            else
                forwardA = 2'b00;
        end
    always @(*)
        begin
            if(pcsrc==1 || rst==1)
                forwardB = 2'b00;
            else if(ctrlm[5]==1 && rs2_address==rdm[4:0] && rdm!=0)
                forwardB = 2'b10;
            else if(ctrlw[5]==1 && rs2_address==rdw[4:0] && rdw !=0)
                forwardB = 2'b01;
            else
                forwardB = 2'b00;
        end
    //ALU部分
    wire [31:0] b_in_in;
    wire [31:0] b_imm;
    assign b_imm = (ctrl[4]==0)?b:imm;
    MUX3_1 mux_a(
        .in0(a),
        .in1(wd),
        .in2(y),
        .sel(forwardA),
        .in(a_in)
    );
    MUX3_1 mux_b(
        .in0(b_imm),
        .in1(wd),
        .in2(y),
        .sel(forwardB),
        .in(b_in)
    );
    assign b_in_in = (ctrl[12] == 1 || ctrl[16] == 1)?imm:b_in;
    ALU my_instance_ALU(
        .clk(clk),
        .a(a_in),
        .b(b_in_in),
        .ALUop(ctrl[3:0]),
        .branch(ctrl[8]),
        .jal(ctrl[9]),//branch与jal只和pcsrc的值有关
        .y(y),
        .pcsrc(pcsrc)
    );
//    reg [31:0] b_sw;
/*
    always @(posedge clk)
        begin
            if(rst == 1)
                y_sw <=0;
            else if(ctrl[12] == 1 || ctrl[16] == 1)//sw,lw
                y_sw <= a_in + b_imm;
            else
                y_sw <= a_in + b_in;
        end
*/
    //ADDsum部分
    always @(posedge clk)
        begin
            if(pcsrc==1 || rst == 1)
                begin
                    pcm <= 0;
                    imm_m <= 0;
                end
            else
                begin
                    pcm <= pce;//beq,jal
                    imm_m <= imm;
                end
        end
    //寄存器的值传到下一级
    always @(posedge clk)
        begin
            if(pcsrc==1 || rst == 1)
                begin
                    ctrlm <= 0;
                    bm <= 0;
                    rdm <= 0;
                end
            else
                begin
                    ctrlm <= ctrl;
                    bm <= b_in;
                    rdm <= rd;
                end
        end
//MEM段
   
    //寄存器的值传到下一级
    always @(posedge clk)
        begin
            if(rst == 1)
                begin
                    yw <= 0;
                    rdw <= 0;
                    ctrlw <= 0;
//                    reg_iodin <= 0;
                    pcw <= 0;
                end
            else
                begin
                    yw <= y;
                    rdw <= rdm;
                    ctrlw <= ctrlm;
//                    reg_iodin <= io_din;
                    pcw <= pcm;   
                end

        end
    wire [31:0] mdr_out;
    //数据存储器的读与写
    /*
    data_memory my_instance_data_memory(
        .a(y[9:0]>>2),        // 读写地址1，input wire [7 : 0] a
        .d(bm),        // 写数据，input wire [31 : 0] d
        .dpra(m_rf_addr),  // 读地址2，input wire [7 : 0] dpra
        .clk(clk),    // input wire clk
        .we(ctrlm[12] & (~y[10])),      //写使能 input wire we
        .spo(mdr_out),    //读出的数据1 output wire [31 : 0] spo
        .dpo(m_data)    // 读出的数据2output wire [31 : 0] dpo
    );*/
    fifo_data test_data(
        .a(y[9:0]>>2),        // 读写地址1，input wire [7 : 0] a
        .d(bm),        // 写数据，input wire [31 : 0] d
        .dpra(m_rf_addr),  // 读地址2，input wire [7 : 0] dpra
        .clk(clk),    // input wire clk
        .we(ctrlm[12] & (~y[10])),      //写使能 input wire we
        .spo(mdr_out),    //读出的数据1 output wire [31 : 0] spo
        .dpo(m_data)    // 读出的数据2output wire [31 : 0] dpo
    );
    always @(posedge clk)
        begin
            if(rst == 1)
                mdr <= 0;
            else if(y[10]==0)
                mdr <= mdr_out;
            else
                mdr <= io_din;
        end
//WB段
    assign io_addr = y[7:0];
	assign io_dout = bm;
	assign io_we = ctrlm[12] & y[10];

endmodule
