
module main(
input run,
input step,
input valid,
input [4:0]in,
input rst,
input clk_100mhz,
output [1:0]check,
output [4:0]out0,
output [2:0]an,
output [3:0]seg,
output ready
    );

reg [2:0]cnt;
wire clk;
wire clk_cpu;
wire io_we;
wire [7:0] io_addr;
wire [31:0] io_dout;
wire [31:0] io_din;

wire [7:0] m_rf_addr;
wire [31:0] rf_data;
wire [31:0] m_data;
wire [31:0] pc;

always@(posedge clk_100mhz)
    cnt <= cnt + 1;

assign clk = cnt[2];
pdu my_pdu(clk,rst,run,step,clk_cpu,valid,in,check,out0,an,seg,ready,io_addr,io_dout,io_we,io_din,m_rf_addr,rf_data,m_data,pc);
CPU my_CPU(clk_cpu,rst,io_addr,io_dout,io_we,io_din,m_rf_addr,rf_data,m_data,pc);

endmodule