`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:00:53 09/30/2016 
// Design Name: 
// Module Name:    index_mem 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module index_mem(i1,i2,r1,r2,cnt1w,cnt2w,wr_en,clk,reset,din1,din2,out1,out2,addr1w,addr2w);
input wr_en,clk,reset;

/*Index Memory*/
input i1,i2;
input cnt1w,cnt2w;
/*Main data memory*/
input [7:0] din1,din2;
output [7:0] out1,out2;
input [3:0] addr1w,addr2w;
/*************************/
wire [7:0] i1,i2;
wire [1:0] comp_logic;
output [7:0] r1,r2;
wire [3:0] cnt,cnt1,cnt2,cnt1w,cnt2w;
reg [3:0] addr1,addr2;

ram data1(din1,out1,((addr1w * wr_en) + (addr1 * ~wr_en)),wr_en,clk,reset);
ram data2(din2,out2,((addr2w * wr_en) + (addr2 * ~wr_en)),wr_en,clk,reset);
ram i_mem1(i1,r1,((cnt1w * wr_en) + (cnt1 * ~wr_en)),wr_en,clk,reset);
ram i_mem2(i2,r2,((cnt2w * wr_en) + (cnt2 * ~wr_en)),wr_en,clk,reset);
comp c1(r1,r2,comp_logic);
logic1 l1(comp_logic,cnt1,cnt2,cnt,reset);

always @ (cnt)
begin
addr1 <= r1;
addr2 <= r1;
//end
//ram data1(din1,out1,addr1w,wr_en,clk,reset);
//ram data2(din2,out2,addr2w,wr_en,clk,reset);
//ram i_mem1(i1,r1,cnt1w,wr_en,clk,reset);
//ram i_mem2(i2,r2,cnt2w,wr_en,clk,reset);


endmodule
