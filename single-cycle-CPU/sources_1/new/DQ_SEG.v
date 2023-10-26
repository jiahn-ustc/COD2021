`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/06 19:58:07
// Design Name: 
// Module Name: DQ_SEG
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


module DQ_SEG(
    input wire [3:0] d, // 8421 BCD
    output reg [3:0] seg
    );
    always @* 
    begin
        seg = d;
    end

endmodule
