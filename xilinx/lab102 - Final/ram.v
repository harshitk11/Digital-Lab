`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:26:51 09/28/2016 
// Design Name: 
// Module Name:    ram 
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
module ram(din,out,addr,wr_en,clk,rst);
input wr_en,rst,clk;
input [3:0] addr;
input din;
wire [7:0] din;                               //memory block can be read from text file
//initial $readmemb("mem1.txt",din);
output out;
wire [7:0] out;
wire [7:0] dout [0:15];
wire [15:0] sel;

decoder d1(addr,sel,1'b1);

mem8bit m0(din,dout[0],clk,wr_en && sel[0],rst);
mem8bit m1(din,dout[1],clk,wr_en && sel[1],rst);
mem8bit m2(din,dout[2],clk,wr_en && sel[2],rst);
mem8bit m3(din,dout[3],clk,wr_en && sel[3],rst);
mem8bit m4(din,dout[4],clk,wr_en && sel[4],rst);
mem8bit m5(din,dout[5],clk,wr_en && sel[5],rst);
mem8bit m6(din,dout[6],clk,wr_en && sel[6],rst);
mem8bit m7(din,dout[7],clk,wr_en && sel[7],rst);
mem8bit m8(din,dout[8],clk,wr_en && sel[8],rst);
mem8bit m9(din,dout[9],clk,wr_en && sel[9],rst);
mem8bit m10(din,dout[10],clk,wr_en && sel[10],rst);
mem8bit m11(din,dout[11],clk,wr_en && sel[11],rst);
mem8bit m12(din,dout[12],clk,wr_en && sel[12],rst);
mem8bit m13(din,dout[13],clk,wr_en && sel[13],rst);
mem8bit m14(din,dout[14],clk,wr_en && sel[14],rst);
mem8bit m15(din,dout[15],clk,wr_en && sel[15],rst);

buff b0(dout[0], out , ~wr_en && sel[0]); 
buff b1(dout[1], out , ~wr_en &&sel[1]); 
buff b2(dout[2], out , ~wr_en &&sel[2]); 
buff b3(dout[3], out , ~wr_en &&sel[3]); 
buff b4(dout[4], out , ~wr_en &&sel[4]); 
buff b5(dout[5], out , ~wr_en &&sel[5]); 
buff b6(dout[6], out , ~wr_en &&sel[6]); 
buff b7(dout[7], out , ~wr_en &&sel[7]); 
buff b8(dout[8], out , ~wr_en &&sel[8]); 
buff b9(dout[9], out , ~wr_en &&sel[9]); 
buff b10(dout[10], out , ~wr_en &&sel[10]); 
buff b11(dout[11], out , ~wr_en &&sel[11]); 
buff b12(dout[12], out , ~wr_en &&sel[12]); 
buff b13(dout[13], out , ~wr_en &&sel[13]); 
buff b14(dout[14], out , ~wr_en &&sel[14]); 
buff b15(dout[15], out , ~wr_en &&sel[15]); 




endmodule
