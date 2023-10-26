`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/02 17:05:10
// Design Name: 
// Module Name: control
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
/*
ctrl[31]:fstall
ctrl[30]:dstall
ctrl[29]:dflush
ctrl[28]:eflush
ctrl[25:24]:a_forward
ctrl[21:20]:b_forward
ctrl[18]:regwrite
ctrl[17:16]:regsrc <=> memtoreg
ctrl[13]:memread
ctrl[12]:memwrite
ctrl[9]:jal
ctrl[8]:branch
ctrl[5]:a_sel
ctrl[4]:b_sel <=> ALUSrc
ctrl[3:0]:ALUoP
*/
//控制信号模块
module control(
    input clk,
    input rst,
    input [6:0] opcode,
    input [31:0] instruction,
    input stall, 
    input pcsrc,
    output reg [31:0] ctrl,
    output reg [31:0] Immediate
);
always @(posedge clk)
    begin
        //ctrl
        //stall
        if( pcsrc==1 || rst==1 || stall==1)
            begin
                 ctrl <= 0;
                 Immediate <= 0;
            end   
        else
            begin
                    begin
                        ctrl[31:30]<=0;//fstall,dstall
                        ctrl[29:28]<=0;//dflush,eflush
                        ctrl[27:26]<=0;
                           
                        ctrl[25:24]<=0;
                        ctrl[23:22]<=0;

                        
                        ctrl[21:20] <= 2'b00;
                        ctrl[19]<=0;
                        ctrl[18] <= (opcode == 7'b0110011 
                                        || opcode == 7'b0010011 
                                            || opcode == 7'b0000011 
                                                || opcode == 7'b1101111) ? 1:0;//regwrite:add,addi,lw,jal
                        //regsrc <=> memtoreg
                        ctrl[17] <= 0;
                        ctrl[16] <= (opcode == 7'b0000011)?1:0;//lw
                        
                        ctrl[15:14] <=0;
                        ctrl[13] <= (opcode ==7'b0000011)?1:0;//memread,lw
                        ctrl[12] <= (opcode == 7'b0100011)?1:0;//memwrite,sw
                        ctrl[11:10] <= 0;
                        ctrl[9] <= (opcode == 7'b1101111)?1:0;//jal
                        ctrl[8] <= (opcode == 7'b1100011)? 1:0;//branch
                        ctrl[7:6] <= 0;
                        //add,addi,只有这两个的rd可能需要向前传递，jal指令跳转后流水线的指令全部flush
                        ctrl[5] <= (opcode == 7'b0110011 || opcode ==7'b0010011 || opcode==7'b0000011)?1:0;
                        ctrl[4] <= (opcode == 7'b0110011 || opcode ==7'b1100011)? 0:1;//ALUSrc <=> b_sel,add,beq
                        ctrl[3:2] <= 0;//ALUop的前两位
                        //ALUop的后两位
                        ctrl[1] = (opcode == 7'b0110011 
                                        || opcode ==7'b0010011 
                                            || opcode ==7'b0000011 
                                                ||opcode == 7'b0100011)?1:0;//add,addi,lw,sw
                        ctrl[0] = (opcode == 7'b1100011)?1:0;//beq

                        //立即数
                        if(opcode == 7'b1101111)//jal
                            begin
                                Immediate[19]     <= instruction[31];
                                Immediate[9:0]    <= instruction[30:21];
                                Immediate[10]     <= instruction[20];
                                Immediate[18:11]  <= instruction[19:12];
                                if(instruction[31] == 1)
                                    Immediate[31:20] <= 11'h7ff;
                                else 
                                    Immediate[31:20] <= 11'h000;
                            end
                        else if(opcode ==7'b1100011)//beq
                            begin
                                Immediate[11]   <= instruction[31];
                                Immediate[9:4]  <= instruction[30:25];
                                Immediate[3:0]  <= instruction[11:8];
                                Immediate[10]   <= instruction[7];
                                if(instruction[31] == 1)
                                    Immediate[31:12] <= 19'h7ffff;
                                else 
                                    Immediate[31:12] <= 19'h00000;
                            end
                        else if(opcode == 7'b0100011)//sw
                            begin
                                Immediate[11:5] <= instruction[31:25];
                                Immediate[4:0]  <= instruction[11:7];
                                if(instruction[31] == 1)
                                    Immediate[31:12] <= 20'hfffff;
                                else Immediate[31:12] <= 20'h00000;
                            end
                        else if(opcode ==7'b0010011 || opcode == 7'b0000011)//addi,lw
                            begin
                                Immediate[11:0] <= instruction[31:20];
                                if(instruction[31] == 1)
                                    Immediate[31:12] <= 20'hfffff;
                                else Immediate[31:12] <= 20'h00000;
                            end
                        else
                            Immediate <= 0;
                    end   
            end                     
    end

endmodule