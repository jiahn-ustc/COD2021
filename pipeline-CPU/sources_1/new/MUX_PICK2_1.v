`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/02 15:54:42
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


module MUX_PICK2_1(
    input [31:0] Readdata1,
    input [31:0] Readdata2,
    input cortrol,
    output [31:0] result

    );
    assign result = (cortrol==1)?Readdata2:Readdata1;
endmodule
