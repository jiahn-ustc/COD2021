`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/01 22:32:15
// Design Name: 
// Module Name: pc_reset
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


module pc_reset(
    input clk,
    input rst,
    input [31:0] Next_PC,
    output reg [31:0] Real_PC
    );
    always @(posedge clk)
        begin
            if(rst==1)
                Real_PC <= 0;
            else
                Real_PC <= Next_PC;
        end
endmodule
