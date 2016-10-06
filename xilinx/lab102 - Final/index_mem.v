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
module index_mem(i1,i2,r1,r2,cnt1,cnt2,wr_en,clk,reset);
input wr_en,clk,reset;
input i1,i2;
input cnt1,cnt2;
wire [7:0] i1,i2;
wire [1:0] comp_logic;
output [7:0] r1,r2;
wire [3:0] cnt,cnt1,cnt2;

ram i_mem1(i1,r1,cnt1,wr_en,clk,reset);
ram i_mem2(i2,r2,cnt2,wr_en,clk,reset);
comp c1(r1,r2,comp_logic);
logic1 l1(comp_logic,cnt1,cnt2,cnt);

endmodule
