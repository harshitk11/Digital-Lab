`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:39:55 09/28/2016 
// Design Name: 
// Module Name:    mem8bit 
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
module mem8bit(din,dout,clk,wr_en,reset);
input [7:0] din;
input clk,wr_en,reset;
output [7:0] dout;

Dflipflop d0(wr_en,din[0],clk,reset,dout[0]);
Dflipflop d1(wr_en,din[1],clk,reset,dout[1]);
Dflipflop d2(wr_en,din[2],clk,reset,dout[2]);
Dflipflop d3(wr_en,din[3],clk,reset,dout[3]);
Dflipflop d4(wr_en,din[4],clk,reset,dout[4]);
Dflipflop d5(wr_en,din[5],clk,reset,dout[5]);
Dflipflop d6(wr_en,din[6],clk,reset,dout[6]);
Dflipflop d7(wr_en,din[7],clk,reset,dout[7]);

endmodule
