`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/06 21:34:41
// Design Name: 
// Module Name: main_sims
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


module main_sims(

    );
    reg clk;
    reg rst;
    reg run;
    reg step;
    reg valid;
    reg [4:0] in;
    wire [1:0] check;
    wire [4:0] out0;
    wire [2:0] an;
    wire [3:0] seg;
    wire ready;
    main main_sims(
        .clk(clk),
        .rst(rst),
        .run(run),
        .step(step),
        .valid(valid),
        .in(in),
        .check(check),
        .out0(out0),
        .an(an),
        .seg(seg),
        .ready(ready)
    );
initial
    clk = 0;
always #0.001 clk = ~clk;

initial
    valid = 0;
always #150 valid = ~valid;

initial
    begin
        rst = 1;#20;
        rst = 0;
        run = 1;
        in = 5'b11111; #500;
        in = 5'b01111; #500;
        run = 0;
        in = 5'b11111; #500;
        in = 4'b01111;#500;
    end

endmodule
