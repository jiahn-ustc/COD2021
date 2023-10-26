`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/06 19:59:22
// Design Name: 
// Module Name: DQ_AN
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


module DQ_AN(
    input wire [2:0] d, // 8421 BCD
    output reg [2:0] an
    );
    always @(*)
    begin
        an = d;
    end
endmodule
