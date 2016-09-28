`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:36:40 09/28/2016 
// Design Name: 
// Module Name:    main 
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
module main();

reg [15:0] i1,i2;
reg [15:0] i;
reg [7:0] m1,m2 [0:15];
initial $readmemb("mem1",m1);
initial $readmemb("mem2",m2);
initial $readmemb("index1",i1);
initial $readmemb("index2",i2);
assign i = i1 & i2;


endmodule
