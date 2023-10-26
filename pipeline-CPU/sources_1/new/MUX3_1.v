`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/06 20:08:49
// Design Name: 
// Module Name: MUX3_1
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


module MUX3_1(
    input [31:0] in0,
    input [31:0] in1,
    input [31:0] in2,
    input [1:0] sel,
    output reg [31:0] in
    );
    always @(*)
        begin
            if(sel==0)
                in = in0;
            else if(sel==2'b01)
                in = in1;
            else if(sel==2'b10)
                in = in2;
            else
                in = 0;
        end
endmodule
