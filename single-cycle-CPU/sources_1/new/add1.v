`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/06 16:52:32
// Design Name: 
// Module Name: add1
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

//pc的加法器
module add1
    #(parameter WIDTH = 32 )(
        input [WIDTH-1:0] PC,
        input [WIDTH-1:0] immediate,
        output [WIDTH-1:0] New_PC
    );
    assign New_PC = PC + immediate;
endmodule
