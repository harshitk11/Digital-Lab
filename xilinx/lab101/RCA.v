`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:57:25 09/28/2016 
// Design Name: 
// Module Name:    RCA 
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
module RCA(a,b,cin,s);
input [15:0] a;
input [19:0] b;
input cin;
output [19:0] s;
wire [19:0] cout;
FA f1(a[0],b[0],cin,s[0],cout[0]); 
FA f2(a[1],b[1],cout[0],s[1],cout[1]);
FA f3(a[2],b[2],cout[1],s[2],cout[2]);
FA f4(a[3],b[3],cout[2],s[3],cout[3]);
FA f5(a[4],b[4],cout[3],s[4],cout[4]);
FA f6(a[5],b[5],cout[4],s[5],cout[5]);
FA f7(a[6],b[6],cout[5],s[6],cout[6]);
FA f8(a[7],b[7],cout[6],s[7],cout[7]);
FA f9(a[8],b[8],cout[7],s[8],cout[8]);
FA f10(a[9],b[9],cout[8],s[9],cout[9]);
FA f11(a[10],b[10],cout[9],s[10],cout[10]);
FA f12(a[11],b[11],cout[10],s[11],cout[11]);
FA f13(a[12],b[12],cout[11],s[12],cout[12]);
FA f14(a[13],b[13],cout[12],s[13],cout[13]);
FA f15(a[14],b[14],cout[13],s[14],cout[14]);
FA f16(a[15],b[15],cout[14],s[15],cout[15]);
FA f17(1'b0,b[16],cout[15],s[16],cout[16]);
FA f18(1'b0,b[17],cout[16],s[17],cout[17]);
FA f19(1'b0,b[18],cout[17],s[18],cout[18]);
FA f20(1'b0,b[19],cout[18],s[19],cout[19]);

endmodule
