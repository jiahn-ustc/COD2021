`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/06 16:37:22
// Design Name: 
// Module Name: pc
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


module pc(
    input clk,rst,
    input [31:0] Next_PC,
    output reg [31:0] Real_PC
    );
    always @(posedge clk,posedge rst)
        begin
            if(rst)
                Real_PC <= 0;
            else
                Real_PC <= Next_PC;
        end
endmodule
