`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/06 17:43:09
// Design Name: 
// Module Name: Imme_expan
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

//扩展立即数
module Imme_expan(
    input [1:0] Imm_gen,
    input [31:0] instruct,
    output reg [31:0]Immediate
    );
    always @(*) begin
        case(Imm_gen)
            2'b00:  //addi lw
            begin     
                Immediate[11:0] = instruct[31:20];
                if(instruct[31] == 1)
                     Immediate[31:12] = 20'hfffff;
                else Immediate[31:12] = 20'h00000;
            end

            2'b01: //sw
            begin   
                Immediate[11:5] = instruct[31:25];
                Immediate[4:0]  = instruct[11:7];
                if(instruct[31] == 1)
                     Immediate[31:12] = 20'hfffff;
                else Immediate[31:12] = 20'h00000;
            end
            //因为beq和jal指令的立即数都需要左移一位，故这里置立即数的最高位为0，其他默认不变
            2'b10: //beq
            begin   
                Immediate[11]   = instruct[31];
                Immediate[9:4]  = instruct[30:25];
                Immediate[3:0]  = instruct[11:8];
                Immediate[10]   = instruct[7];
                if(instruct[31] == 1)
                    Immediate[31:12] = 19'h7ffff;
                else 
                    Immediate[31:12] = 19'h00000;
            end
            2'b11: //jal
            begin   
                Immediate[19]     = instruct[31];
                Immediate[9:0]    = instruct[30:21];
                Immediate[10]     = instruct[20];
                Immediate[18:11]  = instruct[19:12];
                if(instruct[31] == 1)
                    Immediate[31:20] = 11'h7ff;
                else 
                    Immediate[31:20] = 11'h000;
            end
        endcase
    end
endmodule


