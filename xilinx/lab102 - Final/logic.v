`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:25:32 09/30/2016 
// Design Name: 
// Module Name:    logic 
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
module logic1(comp_out,cnt1,cnt2,cnt);
input [2:0] comp_out;
output cnt1,cnt2,cnt;
reg [3:0] cnt;

always @ (comp_out)
begin
	if ( comp_out == 2'b01 )
	begin
		cnt2 <= cnt2 + 1;
	end
	
	else if ( comp_out == 2'b10 )
	begin
		cnt1 <= cnt1 + 1;
	end
	else 
		