`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/05 20:28:14
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


//控制信号模块
module control(
    input [6:0] opcode,
    output jal,
    output Branch,
    output [1:0] Imm_gen,
    output [1:0] RegScr,
    output [1:0] ALUop,
    output MemWrite,
    output ALUScr,
    output RegWrite
);
assign ALUScr = (opcode == 7'b0110011 || opcode ==7'b1100011 || opcode == 7'b1101111)? 0:1;//add,beq,jal
assign jal = (opcode == 7'b1101111)? 1 : 0;
assign Branch = (opcode == 7'b1100011)? 1:0;
assign MemWrite = (opcode == 7'b0100011)?1:0;//sw
assign RegScr[1] = (opcode == 7'b1101111)?1:0;
assign RegScr[0] = (opcode == 7'b0000011)?1:0;
assign RegWrite = (opcode == 7'b0110011 
                        || opcode == 7'b0010011 
                            || opcode == 7'b0000011 
                                || opcode == 7'b1101111) ? 1:0;//add,addi,lw,jal
assign Imm_gen[1] = (opcode == 7'b1100011 || opcode == 7'b1101111)?1:0;//beq,jal
assign Imm_gen[0] = (opcode == 7'b0100011 || opcode == 7'b1101111)?1:0;//sw,jal
assign ALUop[1] = (opcode == 7'b0110011 || opcode ==7'b0010011)?1:0;//add,addi
assign ALUop[0] = (opcode == 7'b1100011)?1:0;//beq

endmodule
