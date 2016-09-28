`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:23:46 09/29/2016 
// Design Name: 
// Module Name:    ram2 
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
module ram2(out,addr,wr_en,clk,rst);
input wr_en,rst,clk;
input [3:0] addr;
reg [7:0] din [0:15];                               //memory block can be read from text file
initial $readmemb("mem2.txt",din);
output out;
wire [7:0] out;
wire [7:0] dout [0:15];
wire [15:0] sel;

decoder d1(addr,sel,1'b1);

mem8bit m0(din[0],dout[0],clk,wr_en,rst);
mem8bit m1(din[1],dout[1],clk,wr_en,rst);
mem8bit m2(din[2],dout[2],clk,wr_en,rst);
mem8bit m3(din[3],dout[3],clk,wr_en,rst);
mem8bit m4(din[4],dout[4],clk,wr_en,rst);
mem8bit m5(din[5],dout[5],clk,wr_en,rst);
mem8bit m6(din[6],dout[6],clk,wr_en,rst);
mem8bit m7(din[7],dout[7],clk,wr_en,rst);
mem8bit m8(din[8],dout[8],clk,wr_en,rst);
mem8bit m9(din[9],dout[9],clk,wr_en,rst);
mem8bit m10(din[10],dout[10],clk,wr_en,rst);
mem8bit m11(din[11],dout[11],clk,wr_en,rst);
mem8bit m12(din[12],dout[12],clk,wr_en,rst);
mem8bit m13(din[13],dout[13],clk,wr_en,rst);
mem8bit m14(din[14],dout[14],clk,wr_en,rst);
mem8bit m15(din[15],dout[15],clk,wr_en,rst);

buff b0(dout[0], out , sel[0]); 
buff b1(dout[1], out , sel[1]); 
buff b2(dout[2], out , sel[2]); 
buff b3(dout[3], out , sel[3]); 
buff b4(dout[4], out , sel[4]); 
buff b5(dout[5], out , sel[5]); 
buff b6(dout[6], out , sel[6]); 
buff b7(dout[7], out , sel[7]); 
buff b8(dout[8], out , sel[8]); 
buff b9(dout[9], out , sel[9]); 
buff b10(dout[10], out , sel[10]); 
buff b11(dout[11], out , sel[11]); 
buff b12(dout[12], out , sel[12]); 
buff b13(dout[13], out , sel[13]); 
buff b14(dout[14], out , sel[14]); 
buff b15(dout[15], out , sel[15]); 




endmodule