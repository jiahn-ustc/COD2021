`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/06 19:00:46
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



module ALU
       #(parameter WIDTH = 32)
       (
           input [WIDTH - 1:0] a, b,
           input [2: 0] s,
           output reg [WIDTH - 1:0] y,
           output zf
       );

assign zf = y == 0;

always @(*)
begin
    case (s)
        3'b000:
            y = a + b;
        3'b001:
            y = a - b;
        3'b010:
            y = a & b;
        3'b011:
            y = a | b;
        3'b100:
            y = a ^ b;
        default:
            y = 3'b0;
    endcase
end

endmodule