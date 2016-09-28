`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:41:12 09/29/2016 
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
module main(i1,i2,flag);

input [15:0] i1,i2;
reg [15:0] i;
always @ (i1 or i2)
	begin
	i = (i1 & i2);
	end
	
always @ (flag) 
	begin
	if(i[flag] != 0)
		begin
		






endmodule
