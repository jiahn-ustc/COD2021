`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/06 18:42:18
// Design Name: 
// Module Name: MUX_PICK2_1
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

//二选一的多路选择器
module MUX_PICK2_1
#(parameter Width = 32)(
    input [Width-1:0] a,
    input [Width-1:0] b,
    input sel,
    output reg [Width-1:0] out
    );
    always @(*)
        case(sel)
            0: out = a;
            1: out = b;
        endcase
endmodule
