`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/04 17:05:15
// Design Name: 
// Module Name: ALU
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


module ALU(
    input clk,
    input [31:0] a,
    input [31:0] b,
    input [3: 0] ALUop,
    input branch,
    input jal,
    output reg [31:0] y,
    output reg pcsrc
    );
always @(posedge clk)
    begin
        if(ALUop[1]==1)//add,addi,lw,sw
            begin
                y <= a + b;
                pcsrc <= jal;
            end
        else if(ALUop[0]==1)//beq
            begin
                y <= a - b;
                if((a - b)== 0)
                    begin
                        //jal与beq指令pcsrc=1
                        pcsrc <= (branch | jal);
                    end
            end
        else
            begin
                y <= 0;
                pcsrc <= jal;
            end
    end
endmodule


/*
                if(b_sel==0)
                    begin
                        if(ForwardA==0)
                            begin
                                if(ForwardB==0)
                                    y <= a0_reg + b0_reg0;
                                else if(ForwardB==2'b01)
                                    begin
                                        if(MmetoReg==0)
                                            y <= a0_reg + b1_yw0;
                                        else
                                            y <= a0_reg + b1_mdr1;
                                    end 
                                else if(ForwardB==2'b10)
                                    y <= a0_reg + b2_bm;
                                else 
                                    y <= 0;
                            end
                        else if(ForwardA == 2'b01)
                            begin
                                if(MmetoReg==0)
                                    begin
                                        if(ForwardB==0)
                                            y <= a1_yw0 + b0_reg0;
                                        else if(ForwardB==2'b01)
                                            begin
                                                if(MmetoReg==0)
                                                    y <= a1_yw0 + b1_yw0;
                                                else
                                                    y <= a1_yw0 + b1_mdr1;
                                            end 
                                        else if(ForwardB==2'b10)
                                            y <= a1_yw0 + b2_bm;
                                        else 
                                            y <= 0;
                                    end
                                else
                                    begin
                                        if(ForwardB==0)
                                            y <= a1_mdr1 + b0_reg0;
                                        else if(ForwardB==2'b01)
                                            begin
                                                if(MmetoReg==0)
                                                    y <= a1_mdr1 + b1_yw0;
                                                else
                                                    y <= a1_mdr1 + b1_mdr1;
                                            end 
                                        else if(ForwardB==2'b10)
                                            y <= a1_mdr1 + b2_bm;
                                        else 
                                            y <= 0;                                        
                                    end
                            end
                        else if(ForwardA==2'b10)
                            begin
                                if(ForwardB==0)
                                    y <= a2_bm + b0_reg0;
                                else if(ForwardB==2'b01)
                                    begin
                                        if(MmetoReg==0)
                                            y <= a2_bm + b1_yw0;
                                        else
                                            y <= a2_bm + b1_mdr1;
                                    end 
                                else if(ForwardB==2'b10)
                                    y <= a2_bm + b2_bm;
                                else 
                                    y <= 0;                                
                            end
                    end
                else
                    begin
                        if(ForwardA==0)
                            begin
                                if(ForwardB==0)
                                    y <= a0_reg + b0_imm1;
                                else if(ForwardB==2'b01)
                                    begin
                                        if(MmetoReg==0)
                                            y <= a0_reg + b1_yw0;
                                        else
                                            y <= a0_reg + b1_mdr1;
                                    end 
                                else if(ForwardB==2'b10)
                                    y <= a0_reg + b2_bm;
                                else 
                                    y <= 0;
                            end
                        else if(ForwardA == 2'b01)
                            begin
                                if(MmetoReg==0)
                                    begin
                                        if(ForwardB==0)
                                            y <= a1_yw0 + b0_imm1;
                                        else if(ForwardB==2'b01)
                                            begin
                                                if(MmetoReg==0)
                                                    y <= a1_yw0 + b1_yw0;
                                                else
                                                    y <= a1_yw0 + b1_mdr1;
                                            end 
                                        else if(ForwardB==2'b10)
                                            y <= a1_yw0 + b2_bm;
                                        else 
                                            y <= 0;
                                    end
                                else
                                    begin
                                        if(ForwardB==0)
                                            y <= a1_mdr1 + b0_imm1;
                                        else if(ForwardB==2'b01)
                                            begin
                                                if(MmetoReg==0)
                                                    y <= a1_mdr1 + b1_yw0;
                                                else
                                                    y <= a1_mdr1 + b1_mdr1;
                                            end 
                                        else if(ForwardB==2'b10)
                                            y <= a1_mdr1 + b2_bm;
                                        else 
                                            y <= 0;                                        
                                    end
                            end
                        else if(ForwardA==2'b10)
                            begin
                                if(ForwardB==0)
                                    y <= a2_bm + b0_imm1;
                                else if(ForwardB==2'b01)
                                    begin
                                        if(MmetoReg==0)
                                            y <= a2_bm + b1_yw0;
                                        else
                                            y <= a2_bm + b1_mdr1;
                                    end 
                                else if(ForwardB==2'b10)
                                    y <= a2_bm + b2_bm;
                                else 
                                    y <= 0;                                
                            end
                    end*/