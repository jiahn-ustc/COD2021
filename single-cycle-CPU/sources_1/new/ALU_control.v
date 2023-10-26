`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/06 18:52:57
// Design Name: 
// Module Name: ALU_control
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

//控制ALU的计算模式
module ALU_control(
    input [1:0] ALUop,
    input [6:0] func7,
    input [2:0] func3,
    output reg [2:0] ALU_input
    );
    always @(*) 
    begin
        case (ALUop)
            2'b01: ALU_input=3'd1;//只有beq需要减法器，其他都需要加法器
            default: ALU_input=3'd0;
        endcase   
    end
endmodule
