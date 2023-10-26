`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/06 19:36:04
// Design Name: 
// Module Name: MUX_PICK3_1
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


module MUX_PICK3_1
#(parameter Width = 32)(
input [Width-1:0] a,
input [Width-1:0] b,
input [Width-1:0] c,
input [1:0] sel,
output reg [Width-1:0] out
);
always @(*)
begin
    case(sel)
        2'b00:out=a;
        2'b01:out=b;
        2'b10:out=c;
        default:out=0;   
    endcase        
end
endmodule
